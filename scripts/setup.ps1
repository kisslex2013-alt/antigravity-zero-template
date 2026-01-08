<#
.SYNOPSIS
    Sets up the project environment from scratch.

.DESCRIPTION
    Installs dependencies, initializes git, and prepares the workspace.
#>

Write-Host "🚀 Initializing Antigravity Project..." -ForegroundColor Cyan

# 1. Git Initialization
if (-not (Test-Path ".git")) {
    Write-Host "📂 Initializing Git repository..."
    git init
    Write-Host "✅ Git initialized." -ForegroundColor Green
}

# 2. Dependency Installation
if (Test-Path "package.json") {
    Write-Host "📦 Installing Node.js dependencies..."
    npm install
} elseif (Test-Path "requirements.txt") {
    Write-Host "🐍 Installing Python dependencies..."
    pip install -r requirements.txt
}

# 3. VS Code Hook
if (Test-Path "code") {
    Write-Host "📝 Opening VS Code..."
    code .
}

Write-Host "✨ Setup complete!" -ForegroundColor Green
