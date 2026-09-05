# Matisse Art

A plugin that teaches Agent to produce original Matisse-inspired fine art for home decor: wall prints, gallery sets, and exhibition posters.

Three visual languages:

- Late **papiers découpés** (flat gouache-paper cut-outs) — default for graphic decor
- Early **Fauvist** painting — scenes, interiors, landscapes
- **Brush-ink contour** drawing — monochrome portraits and figures

Default output is full-bleed, artwork-only (no poster text or mat). Exhibition-poster layout — cream mat, serif header, inner color panel, gallery footer — is used when you ask for a poster or museum look.

## Use it

In a chat where this plugin or skill is available:

- “A cobalt bird cut-out for the hallway”
- “Three botanical prints in a Matisse paper-cut style”
- “A Fauvist open-window painting, pink floor, Mediterranean view”
- “A brush-ink line portrait of a woman looking upward”
- “An exhibition poster, papiers découpés, one coral leaf on blue”

Or invoke `/matisse-art` in Agent chat.

## Install

Public repo: [github.com/philzevans-dot/matisse-art](https://github.com/philzevans-dot/matisse-art)

**This repo (project skill)** — clone it and open it in Cursor. The skill loads from `.cursor/skills/matisse-art`.

**Local plugin (this machine)** — copy or symlink the repo to `~/.cursor/plugins/local/matisse-art`, then reload the window. Open **Customize** and confirm the skill is listed.

**Team marketplace** — on a Teams or Enterprise plan:

1. Copy `skills/matisse-art/` to `~/.cursor/skills/matisse-art` on your machine.
2. Open **Customize → Skills**, open **matisse-art**, choose **Publish**.
3. Teammates install it from the team’s Default marketplace.

You can also import this Git repository from **Dashboard → Plugins → Add Marketplace**.

**Public Cursor Marketplace** — submit [github.com/philzevans-dot/matisse-art](https://github.com/philzevans-dot/matisse-art) at [cursor.com/marketplace/publish](https://cursor.com/marketplace/publish). Cursor reviews each listing.

## Defaults

| Choice | Default |
|--------|---------|
| Language | Cut-outs for graphic prints; painterly for scenes; contour for portraits |
| Output | Artwork-only, full-bleed, no text/signature/border |
| Poster | Cream mat + serif type, only when asked |
| Aspect | Portrait `3:4` wall art |
| Palette | 2–5 bold flat colors on warm cream |
| Sets | Shared palette, ground, texture, and margin treatment |

Prints are original compositions. Files in `skills/matisse-art/references/` are style anchors only — borrow silhouette language, paper grain, and poster structure; do not reproduce famous works or exhibition copy.

## Samples

Original prints generated with this skill. Full-bleed artwork-only unless noted.

| File | Language | Subject |
|------|----------|---------|
| [samples/cutout-leaf-and-sun.png](samples/cutout-leaf-and-sun.png) | Cut-outs | Sage leaf and yellow sun |
| [samples/cutout-banana-leaf.png](samples/cutout-banana-leaf.png) | Cut-outs | Banana leaf |
| [samples/cutout-blue-doves.png](samples/cutout-blue-doves.png) | Cut-outs | Paired cobalt birds |
| [samples/fauvist-garden-riviera.png](samples/fauvist-garden-riviera.png) | Fauvist | Garden path to the sea |
| [samples/fauvist-open-window.png](samples/fauvist-open-window.png) | Fauvist | Open window, Mediterranean |
| [samples/contour-portrait.png](samples/contour-portrait.png) | Contour | Brush-ink portrait |
| [samples/poster-coral-leaf.png](samples/poster-coral-leaf.png) | Cut-outs + poster | Exhibition coral frond |

## Plugin layout

```
plugin.json                         # Agent Plugins manifest
.cursor-plugin/plugin.json          # Cursor Plugin manifest
.cursor-plugin/marketplace.json     # Team marketplace import
skills/matisse-art/
├── SKILL.md
├── examples.md
└── references/
samples/                            # Generated example prints
assets/logo.svg
```
