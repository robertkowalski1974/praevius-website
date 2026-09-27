# Praevius Brand Guidelines

## Overview

This document provides Praevius.app's official brand identity, colors, and typography for creating professional construction programme and cost materials. Apply these guidelines to presentations, documents, websites, and any visual content representing the Praevius brand at **praevius.app**.

**Praevius** is voice-first construction programme software and the programme and cost platform of the BIM Takeoff ecosystem. It keeps visual consistency with BIM Takeoff while it has its own identity.

**Claims:** All website claims must trace to `~/claude-brain/runs/repo/praevius-website/claims-sheet.md`. This document sets the messaging; the claims sheet sets the facts.

**Keywords**: construction programme software, construction scheduling, Gantt, critical path, voice, MS Project import, Asta Powerproject import, Primavera import, AI assistant, cost control (secondary), praevius.app

---

## Brand Identity

### Brand Essence

**Praevius** derives from Latin "praevius" meaning "going before" or "leading the way." The brand represents going before the work: a programme that is always up to date because updating it is as easy as saying what changed.

### Core Values

- **Easy to Use**: In the browser, nothing to install; speak or type, with undo and full history
- **Compatible**: Import MS Project, Asta and Primavera programmes; export for MS Project or Primavera, with a report of what could not be carried
- **Honest**: State the limits (no resource or cost loading, up to 2,000 tasks per programme, no native .mpp/.pp export)
- **You Stay in Control**: The AI assists; you review, and larger or destructive changes need your confirmation

### Brand Positioning

**Tagline**: "Talk to your programme."

**Positioning Statement**: Construction programme software you can talk to. Import your MS Project, Asta or Primavera programme, update it by voice or keyboard in the browser, and export it for MS Project or Primavera. One price per company.

**Secondary module**: Cost Control (Essential and above), on the same platform and projects. Never claim the programme feeds budgets or cost.

**Tone of Voice**:
- Professional yet approachable
- Confident without being arrogant
- Technical but never overwhelming
- Forward-looking and proactive

---

## Color System

### Primary Colors

| Color | Hex | RGB | Usage |
|-------|-----|-----|-------|
| **Orange** | `#FF9900` | 255, 153, 0 | Primary accent, CTAs, highlights |
| **Charcoal** | `#2C2C2C` | 44, 44, 44 | Text, dark backgrounds |
| **White** | `#FFFFFF` | 255, 255, 255 | Light backgrounds, reverse text |

### Secondary Colors

| Color | Hex | RGB | Usage |
|-------|-----|-----|-------|
| **Light Gray** | `#F0F0F0` | 240, 240, 240 | Secondary backgrounds |
| **Medium Gray** | `#757575` | 117, 117, 117 | Secondary text, borders |
| **Dark Gray** | `#404040` | 64, 64, 64 | Alternative dark backgrounds |

### Interactive States

| State | Hex | Usage |
|-------|-----|-------|
| **Orange Hover** | `#E68A00` | Button hover, active navigation |
| **Orange Visited** | `#D97500` | Visited links |

### Semantic Colors (Traffic Light System)

| Status | Color | Hex | Light BG | Usage |
|--------|-------|-----|----------|-------|
| **On Budget** | Green | `#10B981` | `#D1FAE5` | ±5% variance |
| **Warning** | Yellow | `#F59E0B` | `#FEF3C7` | 5-10% variance |
| **Critical** | Red | `#EF4444` | `#FEE2E2` | >10% variance |

---

## Typography

### Primary Typeface: Inter

```css
font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
```

### Font Weights

| Weight | Value | Usage |
|--------|-------|-------|
| **ExtraBold** | 800 | Display text, hero headings |
| **Bold** | 700 | H1, H2, primary headings |
| **SemiBold** | 600 | H3, H4, subheadings |
| **Medium** | 500 | Navigation, buttons |
| **Regular** | 400 | Body text |

### Typography Scale

| Element | Size | Weight |
|---------|------|--------|
| **Hero** | 48-56pt | 800 |
| **H1** | 36-40pt | 700 |
| **H2** | 28-32pt | 700 |
| **H3** | 20-24pt | 600 |
| **Body** | 14-16pt | 400 |
| **Caption** | 11-12pt | 500 |

