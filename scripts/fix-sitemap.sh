#!/bin/bash
# Fix sitemap.xml after Quarto render
# Quarto generates /index.html but canonical URL is /

SITEMAP="docs/sitemap.xml"

if [ -f "$SITEMAP" ]; then
    # Replace index.html with / in sitemap
    sed -i '' 's|<loc>https://praevius.app/index.html</loc>|<loc>https://praevius.app/</loc>|g' "$SITEMAP"
    echo "Fixed sitemap.xml: index.html → /"
fi
