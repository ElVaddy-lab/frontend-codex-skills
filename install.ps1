[CmdletBinding()]
param(
    [string[]]$Skills,
    [string]$Destination = (Join-Path $env:USERPROFILE '.codex\skills'),
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceRoot = Join-Path $repoRoot 'skills'

if (-not (Test-Path -LiteralPath $sourceRoot)) {
    throw "Skills directory not found: $sourceRoot"
}

$available = @(
    Get-ChildItem -LiteralPath $sourceRoot -Directory |
        Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md') } |
        Select-Object -ExpandProperty Name
)

$requested = @(
    $Skills |
        ForEach-Object { $_ -split ',' } |
        ForEach-Object { $_.Trim() } |
        Where-Object { $_ }
)

if ($requested.Count -eq 0) {
    $selected = $available
} else {
    $unknown = @($requested | Where-Object { $_ -notin $available })
    if ($unknown.Count -gt 0) {
        throw "Unknown skills: $($unknown -join ', '). Available: $($available -join ', ')"
    }
    $selected = $requested
}

New-Item -ItemType Directory -Path $Destination -Force | Out-Null
$resolvedDestination = (Resolve-Path -LiteralPath $Destination).Path

foreach ($name in $selected) {
    $source = Join-Path $sourceRoot $name
    $target = Join-Path $resolvedDestination $name

    if (Test-Path -LiteralPath $target) {
        if (-not $Force) {
            Write-Warning "Skipped $name because it already exists. Use -Force to replace it."
            continue
        }

        $resolvedTarget = (Resolve-Path -LiteralPath $target).Path
        if (-not $resolvedTarget.StartsWith($resolvedDestination, [System.StringComparison]::OrdinalIgnoreCase)) {
            throw "Refusing to remove path outside destination: $resolvedTarget"
        }
        Remove-Item -LiteralPath $resolvedTarget -Recurse -Force
    }

    Copy-Item -LiteralPath $source -Destination $target -Recurse
    Write-Host "Installed $name -> $target"
}

Write-Host 'Restart Codex to load the installed skills.'
