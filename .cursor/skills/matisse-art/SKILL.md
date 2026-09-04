---
name: matisse-art
description: >-
  Produces original Matisse-inspired fine art for home decor — wall art, framed
  prints, canvas art, gallery-wall pieces — in Henri Matisse's two signature
  visual languages. The goal is decor-ready artwork that feels like a warm,
  collectible modern-art piece: joyful color, simplified form, hand-made
  texture. Use this whenever the user asks for Matisse-style art, Fauvist art,
  "paper cut-out" / papiers découpés style art, abstract botanical/figure/animal
  wall art, or gallery prints in a modern French fine-art mood — even if they
  don't say "Matisse" explicitly but describe flat bold organic shapes,
  cobalt-blue silhouettes, or loose bright painterly scenes.
---

# Matisse Art

Produces original Matisse-inspired fine art for home decor — wall art, framed prints, canvas art, gallery-wall pieces — in Henri Matisse's two signature visual languages. The goal is decor-ready artwork that feels like a warm, collectible modern-art piece: joyful color, simplified form, hand-made texture. Use this whenever the user asks for Matisse-style art, Fauvist art, "paper cut-out" / papiers découpés style art, abstract botanical/figure/animal wall art, or gallery prints in a modern French fine-art mood — even if they don't say "Matisse" explicitly but describe flat bold organic shapes, cobalt-blue silhouettes, or loose bright painterly scenes.

Default output is ARTWORK-ONLY: full-bleed art, no poster text, no white border, no signature/caption. The reference prints carry exhibition typography, but for home decor the art itself is the product — text and borders are added only when the user explicitly asks for a poster/exhibition look.

## The two Matisse languages — choose first

Decide which language fits the request before composing. They are visually distinct; don't blend them into one muddy image.

**A. Cut-outs / Papiers Découpés (late Matisse) — the default for decor.** Flat, solid shapes that look cut from painted gouache paper and arranged by hand. Organic abstract forms: leaves, coral, flowers, doves/birds, reclining or dancing figures, suns, waves. Bold saturated silhouette, generous negative space, subtle paper grain/rough torn edges, no perspective, no shading. Ground is usually warm off-white/cream, sometimes a single flat color panel. This is the calm, graphic, very decor-friendly mode. Choose it for abstract botanicals, animals, figures, minimal statements, and gallery sets.

**B. Fauvist / painterly (early Matisse).** Loose, visible brushwork; bright, non-naturalistic color used for emotion rather than realism; flattened perspective. Subjects: open windows looking onto color-blocked landscapes, cheerful interiors (pink floors, pastel walls, simple chairs/vases), figures and nudes in gardens, Mediterranean scenes. Hand-painted edges, sketchy under-drawing allowed, color fields of green/coral/purple/blue/pink. Choose it when the user wants a painted scene, interior, landscape, or a warmer expressive feel.

If the user isn't sure, default to cut-outs for single graphic prints and painterly for scene-based art; offer the other as an alternative rather than asking unnecessarily.

## Composition & design rules

- Simplify ruthlessly. Matisse reduces a subject to its essential silhouette. A flower is a few rounded petal-shapes; a body is one flowing contour; a bird is two or three angled planes. Favor a few large shapes over many small details.
- Flatness over realism. No realistic lighting, gradients, 3D rendering, phototexture, or perspective. Cut-outs are pure flat color; painterly work uses flat color patches with visible brush marks, not modeled volume.
- Negative space is a design element. Let the cream/ground breathe around forms; don't fill the frame edge-to-edge with detail.
- Balance by eye, asymmetrically. One large anchoring form plus a smaller counter-form (e.g. a big coral leaf with a small sun circle; two doves in dynamic pairing).
- Hand-made imperfection. Slightly irregular, wobbly, organic edges; subtle paper fiber/grain; torn-paper feel. Avoid clean vector-perfect digital shapes and avoid a polished AI-render look.
- Decor harmony. The piece should hang well in a room: strong enough to read from across a space, calm enough to live with. High contrast where it counts, limited overall palette.

