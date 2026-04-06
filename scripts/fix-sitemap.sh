#!/bin/bash
# Post-render script for Praevius website
# 1. Fix sitemap.xml canonical URL
# 2. Generate AI-optimized robots.txt

SITEMAP="docs/sitemap.xml"

# Fix sitemap: Quarto generates /index.html but canonical URL is /
if [ -f "$SITEMAP" ]; then
    sed -i '' 's|<loc>https://praevius.app/index.html</loc>|<loc>https://praevius.app/</loc>|g' "$SITEMAP"
    echo "Fixed sitemap.xml: index.html → /"
fi

# Generate robots.txt with AI crawler directives
# Quarto auto-generates a minimal robots.txt; this overwrites it
cat > docs/robots.txt << 'ROBOTS_EOF'
# Praevius - AI-Powered Construction Cost Control Software
# https://praevius.app

User-agent: *
Allow: /
Sitemap: https://praevius.app/sitemap.xml

# AI and LLM Crawlers - Explicitly Allowed
User-agent: GPTBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: Claude-Web
Allow: /

User-agent: Anthropic
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: CCBot
Allow: /

User-agent: Bytespider
Allow: /

User-agent: Cohere-ai
Allow: /

User-agent: Meta-ExternalAgent
Allow: /

# LLM-optimized content available at:
# https://praevius.app/llms.txt (concise product summary)
# https://praevius.app/llms-full.txt (complete product details)
ROBOTS_EOF
echo "Generated AI-optimized robots.txt"
