# Matisse Art

A Cursor plugin that teaches Agent to produce original Matisse-inspired fine art for home decor: wall prints, gallery sets, and exhibition posters.

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

**This repo (project skill)** — clone it and open it in Cursor. The skill loads from `.cursor/skills/matisse-art`.

**Local plugin (this machine)** — copy or symlink the repo to `~/.cursor/plugins/local/matisse-art`, then reload the window. Open **Customize** and confirm the skill is listed.

**Team marketplace** — on a Teams or Enterprise plan:

1. Copy `skills/matisse-art/` to `~/.cursor/skills/matisse-art` on your machine.
2. Open **Customize → Skills**, open **matisse-art**, choose **Publish**.
3. Teammates install it from the team’s Default marketplace.

You can also import this Git repository from **Dashboard → Plugins → Add Marketplace**.

**Public Cursor Marketplace** — push this project to a public GitHub repository, then submit the repo URL at [cursor.com/marketplace/publish](https://cursor.com/marketplace/publish). Cursor reviews each listing.

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

## Plugin layout

```
plugin.json                         # Agent Plugins manifest
.cursor-plugin/plugin.json          # Cursor Plugin manifest
.cursor-plugin/marketplace.json     # Team marketplace import
skills/matisse-art/
├── SKILL.md
├── examples.md
└── references/
assets/logo.svg
```
