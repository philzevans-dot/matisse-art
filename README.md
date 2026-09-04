# Matisse Art Skill

A Cursor Agent Skill that produces original Matisse-inspired fine art for home decor: wall art, framed prints, canvas pieces, coordinated gallery sets, and exhibition posters.

Three visual languages:

- Late **papiers découpés** (flat gouache-paper cut-outs) — default for graphic decor
- Early **Fauvist** painting — scenes, interiors, landscapes
- **Brush-ink contour** drawing — monochrome portraits and figures

Default output is full-bleed, artwork-only (no poster text or mat). Exhibition-poster layout — cream mat, serif header, inner color panel, gallery footer — is used when you ask for a poster or museum look.

## Use it

1. Open this project in Cursor so the skill at `.cursor/skills/matisse-art/` is available.
2. Ask for Matisse-style wall art, even without naming Matisse. Examples:
   - “A cobalt bird cut-out for the hallway”
   - “Three botanical prints in a Matisse paper-cut style”
   - “A Fauvist open-window painting, pink floor, Mediterranean view”
   - “A brush-ink line portrait of a woman looking upward”
   - “An exhibition poster, papiers découpés, one coral leaf on blue”

The agent chooses language and output mode, builds the prompt, and generates via Cursor `GenerateImage`.

## Defaults

| Choice | Default |
|--------|---------|
| Language | Cut-outs for graphic prints; painterly for scenes; contour for portraits |
| Output | Artwork-only, full-bleed, no text/signature/border |
| Poster | Cream mat + serif type, only when asked |
| Aspect | Portrait `3:4` wall art |
| Palette | 2–5 bold flat colors on warm cream |
| Sets | Shared palette, ground, texture, and margin treatment |

Prints are original compositions. Files in `references/` are style anchors only — borrow silhouette language, paper grain, and poster structure; do not reproduce famous works or exhibition copy.

## Skill files

```
.cursor/skills/matisse-art/
├── SKILL.md          # Instructions the agent follows
├── examples.md       # Assembled prompt examples
└── references/       # Style anchors (borrow language, never copy)
```
