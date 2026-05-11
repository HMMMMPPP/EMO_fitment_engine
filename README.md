# Emotion Fitment Engine

Vehicle-to-tire/rim fitment lookup tool for client Emotion (Llantas & Autopartes).

## Status
Production-ready — pending Coolify deploy.

## Stack
nginx:alpine serving static HTML + Formbricks iframe embed

## Domain
`fitmentengine.eco.car-ismatrade.com`

## Purpose
Landing page embedding the Emotion Formbricks fitment survey at:
`https://surveys.arellanoglobal.cloud/s/cml9hvdx1000dqm0169179rvo`

## Deploy (Coolify)
1. Create new Docker Compose resource in Coolify
2. Build context: `deployments/emotion-fitment-engine/`
3. Compose file: `docker-compose.coolify.yml`
4. Set domain: `fitmentengine.eco.car-ismatrade.com`
5. Ensure DNS A record points to AG server IP before deploy
6. Deploy — Traefik handles SSL via Let's Encrypt automatically

## Client
Emotion (EMO tenant prefix) | `#emotion-errors` Discord channel

## Files
| File | Purpose |
|------|---------|
| `index.html` | Main page — Emotion branding + Formbricks iframe |
| `logo-emotion.svg` | SVG logo used in header |
| `emotion-logo.jpeg` | Favicon |
| `Dockerfile` | nginx:alpine static serve |
| `docker-compose.coolify.yml` | Coolify production compose with Traefik labels |
