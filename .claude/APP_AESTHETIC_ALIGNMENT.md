# Website-to-App Aesthetic Alignment

## Comparison Analysis

### App Styling (localhost:3000)
- **Theme:** Dark mode by default
- **Background:** Warm charcoal `hsl(20, 6%, 10%)` ≈ `#1a1918`
- **Card background:** `hsl(20, 6%, 14%)` ≈ `#242322`
- **Border color:** `hsl(20, 6%, 20%)` ≈ `#363432`
- **Icons:** Lucide React icons
- **Buttons:** shadcn/ui with "brand" variant (orange bg, black text)
- **Typography:** Inter, font-medium (500) for UI elements
- **Border radius:** 0.5rem (8px)
- **Active states:** Orange (#FF9900) background with black text

### Website Styling (localhost:4200 / praevius-website)
- **Theme:** Mixed (dark hero, light content sections)
- **Icons:** Emoji (📊, 🔧, 🤖, etc.)
- **Cards:** White background with orange left border
- **Buttons:** Custom CSS, orange background
- **Typography:** Inter
- **Border radius:** 6-8px

---

## Recommended Changes

### 1. Replace Emoji with Lucide Icons ⚠️ HIGH PRIORITY

**Current:** Emoji icons (📊, 🔧, 🤖, 📱)
**Target:** Lucide icons matching the app

**Implementation:**
```html
<!-- Add to _quarto.yml or head -->
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"></script>

<!-- Or use Bootstrap Icons (already included) more consistently -->
```

**Icon mapping:**
| Current | Replace With | Lucide Name |
|---------|--------------|-------------|
| 📊 | `<i class="bi bi-bar-chart-line"></i>` | `BarChart3` |
| 🤖 | `<i class="bi bi-robot"></i>` | `Bot` |
| 🎯 | `<i class="bi bi-bullseye"></i>` | `Target` |
| 📈 | `<i class="bi bi-graph-up"></i>` | `TrendingUp` |
| 🔗 | `<i class="bi bi-link-45deg"></i>` | `Link` |
| 📱 | `<i class="bi bi-phone"></i>` | `Smartphone` |
| 🎤 | `<i class="bi bi-mic"></i>` | `Mic` |
| 🔧 | `<i class="bi bi-wrench"></i>` | `Wrench` |
| 📐 | `<i class="bi bi-rulers"></i>` | `Ruler` |
| 💰 | `<i class="bi bi-currency-dollar"></i>` | `DollarSign` |
| ⏱️ | `<i class="bi bi-clock"></i>` | `Clock` |
| 📉 | `<i class="bi bi-graph-down"></i>` | `TrendingDown` |
| 📝 | `<i class="bi bi-file-text"></i>` | `FileText` |
| 💵 | `<i class="bi bi-cash"></i>` | `Banknote` |

### 2. Update Color Variables to Match App

**In `custom.scss`, update charcoal shades:**

```scss
// Current: Pure charcoal
$charcoal: #2C2C2C;

// Target: Warm charcoal (matches app)
$charcoal-50: hsl(20, 6%, 20%);  // #363432 - borders
$charcoal-100: hsl(20, 6%, 14%); // #242322 - card bg
$charcoal-200: hsl(20, 6%, 10%); // #1a1918 - main bg

// Update dark sections to use warm charcoal
.hero-section, .section-dark {
  background: linear-gradient(180deg, hsl(20, 6%, 10%) 0%, hsl(20, 6%, 14%) 100%);
}
```

### 3. Update Card Styling

**Current website cards:**
```css
.feature-card {
  background: white;
  border-left: 4px solid #FF9900;
  border-radius: 8px;
}
```

**Target (app-style cards):**
```css
.feature-card {
  background: hsl(20, 6%, 14%); /* Warm charcoal card */
  border: 1px solid hsl(20, 6%, 20%);
  border-radius: 0.5rem;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

/* Alternative: Keep light cards but match border style */
.feature-card {
  background: white;
  border: 1px solid #E5E5E5;
  border-radius: 0.5rem;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}
```

### 4. Update Button Styling

**Current:**
```css
.btn-primary {
  background: #FF9900;
  color: white;
}
```

**Target (match app's "brand" variant):**
```css
.btn-primary {
  background: #FF9900;
  color: #1a1918; /* Black/dark text like app */
  font-weight: 500;
  border-radius: 0.375rem; /* 6px - slightly smaller */
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  transition: background-color 0.2s;
}

.btn-primary:hover {
  background: #E68A00;
}
```

### 5. Consider Full Dark Theme Option

The app is fully dark-themed. Consider either:

**Option A:** Make entire website dark (matches app perfectly)
**Option B:** Keep current mixed approach (dark hero, light content)
**Option C:** Add dark mode toggle

**If going full dark, update sections:**
```css
.section-light {
  background: hsl(20, 6%, 10%);
  color: white;
}

.section-gray {
  background: hsl(20, 6%, 14%);
  color: white;
}
```

### 6. Typography Refinements

**Match app's font weights:**
```css
/* Headings - app uses font-semibold (600) */
h1, h2, h3 { font-weight: 600; }

/* Body - app uses font-normal (400) */
body { font-weight: 400; }

/* UI elements - app uses font-medium (500) */
.btn, nav a { font-weight: 500; }

/* Smaller text - app uses text-sm (14px) */
.text-sm { font-size: 0.875rem; }
```

### 7. Spacing Adjustments

**App uses tighter spacing:**
```css
/* Card padding */
.feature-card {
  padding: 1.5rem; /* 24px - app uses p-6 */
}

/* Section padding */
.section {
  padding: 4rem 2rem; /* Matches app container */
}

/* Gap between items */
.grid-3 {
  gap: 1.5rem; /* 24px */
}
```

---

## Implementation Priority

### Phase 1: Quick Wins ✅ COMPLETED
1. [x] Replace emoji with Bootstrap Icons
2. [x] Update button text color to dark (#1a1918)
3. [x] Add warm undertone to charcoal colors

### Phase 2: Visual Polish ✅ COMPLETED
4. [x] Update card border styling
5. [x] Refine typography weights
6. [x] Adjust spacing to match app

### Phase 3: Optional
7. [ ] Consider full dark theme
8. [x] Add CSS custom properties matching app
9. [ ] Implement dark mode toggle

---

## CSS Variables to Add (for consistency)

Add to `custom.scss`:

```scss
:root {
  /* Match app's warm charcoal system */
  --background: hsl(20, 6%, 10%);
  --background-card: hsl(20, 6%, 14%);
  --border: hsl(20, 6%, 20%);
  
  /* Match app's text colors */
  --foreground: #ffffff;
  --foreground-muted: hsl(0, 0%, 60%);
  
  /* Primary stays the same */
  --primary: #FF9900;
  --primary-hover: #E68A00;
  --primary-foreground: #1a1918; /* Dark text on orange */
  
  /* Border radius */
  --radius: 0.5rem;
  --radius-sm: 0.375rem;
}
```

---

## Files to Modify

1. **`custom.scss`** - Update color variables, button styles
2. **`css/styles.css`** - Update card styles, spacing
3. **`index.qmd`** - Replace emoji with icons
4. **`features.qmd`** - Replace emoji with icons
5. **`about.qmd`** - Replace emoji with icons
6. **`pricing.qmd`** - Update card styling

---

## Quick Test

After changes, compare:
- Hero section gradient should feel "warmer"
- Buttons should have dark text on orange
- Cards should have subtle borders, not heavy left accent
- Icons should be clean line icons, not emoji