## Color

Matisse color is bold, flat, and joyful — never muddy or neon. Build from a small set (typically 3–5 colors) and let one or two dominate.

- **Cut-outs palette:** cobalt / ultramarine blue (the iconic Matisse blue), warm coral red, hot pink, soft pink, peach/orange, golden yellow, leaf/forest green, on cream / off-white / pale beige ground.
- **Fauvist palette:** bright greens, coral/terracotta, lavender/purple, sky and deep blue, pink, ochre/cream — applied in non-naturalistic patches (a pink floor, a green face of landscape, a purple wall).
- Prefer a warm off-white/cream ground over pure white for a softer, more collectible feel.
- Keep saturation high but tasteful; colors sit flat next to each other rather than blending.

## Motifs (original, not copied)

Draw on Matisse's recurring subjects but always compose original forms — never reproduce a famous artwork (Blue Nude, specific doves, a known poster) verbatim.

- **Cut-outs:** abstract leaves & coral fronds, simplified flowers with oversized petals, doves/birds in flight, sun and circle motifs, waves, reclining/dancing abstract figures, acrobats.
- **Painterly:** open shuttered windows with color-blocked landscape beyond, interiors with chair/table/vase, gardens and olive trees, nudes/figures at rest, still lifes, Mediterranean coast.

## Generation workflow

Confirm the essentials only if they change the deliverable: subject/motif, language (cut-outs vs painterly — infer if obvious), size/aspect, and whether it's a single print or a coordinated set. Don't over-ask; motif and mood can be inferred and refined.

**Single print:** one `GenerateImage` call. Default aspect ratio for wall art is portrait (`3:4`) unless the user specifies square (`1:1`) or landscape (`4:3` or `16:9`). Cursor does not support `2:3`; use `3:4` as the portrait default.

**Gallery set (2–6 prints):** this is ONE coordinated series, not independent images. The set must share a visual anchor — same palette family, same motif language, same ground color and texture, same margin treatment. Generate them to hang together: consistent style across the set, with each print varying only the motif/composition. When consistency matters, establish the look with one piece first (or pass a shared reference), then produce the rest against it so they don't each "paint themselves differently."

Build the prompt from the language chosen: name the style ("Matisse-style paper cut-out / papiers découpés" or "Matisse Fauvist painting"), the motif, the flat/painterly treatment, the specific palette, cream ground, hand-made paper/brush texture, and full-bleed artwork with no text or border.

**Text/borders:** omit all typography, signatures, titles, and white margins by default. Only add exhibition-style poster text (e.g. MATISSE / PAPIERS DÉCOUPÉS / venue lines) or a white mat border when the user explicitly asks for a poster/framed-exhibition look.

**Reference images:** when Matisse reference images are supplied, pass them via `reference_image_paths` to anchor style/color/texture — but treat them as style inspiration, never copying a specific composition or famous work. Borrow the language; invent the forms.

### Cursor GenerateImage

Use the Cursor `GenerateImage` tool (not `generate_media`).

