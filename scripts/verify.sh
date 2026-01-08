#!/bin/bash
# verify.sh - Проверка целостности проекта для Linux/macOS

echo "🔍 Starting Antigravity Verification Protocol..."

verified=true

# 1. Detect Environment
if [ -f "package.json" ]; then
    echo "📦 Node.js environment detected."
    
    # Check for lint script
    if grep -q '"lint":' package.json; then
        echo "Running Linter..."
        if npm run lint; then
            echo "✅ Lint Passed"
        else
            echo "❌ Lint Failed"
            verified=false
        fi
    fi
    
    # Check for typecheck
    if grep -q '"typecheck":' package.json; then
        echo "Running Type Check..."
        if npm run typecheck; then
            echo "✅ Types Passed"
        else
            echo "❌ Types Failed"
            verified=false
        fi
    fi

    # Check for test
    if grep -q '"test":' package.json; then
        echo "Running Tests..."
        if npm run test; then
            echo "✅ Tests Passed"
        else
            echo "❌ Tests Failed"
            verified=false
        fi
    fi

elif [ -f "pyproject.toml" ]; then
    echo "🐍 Python environment detected."
    
    # Run ruff if available
    if command -v ruff &> /dev/null; then
        echo "Running Ruff linter..."
        if ruff check .; then
            echo "✅ Ruff Passed"
        else
            echo "❌ Ruff Failed"
            verified=false
        fi
    fi
    
    # Run pytest if available
    if command -v pytest &> /dev/null; then
        echo "Running pytest..."
        if pytest; then
            echo "✅ Tests Passed"
        else
            echo "❌ Tests Failed"
            verified=false
        fi
    fi
else
    echo "⚠️ No recognizable project configuration found."
fi

if $verified; then
    echo "✨ All checks passed. Ready for lift-off."
    exit 0
else
    echo "🛑 Checks failed. Fix errors before proceeding."
    exit 1
fi
