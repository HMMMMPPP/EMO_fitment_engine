# EMO Fitment Engine

Branded landing page for **Emotion — Más que llantas y rines** that embeds the vehicle fitment lookup form.

**Live:** `fitmentengine.eco.car-ismatrade.com`

---

## Stack

- **Serving:** nginx:alpine (static)
- **Form:** Formbricks iframe embed (hosted on `surveys.arellanoglobal.cloud`)
- **Deployment:** Coolify v4 + Traefik (SSL via Let's Encrypt)

## Deploy (Coolify)

1. New Resource → Docker Compose
2. Source: this repo, branch `main`
3. Compose file: `docker-compose.coolify.yml`
4. Domain: `fitmentengine.eco.car-ismatrade.com`
5. Deploy — no env vars or secrets required

> DNS A record for the domain must point to the AG server before deploying.

## Files

| File | Purpose |
|------|---------|
| `index.html` | Main page — Emotion branding + Formbricks iframe |
| `logo-emotion.svg` | Header logo |
| `emotion-logo.jpeg` | Favicon |
| `Dockerfile` | nginx:alpine static server |
| `docker-compose.coolify.yml` | Coolify production compose with Traefik labels |

---

Powered by [Arellano Global](https://arellanoglobal.org)
