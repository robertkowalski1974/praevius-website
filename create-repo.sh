#!/bin/bash
# Praevius Website - Git & GitHub Setup Script
# This script initializes git and creates a GitHub repository

set -e  # Exit on error

cd /Users/robertkowalski/Documents/praevius-website

echo "🚀 Setting up Praevius Website..."

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
else
    echo "✓ Git already initialized"
fi

# Add all files
echo "📝 Adding files..."
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "✓ No new changes to commit"
else
    echo "💾 Creating initial commit..."
    git commit -m "Initial commit: Praevius website with Quarto and brand guidelines"
fi

# Set main branch
git branch -M main

# Create GitHub repository
echo "🌐 Creating GitHub repository..."
gh repo create praevius-website --public --description "Praevius - AI-Powered Cost Control for Construction | praevius.app" --source=. --remote=origin --push

echo ""
echo "✅ Repository created and pushed!"
echo ""
echo "📌 Next steps:"
echo "1. Go to: https://github.com/robertkowalski1974/praevius-website/settings/pages"
echo "2. Enable GitHub Pages: Source → Deploy from branch → main → /docs"
echo "3. Add custom domain: praevius.app"
echo ""
echo "🎉 Done!"