1. Choose language A or B.
2. Assemble the prompt from [Prompt building blocks](#prompt-building-blocks); keep the user's subject wording verbatim.
3. Pick 1–3 matching local style anchors from [Reference images](#reference-images-style-anchors--borrow-language-never-copy). Do not pass all of them.
4. Call `GenerateImage` once per print:
   - `description`: the assembled prompt
   - `aspect_ratio`: `3:4` (default wall art), `1:1` (square), `4:3` or `16:9` (landscape)
   - `filename`: `matisse-{motif-slug}.png`
   - `reference_image_paths`: local files from this skill's `references/` directory (and, for later prints in a set, the first generated image)
5. Do not re-embed generated images as Markdown; the client displays them automatically.
6. For a set: generate print 1 first, then pass that file as a shared reference for prints 2–N so palette, ground, and texture stay locked.

## Prompt building blocks

Assemble prompts from these ingredients (adapt to the request; keep user's subject wording verbatim):

**Cut-outs:** "Matisse-style papiers découpés paper cut-out art, flat solid gouache-paper shapes with subtle paper grain and slightly rough hand-cut edges, [motif], bold [colors] on a warm cream/off-white ground, generous negative space, abstract simplified organic forms, no shading or perspective, full-bleed artwork, no text, no border, modern gallery wall art."

**Painterly:** "Matisse-style Fauvist painting, loose expressive brushwork, bright non-naturalistic color, flattened perspective, [scene: open window / interior / garden / figure], [colors], hand-painted edges, warm light, full-bleed artwork, no text, no border, modern fine-art wall print."

For a set, append: "part of a coordinated gallery set, consistent palette, ground, texture and style with the other prints."

## What to avoid

- Reproducing a specific, recognizable Matisse artwork or poster composition — make original forms.
- Photorealism, 3D rendering, glossy gradients, drop shadows, fine digital detail.
- Cluttered, over-detailed scenes; muddy or neon colors; pure-white sterile grounds (unless asked).
- Adding poster text, titles, signatures, or white borders on artwork-only decor requests.
- Letting prints in a set diverge into different palettes/styles.

## Reference images (style anchors — borrow language, never copy)

Local copies live in `references/` next to this skill. Pass **local paths** to `GenerateImage` (`reference_image_paths`). Use URLs only if a copy is missing and must be re-fetched.

**Cut-outs (default decor language)** — pick from:

| File | What to borrow |
|------|----------------|
| `references/blue-nude-cutout.png` | Cobalt silhouette, negative-space contours, cream ground |
| `references/pink-cut-paper-flowers.jpg` | Oversized petals, limited palette, paper grain |
| `references/blue-doves-cutouts.jpg` | Minimal paired animal silhouettes, negative space |
| `references/white-line-florals.jpg` | Layered color fields, contour line |
| `references/red-coral-leaf.jpg` | Bold overlapping organic forms, warm palette |

**Fauvist / painterly** — pick from:

| File | What to borrow |
|------|----------------|
| `references/fauvist-landscape.png` | Loose brushwork, green/coral/purple/blue |
| `references/open-window-interior.png` | Flattened perspective, pink floor, pastel walls |

For assembled prompt examples, see [examples.md](examples.md).

Source URLs (style inspiration only):

- Fauvist landscape with nude among trees: https://assets-persist.lovart.ai/img/95852deb178240e2a4a826d7f099e878/354578c39d8a22db983f42f22370bfb6114939f6.png
- Blue Nude cut-out: https://assets-persist.lovart.ai/img/95852deb178240e2a4a826d7f099e878/64022c801ce4cd35ba840de16a9e6c4f704ad0d1.png
- Open-window interior: https://assets-persist.lovart.ai/img/95852deb178240e2a4a826d7f099e878/ecc4ccca571bea95ebe18d9d42da7254b9da7896.png
- Pink cut-paper flowers: https://assets-persist.lovart.ai/agent_connector/pinterest/e76c24e0e7b38b39/Pin.jpg
- Blue doves cut-outs: https://assets-persist.lovart.ai/agent_connector/pinterest/5ffc5a95727dba4d/Matisse_Blue_Doves___Studio_Selection_Poster.jpg
- White-line florals on hot color blocks: https://assets-persist.lovart.ai/agent_connector/pinterest/2bb03a54a4e0e37c/Matisse_-_Fleurs_blanches.jpg
- Red coral leaf on pink panel: https://assets-persist.lovart.ai/agent_connector/pinterest/7e3331fa81c5a914/Matisse_Musuem_Series_26_-_Rolled_Print___Poster_Paper___12_x_18.jpg
