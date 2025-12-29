# Praevius Brand Guidelines

## Overview

This document provides Praevius.app's official brand identity, colors, and typography for creating professional construction cost control materials. Apply these guidelines to presentations, documents, websites, and any visual content representing the Praevius brand at **praevius.app**.

**Praevius** is the cost control intelligence layer of the BIM Takeoff ecosystem, maintaining visual consistency while establishing its own identity as a proactive cost management platform.

**Keywords**: cost control, construction, variance analysis, EVM, forecasting, AI-powered, proactive intelligence, quantity surveying, budget management, praevius.app

---

## Brand Identity

### Brand Essence

**Praevius** derives from Latin "praevius" meaning "going before" or "leading the way." The brand represents proactive intelligence—seeing cost issues before they become problems.

### Core Values

- **Proactive Intelligence**: Anticipating cost variances before they escalate
- **Professional Precision**: Accuracy in every calculation and forecast  
- **Modern Simplicity**: Complex cost control made accessible
- **Trusted Insight**: AI-powered recommendations grounded in industry standards

### Brand Positioning

**Tagline**: "See costs before they spiral"

**Positioning Statement**: Simple, AI-powered cost control for growing contractors and QS firms—professional-grade insights without enterprise complexity.

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

**Primary Tagline:** "See costs before they spiral"

**Supporting Messages:**
- "Proactive cost intelligence for construction"
- "AI-powered variance detection"
- "Professional-grade insights, mid-market pricing"
- "From budget to forecast, all in one view"

**Feature Benefits (not features):**
- ❌ "Real-time EVM calculations"
- ✓ "Know your cost performance index the moment it changes"

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

*© 2025 Praevius. Part of the BIM Takeoff ecosystem.*
