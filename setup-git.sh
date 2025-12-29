#!/bin/bash
# Praevius Website - Git Setup Script
# Run this script from the praevius-website directory

echo "🚀 Setting up Praevius Website Git Repository..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Check if we're in the right directory
if [ ! -f "_quarto.yml" ]; then
    echo "❌ Please run this script from the praevius-website directory"
    exit 1
fi

# Initialize git repository
echo "📦 Initializing git repository..."
git init

# Add all files
echo "📝 Adding files..."
git add .

# Initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Praevius website with Quarto"

# Set main branch
git branch -M main

echo ""
echo "✅ Local git repository initialized!"
echo ""
echo "📌 Next Steps:"
echo ""
echo "1. Create a new GitHub repository at: https://github.com/new"
echo "   - Repository name: praevius-website"
echo "   - Description: AI-Powered Cost Control for Construction"
echo "   - Set to Public or Private as preferred"
echo "   - DO NOT initialize with README, .gitignore, or license"
echo ""
echo "2. After creating the repository, run these commands:"
echo ""
echo "   git remote add origin https://github.com/robertkowalski1974/praevius-website.git"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to Settings > Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main, Folder: /docs"
echo "   - Save"
echo ""
echo "4. Configure custom domain (optional):"
echo "   - Add praevius.app as custom domain"
echo "   - Update DNS records at your registrar"
echo ""
echo "🎉 Done! Your Praevius website is ready for deployment."
