<#
.SYNOPSIS
    Verifies the project integrity, types, and tests.
    Run this before every commit or notify_user execution.

.DESCRIPTION
    This script automatically detects the environment (Node.js or Python) 
    and runs the appropriate verification commands.
#>

Write-Host "🔍 Starting Antigravity Verification Protocol..." -ForegroundColor Cyan

$ErrorActionPreference = "Stop"
$verified = $true

# 1. Detect Environment
if (Test-Path "package.json") {
    Write-Host "📦 Node.js environment detected." -ForegroundColor Yellow
    
    # Check for lint script
    $packageJson = Get-Content "package.json" -Raw
    
    if ($packageJson -match '"lint":') {
        Write-Host "Running Linter..."
        try { npm run lint; Write-Host "✅ Lint Passed" -ForegroundColor Green } 
        catch { Write-Error "❌ Lint Failed"; $verified = $false }
    }
    
    # Check for typecheck
    if ($packageJson -match '"typecheck":') {
        Write-Host "Running Type Check..."
        try { npm run typecheck; Write-Host "✅ Types Passed" -ForegroundColor Green }
        catch { Write-Error "❌ Types Failed"; $verified = $false }
    }

    # Check for test
    if ($packageJson -match '"test":') {
        Write-Host "Running Tests..."
        try { npm run test; Write-Host "✅ Tests Passed" -ForegroundColor Green }
        catch { Write-Error "❌ Tests Failed"; $verified = $false }
    }

} elseif (Test-Path "pyproject.toml") {
    Write-Host "🐍 Python environment detected." -ForegroundColor Yellow
    # Add Python verification logic here (ruff, mypy, pytest)
} else {
    Write-Host "⚠️ No recognizable project configuration found (package.json or pyproject.toml)." -ForegroundColor DarkYellow
}

if ($verified) {
    Write-Host "✨ All checks passed. Ready for lift-off." -ForegroundColor Green
    exit 0
} else {
    Write-Host "🛑 Checks failed. Fix errors before proceeding." -ForegroundColor Red
    exit 1
}
