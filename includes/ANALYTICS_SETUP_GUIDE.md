# Praevius Analytics Setup Guide

Complete setup guide for Google Tag Manager, GA4, and conversion tracking.

---

## Quick Start Checklist

- [ ] Create Google Tag Manager account and container
- [ ] Get GTM Container ID (GTM-XXXXXXX)
- [ ] Create Google Analytics 4 property
- [ ] Get GA4 Measurement ID (G-XXXXXXXXXX)
- [ ] Update `includes/gtm-head.html` with your GTM Container ID
- [ ] Update `includes/gtm-body.html` with your GTM Container ID
- [ ] Add Google Search Console verification code
- [ ] Run `quarto render` to build the site
- [ ] Deploy and verify tracking in GTM Preview mode
- [ ] Publish GTM container

---

## Step 1: Google Tag Manager Setup

### 1.1 Create GTM Account

1. Go to [tagmanager.google.com](https://tagmanager.google.com)
2. Click **Create Account**
3. Fill in:
   - Account Name: `Praevius` or your company name
   - Country: `United Kingdom`
4. Container Name: `praevius.app`
5. Target Platform: `Web`
6. Accept Terms of Service

### 1.2 Get Your Container ID

After creation, note your Container ID (format: `GTM-XXXXXXX`)

### 1.3 Update Include Files

Edit `/Users/robertkowalski/Documents/praevius-website/includes/gtm-head.html`:

Replace `GTM-XXXXXXX` with your actual Container ID in this line:
```javascript
})(window,document,'script','dataLayer','GTM-XXXXXXX');</script>
```

Edit `/Users/robertkowalski/Documents/praevius-website/includes/gtm-body.html`:

Replace `GTM-XXXXXXX` with your actual Container ID:
```html
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-XXXXXXX"
```

---

## Step 2: Google Analytics 4 Setup

### 2.1 Create GA4 Property

1. Go to [analytics.google.com](https://analytics.google.com)
2. Click **Admin** (gear icon)
3. Click **Create** > **Property**
4. Fill in:
   - Property Name: `Praevius - Production`
   - Reporting Time Zone: `United Kingdom`
   - Currency: `British Pound (GBP)`
5. Business details:
   - Industry: `Technology`
   - Size: `Small` or `Medium`

### 2.2 Create Data Stream

1. Select **Web** platform
2. Website URL: `https://praevius.app`
3. Stream Name: `Praevius Website`
4. Enable all Enhanced Measurement options
5. Note your **Measurement ID** (format: `G-XXXXXXXXXX`)

### 2.3 Configure GA4 in GTM

In GTM:

1. Go to **Tags** > **New**
2. Tag Configuration: **Google Analytics: GA4 Configuration**
3. Measurement ID: Enter your `G-XXXXXXXXXX`
4. Trigger: **All Pages**
5. Name: `GA4 - Config - Praevius`
6. Save

**OR** Import the container:

1. Go to **Admin** > **Import Container**
2. Select `/includes/gtm-container-export.json`
3. Choose workspace
4. Select **Merge** > **Rename conflicting**
5. Update the "GA4 Measurement ID" variable with your ID

---

## Step 3: Conversion Tracking Events

### Events Tracked Automatically

The `analytics-events.html` file automatically tracks:

| Event | Description | Parameters |
|-------|-------------|------------|
| `view_pricing` | Pricing page visit | page_path, referrer |
| `view_features` | Features page visit | page_path |
| `free_trial_click` | Trial button clicks | cta_text, cta_location, plan_interest |
| `demo_request_click` | Demo button clicks | cta_location |
| `contact_click` | Contact button clicks | cta_location |
| `cta_click` | General CTA clicks | cta_text, cta_url, cta_location |
| `contact_form_started` | Form interaction begins | form_id, form_location |
| `contact_form_submitted` | Form submission | form_id, form_location |
| `scroll_depth` | Scroll milestones (25/50/75/90%) | scroll_percentage |
| `chatbot_opened` | Pipedrive chat opened | chatbot_type |
| `outbound_link_click` | External link clicks | link_url, link_text |

### Mark Events as Conversions in GA4

1. In GA4, go to **Admin** > **Events**
2. Wait for events to appear (24-48 hours after first occurrence)
3. Toggle **Mark as conversion** for:
   - `free_trial_click`
   - `demo_request`
   - `contact_form_submitted`

---

## Step 4: Google Search Console

### 4.1 Add Property

1. Go to [search.google.com/search-console](https://search.google.com/search-console)
2. Click **Add Property**
3. Choose **URL prefix**
4. Enter: `https://praevius.app`

### 4.2 Verify Ownership

**Option A: HTML Meta Tag (Recommended)**

1. Select "HTML tag" verification
2. Copy the verification code
3. Edit `/includes/gtm-head.html`
4. Replace `YOUR_VERIFICATION_CODE` with your code:
```html
<meta name="google-site-verification" content="YOUR_ACTUAL_CODE" />
```

**Option B: DNS TXT Record**

1. Select "Domain name provider"
2. Add TXT record to your DNS:
   - Type: TXT
   - Host: @ or praevius.app
   - Value: `google-site-verification=YOUR_CODE`

### 4.3 Connect to GA4

1. In GA4: **Admin** > **Product Links** > **Search Console Links**
2. Click **Link**
3. Select your Search Console property
4. Submit

### 4.4 Submit Sitemap

Add sitemap generation to `_quarto.yml` (if not already present):

```yaml
website:
  site-url: "https://praevius.app"
  # ... other config
```

The sitemap will be at `https://praevius.app/sitemap.xml`

In Search Console:
1. Go to **Sitemaps**
2. Enter: `sitemap.xml`
3. Click **Submit**

---

## Step 5: Microsoft Clarity (Optional - Free Heatmaps)

### 5.1 Create Clarity Project

1. Go to [clarity.microsoft.com](https://clarity.microsoft.com)
2. Sign up with Microsoft account
3. Create new project: `Praevius`
4. Get your Clarity tracking code

### 5.2 Add via GTM

1. In GTM: **Tags** > **New**
2. Tag Type: **Custom HTML**
3. HTML:
```html
<script type="text/javascript">
    (function(c,l,a,r,i,t,y){
        c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
        t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
        y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
    })(window, document, "clarity", "script", "YOUR_CLARITY_PROJECT_ID");
</script>
```
4. Trigger: **All Pages**
5. Name: `Clarity - Heatmaps`
6. Save

---

## Step 6: Build and Deploy

### 6.1 Render the Site

```bash
cd /Users/robertkowalski/Documents/praevius-website
quarto render
```

### 6.2 Verify Files

Check that GTM code is present in output:

```bash
grep -l "googletagmanager" docs/*.html
```

### 6.3 Deploy

```bash
git add .
git commit -m "Add Google Tag Manager and analytics tracking"
git push
```

---

## Step 7: Testing and Verification

### 7.1 GTM Preview Mode

1. In GTM, click **Preview**
2. Enter: `https://praevius.app`
3. Navigate around the site
4. Check that tags fire correctly

### 7.2 GA4 DebugView

1. In GA4: **Admin** > **DebugView**
2. Browse your site with GTM Preview active
3. Verify events appear in real-time

### 7.3 Chrome Extensions

Install these for testing:
- **Tag Assistant Legacy** (by Google)
- **GA Debugger**
- **dataLayer Inspector+**

### 7.4 Common Issues

| Issue | Solution |
|-------|----------|
| Tags not firing | Check GTM container is published |
| Events not in GA4 | Verify Measurement ID is correct |
| Search Console not verified | Wait 24-48 hours, check meta tag placement |
| Clarity not loading | Check project ID, ensure no ad blockers |

---

## Step 8: Publish GTM Container

Once testing is complete:

1. In GTM: Click **Submit**
2. Add version name: `Initial Analytics Setup`
3. Add description of changes
4. Click **Publish**

---

## Event Reference

### Data Layer Events

These events are pushed to dataLayer by `analytics-events.html`:

```javascript
// CTA Click
{
  'event': 'cta_click',
  'cta_text': 'Start Free Trial',
  'cta_url': 'https://app.praevius.app/start-trial',
  'cta_location': 'hero',
  'page_url': 'https://praevius.app/',
  'page_path': '/',
  'timestamp': '2025-12-31T12:00:00.000Z'
}

// Free Trial Click
{
  'event': 'free_trial_click',
  'cta_text': 'Start Free Trial',
  'cta_url': 'https://app.praevius.app/start-trial?bundle=professional',
  'cta_location': 'pricing_section',
  'plan_interest': 'professional',
  'page_url': 'https://praevius.app/pricing.html',
  'page_path': '/pricing.html',
  'timestamp': '2025-12-31T12:00:00.000Z'
}

// Form Submitted
{
  'event': 'contact_form_submitted',
  'form_id': 'contact-form',
  'form_location': 'body',
  'page_url': 'https://praevius.app/contact.html',
  'page_path': '/contact.html',
  'timestamp': '2025-12-31T12:00:00.000Z'
}
```

---

## Files Created

| File | Purpose |
|------|---------|
| `/includes/gtm-head.html` | GTM head code + Search Console verification |
| `/includes/gtm-body.html` | GTM noscript fallback |
| `/includes/analytics-events.html` | Custom event tracking JavaScript |
| `/includes/gtm-container-export.json` | GTM container import file |
| `/includes/ANALYTICS_SETUP_GUIDE.md` | This guide |

---

## Support Resources

- [GTM Help Center](https://support.google.com/tagmanager)
- [GA4 Documentation](https://support.google.com/analytics)
- [Search Console Help](https://support.google.com/webmasters)
- [Microsoft Clarity Docs](https://docs.microsoft.com/en-us/clarity/)

---

*Last updated: December 2025*
