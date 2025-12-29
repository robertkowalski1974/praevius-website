# Praevius Website Improvement Instructions

## For Claude CLI - Run these improvements in order

**Note:** App is live at `app.praevius.app` - all CTAs should point to signup/trial, not waitlist.

---

## 🔴 Priority 1: Critical Fixes

### 1.1 Pricing Currency Decision ✅ DECIDED
**Decision:** Keep USD ($99/$229/$449) for global appeal.

No changes needed - already implemented.

### 1.2 Footer Contact Email ✅ DONE
Standardized to `hello@praevius.app` across all pages.

### 1.3 Verify All CTA URLs ✅ DONE
All buttons point to correct app URLs:
- Free plan: `https://app.praevius.app/login`
- Paid trials: `https://app.praevius.app/start-trial?bundle=essential|professional|scale`

---

## 🟡 Priority 2: Visual Improvements

### 2.1 Add Hero Images/Product Screenshots
Currently all hero sections are text-only. Need visual interest.

**Action**: 
- Create dashboard mockup images
- Add to `images/` folder:
  - `dashboard-preview.png` - main dashboard screenshot
  - `variance-report.png` - AI report example
  - `mobile-app.png` - mobile interface preview
- Update `index.qmd` hero section to include image
- Update `features.qmd` to show screenshots alongside features

### 2.2 Add Integration Logos
Features page mentions integrations but no visual proof.

**Action**: Add integration partner logos to `images/integrations/`:
- `xero-logo.svg`
- `quickbooks-logo.svg`
- `sage-logo.svg`
- `google-drive-logo.svg`
- `sharepoint-logo.svg`
- `procore-logo.svg`

Then create an integrations bar component in `features.qmd`.

### 2.3 Improve Variance Badge Section
The traffic light section on features page is plain text.

**Action**: Make it interactive/visual:
- Add actual colored badge components using CSS from brand guidelines
- Consider adding animation on hover
- Add example project names to make it feel real

### 2.4 Add Social Proof Section
No client logos or testimonials currently.

**Action**: Add to `index.qmd`:
- "Trusted by contractors across UK & Australia" section
- Client logos or "Join 50+ contractors" counter
- Styled testimonial cards

---

## 🟢 Priority 3: Content Improvements

### 3.1 About Page - Add Founder Section
The story is good but lacks personal connection.

**Action**: Add to `about.qmd`:
- Founder photo placeholder
- Brief bio focusing on construction background
- LinkedIn link

### 3.2 Contact Form Functionality
Form doesn't submit anywhere.

**Action**: Either:
- **Option A**: Integrate with Formspree/Netlify Forms
- **Option B**: Add mailto: fallback
- **Option C**: Embed HubSpot/Pipedrive form

### 3.3 Add FAQ Schema Markup
Pricing page has FAQ but no structured data.

**Action**: Add JSON-LD FAQ schema to `pricing.qmd` for SEO.

### 3.4 Improve Meta Descriptions
Current descriptions are generic.

**Action**: Update each page's description in frontmatter:
- `index.qmd`: Include "free trial" and key benefit
- `features.qmd`: Mention specific features (AI reports, S-curves)
- `pricing.qmd`: Include starting price point ("Free plan available")
- `about.qmd`: Mention 20 years experience, BIM Takeoff connection

---

## 🔵 Priority 4: Technical Improvements

### 4.1 Add Analytics
No tracking currently implemented.

**Action**: Add to `_quarto.yml` include-in-header:
- Google Tag Manager (get GTM ID from Robert)
- Google Analytics 4
- LinkedIn Insight Tag (for B2B tracking)

### 4.2 Add Open Graph Images
Social sharing will look plain without images.

**Action**:
- Create `images/og-image.png` (1200x630px) with Praevius branding
- Update `_quarto.yml` open-graph section

### 4.3 Favicon Implementation
Check if favicon is working properly.

**Action**: 
- Generate favicon set from `praevius-icon-orange.svg`
- Add apple-touch-icon
- Update `_quarto.yml` favicon references

### 4.4 Mobile Responsiveness Audit
Need to verify mobile display.

**Action**: Test and fix:
- Navigation hamburger menu
- Hero section text sizing
- Pricing cards stacking
- Feature cards layout
- Touch targets (44px minimum)

### 4.5 Performance Optimization
**Action**:
- Optimize SVG files (remove unnecessary metadata)
- Add lazy loading to images
- Minimize CSS

---

## 🟣 Priority 5: New Pages/Features

### 5.1 Create Demo/Video Page
Show product in action.

**Action**: Create `demo.qmd`:
- Embed product demo video (when available)
- Screenshot walkthrough
- "Book a demo" calendar embed (Calendly/HubSpot)

### 5.2 Create Integration Detail Pages
Each integration deserves its own page for SEO.

**Action**: Create `integrations/` folder with:
- `xero.qmd`
- `quickbooks.qmd`
- `procore.qmd`
- etc.

### 5.3 Create Blog/Resources Section
For SEO and thought leadership.

**Action**: Create `blog/` folder with:
- `index.qmd` - blog listing
- Initial posts about cost control, EVM, etc.

### 5.4 Create Use Cases Pages
Industry-specific landing pages.

**Action**: Create `use-cases/` folder:
- `electrical-contractors.qmd`
- `mechanical-contractors.qmd`
- `qs-practices.qmd`

---

## 📋 Implementation Checklist

```
[x] 1.1 Pricing currency - USD confirmed
[x] 1.2 Standardized contact email to hello@praevius.app
[x] 1.3 All CTA URLs verified - point to app.praevius.app
[ ] 2.1 Add hero/product images
[ ] 2.2 Add integration logos
[ ] 2.3 Improve variance badges visual
[ ] 2.4 Add social proof section
[ ] 3.1 Add founder section to About
[ ] 3.2 Implement contact form
[ ] 3.3 Add FAQ schema
[ ] 3.4 Improve meta descriptions
[ ] 4.1 Add analytics tracking
[ ] 4.2 Create OG images
[ ] 4.3 Fix favicon
[ ] 4.4 Mobile responsiveness audit
[ ] 4.5 Performance optimization
[ ] 5.1 Create demo page
[ ] 5.2 Create integration pages
[ ] 5.3 Create blog section
[ ] 5.4 Create use cases pages
```

---

## Quick Wins (Do First)

1. ~~Fix contact email consistency~~ ✅ Done
2. Add basic OG image for social sharing
3. Test mobile navigation
4. ~~Verify all CTAs work correctly~~ ✅ Done
5. Add Google Analytics

---

## Notes

- All changes must follow brand guidelines in `.claude/Praevius_Brand_Guidelines.md`
- Use Inter font throughout
- Orange (#FF9900) for CTAs and accents
- Charcoal (#2C2C2C) for text and dark backgrounds
- Test locally with `quarto preview` before committing
- App is live at `app.praevius.app` - use real signup URLs
- Pricing: USD ($99/$229/$449)
