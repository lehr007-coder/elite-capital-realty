#!/bin/bash

# Elite Capital Realty - Push to GitHub Script
# Repository: https://github.com/lehr007-coder/elite-capital-realty

cd /Users/Scott/Documents/Claude/Projects/elite-capital-ghl-blocks

echo "🚀 Pushing Elite Capital Realty to GitHub..."

# Remove old origin if it exists
git remote rm origin 2>/dev/null || true

# Add GitHub remote
git remote add origin https://github.com/lehr007-coder/elite-capital-realty.git

# Rename master to main if needed
git branch -M main 2>/dev/null || true

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Push complete!"
echo "📍 Repository: https://github.com/lehr007-coder/elite-capital-realty"
