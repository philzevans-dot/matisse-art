# Matisse Art Skill

A Cursor Agent Skill that produces original Matisse-inspired fine art for home decor: wall art, framed prints, canvas pieces, and coordinated gallery sets.

The skill works in two visual languages — late **papiers découpés** (flat gouache-paper cut-outs) and early **Fauvist** painting — and defaults to full-bleed, artwork-only prints with no poster text or white border.

## Use it

1. Open this project in Cursor so the skill at `.cursor/skills/matisse-art/` is available.
2. Ask for Matisse-style wall art, even without naming Matisse. Examples:
   - “A cobalt bird cut-out for the hallway”
   - “Three botanical prints in a Matisse paper-cut style”
   - “A Fauvist open-window painting, pink floor, Mediterranean view”
   - “Flat bold organic shapes, cream ground, gallery-wall set of four”

The agent chooses cut-outs vs painterly, builds the prompt, and generates via Cursor `GenerateImage`.

## Defaults

| Choice | Default |
|--------|---------|
| Language | Cut-outs for graphic prints; painterly for scenes |
| Output | Artwork-only, full-bleed, no text/signature/border |
| Aspect | Portrait `3:4` wall art |
| Palette | 3–5 bold flat colors on warm cream |
| Sets | Shared palette, ground, texture; motif varies per print |

Poster typography and white mats are added only when you explicitly ask for an exhibition/poster look.

## Skill files

```
.cursor/skills/matisse-art/
├── SKILL.md          # Instructions the agent follows
├── examples.md       # Assembled prompt examples
└── references/       # Style anchors (borrow language, never copy)
```

Prints are original compositions. Famous Matisse works in `references/` are style anchors only — cobalt silhouette, paper grain, Fauvist color — not templates to reproduce.
