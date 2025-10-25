#!/bin/bash

# Build script for Marp presentation
# Generates HTML and PDF outputs

set -e

echo "🚀 Building Marp presentation..."

# Create dist directory if it doesn't exist
mkdir -p dist

# Copy images to dist folder for HTML version
echo "📸 Copying images..."
cp -r immagini dist/

# Check if marp-cli is installed
if ! command -v marp &> /dev/null; then
    echo "❌ Marp CLI not found. Installing dependencies..."
    npm install
fi

# Build HTML version
echo "📄 Building HTML..."
npx marp slides.md -o dist/slides.html --html --allow-local-files --theme-set themes/angelo-theme.css
npx marp slides-short-version.md -o dist/slides-short.html --html --allow-local-files --theme-set themes/angelo-theme.css

# Build PDF version
echo "📑 Building PDF..."
npx marp slides.md -o dist/slides.pdf --pdf --allow-local-files --theme-set themes/angelo-theme.css
npx marp slides-short-version.md -o dist/slides-short.pdf --pdf --allow-local-files --theme-set themes/angelo-theme.css

echo "✅ Build complete!"
echo "   - HTML (full): dist/slides.html"
echo "   - HTML (short): dist/slides-short.html"
echo "   - PDF (full): dist/slides.pdf"
echo "   - PDF (short): dist/slides-short.pdf"
