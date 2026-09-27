# CLAUDE.md - Praevius Website Project

## Project Overview

**Praevius** (praevius.app) is construction programme software you can talk to. Import your MS Project, Asta or Primavera programme, update it by voice or keyboard in the browser, and export it for MS Project or Primavera. One price per company. Cost control is a secondary module (Essential and above). This is the marketing website built with Quarto.

**Tagline:** "Talk to your programme."

**Relationship:** Praevius is the programme and cost platform of the [BIM Takeoff](https://bimtakeoff.com) ecosystem.

**Claims source:** All website claims must trace to `~/claude-brain/runs/repo/praevius-website/claims-sheet.md`. That sheet overrides anything in this file, the brand guidelines or the agent definitions.

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

### Positioning
Construction programme software, voice first. The lead workflow is **import → update by voice → check → export**. Voice supports the workflow; typing always works.

Sell three things:
1. **Easy to use** — in the browser, nothing to install, keyboard grid like MS Project, undo and history.
2. **Compatibility** — import MS Project (`.mpp`, `.xml`), Asta Powerproject (`.pp`) and Primavera (`.xer`); export for MS Project (XML) or Primavera (XER), plus PDF and Excel. Each import and export shows a report of what could not be carried.
3. **Voice and AI** — click the mic, speak, edit the live transcript; it sends after a short pause; replies are on screen. Chrome, Edge and Safari, with a connection. English and Polish.

State the limits wherever the programme is sold: no resource or cost loading; up to 2,000 tasks per programme (150 on Free); no native `.mpp` or `.pp` export.

Language: UK "programme" in body copy; "scheduling"/"schedule" in titles, subheads and FAQs, paired with "critical path" or "Gantt". About wording: "built by quantity surveyors with 20 years in construction". Never "built by planners".

### Target Market
- **Primary:** UK and Australian subcontractors, package planners, site managers and small to mid-size main contractors
- **Secondary:** QS practices that also use the cost control module
- **Not for:** 10,000-activity P6 megaprojects
- **Geography:** UK and Australia first, then expansion

### Pricing Tiers
One plan per organisation, USD, monthly or annual. No per-user fees, no per-module prices, no add-ons. 30-day free trial on Essential and Professional, no credit card; Scale starts through sales (contact page).

| | Free | Essential | Professional | Scale |
|---|---|---|---|---|
| Price per month | $0 | $99 | $229 | $449 |
| Projects | 3 | 10 | 25 | Unlimited |
| Team members | 1 | 3 | 10 | Unlimited |
| Programmes | 1 | 10 | Unlimited | Unlimited |
| Tasks per programme | 150 | 2,000 | 2,000 | 2,000 |
| Baselines per programme | 1 | 10 | 50 | Unlimited |
| Schedule imports per month | 1 | 20 | 100 | Unlimited |
| Exports per month | 3 | Unlimited | Unlimited | Unlimited |
| Programme assistant requests per month | 150 | 3,000 | Not counted | Not counted |
| Cost Control | No | Yes | Yes | Yes |
| Google Drive Sync, SharePoint Document Sync | No | Yes | Yes | Yes |
| Accounting (Xero Invoicing, QuickBooks Online, Sage Intacct) | No | 1 of the 3 | All 3 | All 3 |
| AI Assistant and Agent Access | No (programme assistant only) | No (programme assistant only) | Yes | Yes |
| Procore ↔ SharePoint Sync | No | No | No | Yes |
| Schedule of Values | No | No | No | Yes |

**Support (confirmed by Robert 27.09.2026):** every plan has email support at support@praevius.app; all paid plans (Essential, Professional, Scale) add live support by Microsoft Teams, phone or WhatsApp, including help with the first programme import. No response times or hours.

Use the module names exactly as written above. Schedule of Values is **Scale only**.

**Annual billing (confirmed 27.09.2026, Stripe live):** Essential $990/year, Professional $2,290/year, Scale $4,490/year. Write "2 months free". Never a saving percentage.

### Key Features (in this order)
1. Programme: critical path, total and free float, Gantt with drag to move/stretch/link, keyboard grid, constraints, deadlines, milestones, WBS, baselines and comparison, progress, Validate
2. Import and export: MS Project, Asta Powerproject, Primavera in; MS Project XML, Primavera XER, PDF A3, Excel out; import and export reports
3. Voice and programme AI assistant: builds and edits programmes from speech or text, lists assumptions, explains the critical path; ordinary edits apply at once and can be undone, larger or destructive changes run only on confirmation
4. Agent access over MCP with OAuth sign-in: read on every plan; write actions need Professional or Scale and your confirmation
5. Cost Control module (Essential and above): budget tracking, variance reports, change orders, progress claims, Schedule of Values (Scale only)
6. Integrations: Xero, QuickBooks, Sage, Google Drive, SharePoint, Procore (per plan, see table)

### Coming Soon
- Check every "coming soon" item against the claims sheet before it is published. Do not claim phone or tablet programme screens.

### Forbidden Claims
Resource levelling/loading, cost-loaded programmes, programme → budget sync, programme-derived SPI, per-user or per-module prices, add-ons, storage numbers, support response times or hours, SSO/SLA, competitor prices, lossless/round-trip, native .mpp/.pp export, spoken replies, noise handling, phone/tablet claims, templates.

Also forbidden: "open any programme", "send back as .mpp/.pp", Asta version numbers, "tested with Claude/Codex", saving percentages.

---

## Content Guidelines

### Tone of Voice
- Professional yet approachable
- Confident without being arrogant
- Technical but never overwhelming
- Forward-looking and proactive

### Writing Style
- Lead with benefits, not features
- Use specific outcomes, but only outcomes that trace to the claims sheet
- Avoid jargon overload
- Explain technical terms when necessary

### Key Messages
1. "Talk to your programme." (primary tagline; body copy clarifies: speak or type, replies on screen)
2. Import your MS Project, Asta or Primavera programme → update it by voice → export it for MS Project or Primavera
3. Easy to use, in the browser, nothing to install
4. One price per company, no per-user fees
5. Costs on the same platform (secondary: Cost Control module on Essential and above)

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
7. **All website claims must trace to `~/claude-brain/runs/repo/praevius-website/claims-sheet.md`.** Keep every URL and existing anchor; visible FAQ = FAQPage JSON-LD; UK spelling; no new images

---

## Current Improvements

See **[improvements.md](../_archive/improvements.md)** (`_archive/improvements.md`) for the prioritised list of website improvements and fixes.

---

*Last updated: September 2026*
