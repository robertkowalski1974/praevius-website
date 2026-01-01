# CLAUDE.md - Praevius Website Project

## Project Overview

**Praevius** (praevius.app) is an AI-powered cost control platform for construction subcontractors and QS professionals. This is the marketing website built with Quarto.

**Tagline:** "See costs before they spiral"

**Relationship:** Praevius is the cost control intelligence layer of the [BIM Takeoff](https://bimtakeoff.com) ecosystem.

---

## Brand Guidelines

**IMPORTANT:** Always follow the brand guidelines when making changes to this website.

### Reference Files (in this folder)

1. **[Praevius_Brand_Guidelines.md](.claude/Praevius_Brand_Guidelines.md)** - Complete brand system including:
   - Color palette (primary, secondary, semantic)
   - Typography (Inter font, weights, scales)
   - CSS variables
   - Component patterns
   - Accessibility requirements

2. **[PRAEVIUS_LOGO_USAGE_GUIDE.md](.claude/PRAEVIUS_LOGO_USAGE_GUIDE.md)** - Logo usage rules including:
   - Available logo files and when to use each
   - Minimum sizes
   - Color variations for light/dark backgrounds
   - What NOT to do with logos

### Quick Color Reference

| Color | Hex | Usage |
|-------|-----|-------|
| **Orange** | `#FF9900` | Primary accent, CTAs, highlights |
| **Orange Hover** | `#E68A00` | Button hover states |
| **Charcoal** | `#2C2C2C` | Text, dark backgrounds |
| **White** | `#FFFFFF` | Light backgrounds |
| **Light Gray** | `#F0F0F0` | Secondary backgrounds |
| **Medium Gray** | `#757575` | Secondary text |
| **Green** | `#10B981` | On Budget (±5%) |
| **Yellow** | `#F59E0B` | Warning (5-10%) |
| **Red** | `#EF4444` | Critical (>10%) |

### Typography

- **Font:** Inter (Google Fonts)
- **Headings:** 700-800 weight
- **Body:** 400 weight
- **Buttons/Nav:** 500-600 weight

---

## Project Structure

```
praevius-website/
├── _quarto.yml          # Quarto configuration
├── custom.scss          # Quarto theme (SCSS)
├── index.qmd            # Homepage
├── features.qmd         # Features page
├── pricing.qmd          # Pricing page
├── about.qmd            # About page
├── contact.qmd          # Contact page
├── privacy-policy.qmd   # Privacy policy
├── terms-of-service.qmd # Terms of service
├── css/
│   └── styles.css       # Additional CSS
├── images/              # Logo and brand assets
│   ├── praevius-logo-full.svg
│   ├── praevius-logo-white.svg
│   ├── praevius-logo-compact.svg
│   ├── praevius-icon-orange.svg
│   ├── praevius-icon-white.svg
│   └── praevius-app-icon.svg
├── docs/                # Built site (output)
├── .claude/             # Claude CLI context
│   ├── CLAUDE.md        # This file
│   ├── Praevius_Brand_Guidelines.md
│   └── PRAEVIUS_LOGO_USAGE_GUIDE.md
└── _archive/            # Archive folder
```

---

## Development Commands

```bash
# Preview locally
quarto preview

# Build site
quarto render

# Build and deploy
quarto render && git add . && git commit -m "Update" && git push
```

---

## Key Product Information

### Target Market
- **Primary:** Trade contractors (electrical, mechanical, plumbing) with 10-50 employees
- **Secondary:** Growing QS practices serving multiple clients
- **Geography:** UK and Australia first, then expansion

### Pricing Tiers
| Tier | Price | Key Features |
|------|-------|--------------|
| **Free** | Free | 3 projects, 1 team member, core cost tracking |
| **Essential** | $99/mo | 10 projects, 3 team members, 1 accounting integration |
| **Professional** | $229/mo | 25 projects, 10 team members, Claude AI Reports |
| **Scale** | $449/mo | Unlimited projects/members, Procore sync, Schedule of Values |

### Key Features
- Real-time budget tracking
- AI-powered variance reports (Claude AI Reports)
- S-curve forecasting (EVM)
- Change order management
- Progress claim automation
- Schedule of Values (SOV) - multi-format support (UK JCT/NEC, US AIA, AU SOPA)
- Integrations: Xero, QuickBooks, Sage, Google Drive, SharePoint, Procore

### Coming Soon
- Voice input for field data entry
- Native mobile app
- Predictive analytics

---

## Content Guidelines

### Tone of Voice
- Professional yet approachable
- Confident without being arrogant
- Technical but never overwhelming
- Forward-looking and proactive

### Writing Style
- Lead with benefits, not features
- Use specific outcomes ("2 minutes instead of 2 hours")
- Avoid jargon overload
- Explain technical terms when necessary

### Key Messages
1. "See costs before they spiral" (primary tagline)
2. "Proactive cost intelligence for construction"
3. "Professional-grade insights, mid-market pricing"
4. "AI-powered variance detection"

---

## Related Projects

- **BIM Takeoff Website:** `/Users/robertkowalski/Documents/bimtakeoff-website`
- **Brand Assets (OneDrive):** `/Users/robertkowalski/Library/CloudStorage/OneDrive-LunaBusinessAdvantageLtd/12-BIM-TAKEOFF/07-PRAEVIUS`

---

## Deployment

- **Repository:** github.com/robertkowalski1974/praevius-website
- **Hosting:** GitHub Pages
- **Domain:** praevius.app
- **Output Directory:** `/docs`

---

## Notes for Claude

1. **Always check brand guidelines** before modifying colors, typography, or components
2. **Use the correct logo** for the background (white logo on dark, charcoal on light)
3. **Maintain traffic light consistency** for variance indicators (green/yellow/red)
4. **Keep Inter font** for all text
5. **Follow the pricing structure** as defined above
6. **Link back to BIM Takeoff** where appropriate - Praevius is part of that ecosystem

---

## Current Improvements

See **[IMPROVEMENTS.md](.claude/IMPROVEMENTS.md)** for prioritized list of website improvements and fixes.

---

*Last updated: January 2026*
