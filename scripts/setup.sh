#!/bin/bash
# setup.sh - Инициализация проекта для Linux/macOS

echo "🚀 Initializing Antigravity Project..."

# 1. Git Initialization
if [ ! -d ".git" ]; then
    echo "📂 Initializing Git repository..."
    git init
    echo "✅ Git initialized."
fi

# 2. Dependency Installation
if [ -f "package.json" ]; then
    echo "📦 Installing Node.js dependencies..."
    npm install
elif [ -f "requirements.txt" ]; then
    echo "🐍 Installing Python dependencies..."
    pip install -r requirements.txt
elif [ -f "pyproject.toml" ]; then
    echo "🐍 Installing Python dependencies (pip)..."
    pip install -e .
fi

# 3. VS Code Hook
if command -v code &> /dev/null; then
    echo "📝 Opening VS Code..."
    code .
fi

echo "✨ Setup complete!"
