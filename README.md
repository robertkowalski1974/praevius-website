# Praevius Website

Construction programme software you can talk to - [praevius.app](https://praevius.app)

**Tagline:** "Talk to your programme."

## Overview

This is the marketing website for Praevius, built with [Quarto](https://quarto.org/) and deployed via GitHub Pages.

Praevius is voice-first construction programme software: import an MS Project, Asta or Primavera programme, update it by voice or keyboard in the browser, and export it for MS Project or Primavera. One price per company. Cost control is a secondary module on Essential and above. Praevius is the programme and cost platform of the [BIM Takeoff](https://bimtakeoff.com) ecosystem.

All website claims must trace to `~/claude-brain/runs/repo/praevius-website/claims-sheet.md` (outside this repository).

## Technology Stack

- **Framework:** Quarto
- **Hosting:** GitHub Pages
- **Domain:** praevius.app
- **CSS:** Custom SCSS + Praevius Brand System

## Local Development

### Prerequisites

- [Quarto CLI](https://quarto.org/docs/get-started/) installed
- Git

### Running Locally

```bash
# Clone the repository
git clone https://github.com/robertkowalski1974/praevius-website.git
cd praevius-website

# Preview the site
quarto preview

# Build the site
quarto render
```

### Project Structure

```
praevius-website/
├── _quarto.yml          # Quarto configuration
├── custom.scss          # Custom Quarto theme
├── index.qmd            # Homepage
├── features.qmd         # Features page
├── pricing.qmd          # Pricing page
├── about.qmd            # About page
├── contact.qmd          # Contact page
├── privacy-policy.qmd   # Privacy policy
├── terms-of-service.qmd # Terms of service
├── css/
│   └── styles.css       # Additional styles
├── images/              # Logo and brand assets
├── docs/                # Built site (output)
└── _archive/            # Archive folder
```

## Deployment

The site automatically deploys to GitHub Pages when changes are pushed to the `main` branch.

```bash
# Build and push
quarto render
git add .
git commit -m "Update site"
git push origin main
```

## Brand Guidelines

See `/images/` for logo files and the Praevius Brand Guidelines (`.claude/Praevius_Brand_Guidelines.md`) for complete brand documentation.

### Key Brand Colors

- **Orange (Primary):** `#FF9900`
- **Charcoal:** `#2C2C2C`
- **Light Gray:** `#F0F0F0`
- **Green (On Budget):** `#10B981`
- **Yellow (Warning):** `#F59E0B`
- **Red (Critical):** `#EF4444`

### Typography

- **Font:** Inter (Google Fonts)
- **Weights:** 400 (Regular), 500 (Medium), 600 (SemiBold), 700 (Bold), 800 (ExtraBold)

## License

© 2025 Praevius. All rights reserved.

## Contact

- Website: [praevius.app](https://praevius.app)
- Email: info@praevius.app
- Parent: [BIM Takeoff](https://bimtakeoff.com)
