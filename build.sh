#!/bin/bash

# Build script for Marp presentation
# Generates HTML and PDF outputs

set -e

echo "🚀 Building Marp presentation..."

# Create dist directory if it doesn't exist
mkdir -p dist

# Check if marp-cli is installed
if ! command -v marp &> /dev/null; then
    echo "❌ Marp CLI not found. Installing dependencies..."
    npm install
fi

# Build HTML version
echo "📄 Building HTML..."
npx marp slides.md -o dist/slides.html --html

# Build PDF version
echo "📑 Building PDF..."
npx marp slides.md -o dist/slides.pdf --pdf --allow-local-files

echo "✅ Build complete!"
echo "   - HTML: dist/slides.html"
echo "   - PDF: dist/slides.pdf"
