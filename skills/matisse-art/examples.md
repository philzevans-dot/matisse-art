# Example prompts

Keep the user's subject wording verbatim inside the motif/scene slot. These show assembled `GenerateImage.description` values, not images to copy.

## Single cut-out print (artwork-only)

**User:** a coral leaf and a small sun for the dining room

**Language:** A (cut-outs) · **Mode:** artwork-only

**GenerateImage**

- `aspect_ratio`: `3:4`
- `filename`: `matisse-coral-leaf-sun.png`
- `reference_image_paths`: `references/red-coral-leaf.jpg`, `references/poster-sage-leaf-sun.png`
- `description`:

```
Matisse-style papiers découpés paper cut-out art, flat solid gouache-paper shapes with subtle paper grain and slightly rough hand-cut edges, a coral leaf and a small sun, bold warm coral red, golden yellow, and cobalt blue on a warm cream/off-white ground, generous negative space, abstract simplified organic forms, no shading or perspective, full-bleed artwork, no text, no border, modern gallery wall art.
```

## Single painterly print

**User:** an open window looking onto the Mediterranean

**Language:** B (Fauvist) · **Mode:** artwork-only

**GenerateImage**

- `aspect_ratio`: `3:4`
- `filename`: `matisse-open-window-mediterranean.png`
- `reference_image_paths`: `references/open-window-interior.png`, `references/fauvist-landscape.png`
- `description`:

```
Matisse-style Fauvist painting, loose expressive brushwork, bright non-naturalistic color, flattened perspective, an open window looking onto the Mediterranean, bright greens, coral/terracotta, lavender, sky blue, pink, ochre, hand-painted edges, warm light, full-bleed artwork, no text, no border, modern fine-art wall print.
```

## Contour portrait (artwork-only)

**User:** a line drawing of a woman looking upward

**Language:** C (contour) · **Mode:** artwork-only

**GenerateImage**

- `aspect_ratio`: `3:4`
- `filename`: `matisse-woman-looking-upward.png`
- `reference_image_paths`: `references/poster-nadia-contour.png`
- `description`:

```
Matisse-style brush-ink contour drawing, thick calligraphic black ink lines on warm cream paper, visible brush pressure, extreme economy of line, a line drawing of a woman looking upward, generous negative space, no shading, no color fill, invent an original sitter, full-bleed artwork, no text, no border, modern gallery wall art.
```

## Exhibition poster — single frond

**User:** an exhibition poster of a coral leaf, papiers découpés

**Language:** A (cut-outs) · **Mode:** exhibition poster

**GenerateImage**

- `aspect_ratio`: `3:4`
- `filename`: `matisse-poster-coral-leaf.png`
- `reference_image_paths`: `references/poster-orange-coral-periwinkle.png`, `references/poster-pink-coral-celadon.png`
- `description`:

```
Matisse-style papiers découpés paper cut-out art, flat solid gouache-paper shapes with subtle paper grain and slightly rough hand-cut edges, a coral leaf, bold orange on a periwinkle inner panel, abstract simplified organic forms, no shading or perspective, vertical museum exhibition poster, wide warm cream mat, centered high-contrast black serif type, header MATISSE in bold tracked caps over a smaller italic subtitle PAPIERS DÉCOUPÉS, inner flat color panel with the artwork, original footer gallery line, no famous-work copy, no lorem ipsum.
```

## Coordinated gallery set (3 prints)

**User:** three bird prints for a hallway gallery wall

**Language:** A (cut-outs). Generate print 1 first; pass it as a reference for prints 2 and 3.

Shared suffix for every print: `part of a coordinated gallery set, consistent palette, ground, texture and style with the other prints.`

| Print | Motif variation | Filename |
|-------|-----------------|----------|
| 1 | two doves in dynamic pairing | `matisse-gallery-doves.png` |
| 2 | a single bird in flight, larger negative space | `matisse-gallery-bird-flight.png` |
| 3 | three small birds and a sun circle | `matisse-gallery-birds-sun.png` |

Print 1 references: `references/blue-doves-cutouts.jpg`, `references/blue-nude-cutout.png`

Prints 2–3 references: print 1 output + the same style anchors.

If the user asked for posters, keep the same type stack, mat, and inner-panel recipe across all three.