### Monospace (Data/Code)

```css
font-family: 'Monaco', 'Courier New', Consolas, monospace;
```

---

## CSS Variables

```css
:root {
  /* Brand Colors */
  --praevius-orange: #FF9900;
  --praevius-orange-hover: #E68A00;
  --praevius-charcoal: #2C2C2C;
  --praevius-white: #FFFFFF;
  --praevius-light-gray: #F0F0F0;
  --praevius-medium-gray: #757575;
  --praevius-dark-gray: #404040;
  
  /* Semantic Colors */
  --praevius-green: #10B981;
  --praevius-green-light: #D1FAE5;
  --praevius-yellow: #F59E0B;
  --praevius-yellow-light: #FEF3C7;
  --praevius-red: #EF4444;
  --praevius-red-light: #FEE2E2;
  
  /* Typography */
  --font-primary: 'Inter', -apple-system, sans-serif;
  --font-mono: 'Monaco', 'Courier New', monospace;
  
  /* Spacing */
  --spacing-xs: 4px;
  --spacing-sm: 8px;
  --spacing-md: 12px;
  --spacing-lg: 16px;
  --spacing-xl: 20px;
  --spacing-2xl: 24px;
  --spacing-3xl: 32px;
  
  /* Border Radius */
  --radius-sm: 4px;
  --radius-md: 6px;
  --radius-lg: 8px;
  --radius-xl: 12px;
}
```

---

## Logo Files

Located in `/images/`:

| File | Usage |
|------|-------|
| `praevius-logo-full.svg` | Primary logo (charcoal text) |
| `praevius-logo-white.svg` | For dark backgrounds |
| `praevius-logo-compact.svg` | Navigation/small spaces |
| `praevius-icon-orange.svg` | Icon only (orange) |
| `praevius-icon-white.svg` | Icon for dark backgrounds |
| `praevius-app-icon.svg` | App icon with background |

---

## Key Messages

**Primary Tagline:** "Talk to your programme." (body copy clarifies: speak or type, replies on screen)

**Supporting Messages:**
- "Import your MS Project, Asta or Primavera programme, update it by voice, export it for MS Project or Primavera"
- "Easy to use, in the browser, nothing to install"
- "One price per company, no per-user fees"
- "Costs on the same platform" (secondary, Cost Control on Essential and above)

**Feature Benefits (not features):**
- ❌ "18 programme tools"
- ✓ "Say 'push frame out a week' and the programme moves, with Undo if you change your mind"

**Forbidden claims:** resource levelling/loading, cost-loaded programmes, programme → budget sync, programme-derived SPI, per-user or per-module prices, add-ons, storage numbers, support tiers/response times, SSO/SLA, competitor prices, lossless/round-trip, native .mpp/.pp export, spoken replies, noise handling, phone/tablet claims, templates.

---

## Component Patterns

### Buttons

```css
.btn-primary {
  background: #FF9900;
  color: #FFFFFF;
  font-weight: 600;
  padding: 12px 24px;
  border-radius: 6px;
}

.btn-secondary {
  background: transparent;
  color: #FF9900;
  border: 2px solid #FF9900;
}
```

### Cards

```css
.card {
  background: #FFFFFF;
  border: 1px solid #F0F0F0;
  border-left: 4px solid #FF9900;
  border-radius: 8px;
  padding: 24px;
}
```

### Variance Badges

```css
.badge-green { background: #D1FAE5; color: #065F46; }
.badge-yellow { background: #FEF3C7; color: #92400E; }
.badge-red { background: #FEE2E2; color: #991B1B; }
```

---

## Accessibility

- Orange on Charcoal: 5.5:1 contrast ✓
- Charcoal on White: 11.4:1 contrast ✓
- Never use color alone to convey information
- Minimum touch targets: 44×44px
- Focus states: 2px solid Orange outline

---

*© 2025 Praevius. Part of the BIM Takeoff ecosystem. Messaging last updated September 2026.*
