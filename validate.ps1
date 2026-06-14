[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$skillsRoot = Join-Path $repoRoot 'skills'
$errors = [System.Collections.Generic.List[string]]::new()

if (-not (Test-Path -LiteralPath $skillsRoot)) {
    throw "Skills directory not found: $skillsRoot"
}

$skillDirs = @(Get-ChildItem -LiteralPath $skillsRoot -Directory)
if ($skillDirs.Count -eq 0) {
    throw 'No skill directories found.'
}

foreach ($dir in $skillDirs) {
    $skillFile = Join-Path $dir.FullName 'SKILL.md'
    $agentFile = Join-Path $dir.FullName 'agents\openai.yaml'

    if (-not (Test-Path -LiteralPath $skillFile)) {
        $errors.Add("$($dir.Name): missing SKILL.md")
        continue
    }

    $content = Get-Content -LiteralPath $skillFile -Raw -Encoding UTF8
    $lines = @(Get-Content -LiteralPath $skillFile -Encoding UTF8)

    if ($lines.Count -lt 4 -or $lines[0] -ne '---' -or $lines[3] -ne '---') {
        $errors.Add("$($dir.Name): invalid four-line frontmatter")
        continue
    }

    $nameMatch = [regex]::Match($lines[1], '^name:\s+([a-z0-9-]+)$')
    $descriptionMatch = [regex]::Match($lines[2], '^description:\s+(.+)$')

    if (-not $nameMatch.Success) {
        $errors.Add("$($dir.Name): invalid or missing name")
    } elseif ($nameMatch.Groups[1].Value -ne $dir.Name) {
        $errors.Add("$($dir.Name): frontmatter name does not match folder")
    }

    if (-not $descriptionMatch.Success) {
        $errors.Add("$($dir.Name): invalid or missing description")
    }

    if (-not (Test-Path -LiteralPath $agentFile)) {
        $errors.Add("$($dir.Name): missing agents/openai.yaml")
    }

    if ($content -match '\[TODO\]|TODO:\s+Replace|<PLACEHOLDER>|PLACEHOLDER_TEXT') {
        $errors.Add("$($dir.Name): template placeholder found")
    }

    $referenceMatches = [regex]::Matches(
        $content,
        '(?:(?:\.\./[A-Za-z0-9._-]+/)?references/[A-Za-z0-9._-]+\.md)'
    )
    foreach ($match in $referenceMatches) {
        $relativePath = $match.Value.Replace('/', [System.IO.Path]::DirectorySeparatorChar)
        $referencePath = [System.IO.Path]::GetFullPath((Join-Path $dir.FullName $relativePath))
        if (-not (Test-Path -LiteralPath $referencePath)) {
            $errors.Add("$($dir.Name): missing referenced file $($match.Value)")
        }
    }

    Write-Host "Checked $($dir.Name)"
}

if ($errors.Count -gt 0) {
    Write-Error ("Validation failed:`n- " + ($errors -join "`n- "))
    exit 1
}

Write-Host "Validation passed for $($skillDirs.Count) skills."
