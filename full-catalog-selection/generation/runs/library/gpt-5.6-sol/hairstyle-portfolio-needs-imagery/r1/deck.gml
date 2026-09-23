<HEAD><style>/* ===================== VOILE — gallery-white wedding portfolio ==================== */
/* Palette lives ONLY in theme fields; author CSS consumes the emitted vars. */

/* ---- Type system: didone display where display type lives (h1/h2/title/display; h3/h4 ride the subheading roleStyle's text face — unlayered author CSS would beat that knob, so the selector stays off them) ---- */
h1.gml-heading, h2.gml-heading, .gml-title, .gml-display { font-family: var(--heading-font); }

/* Notation tier: h4 is the italic-serif side voice (sentence case, muted) */

/* Inline semantic color — recolor = theme edit only */
span.textColor[data-variant='accent'] { color: var(--accent-color); }
span.textColor[data-variant='muted'] { color: var(--body-color-muted); }
.gml-card .section-group { margin-block-start: var(--heading-gap-above); }

/* The vow register: the statement voice — didone italic, sentence case, untracked */
.vow .gml-display, .vow h1.gml-heading, .vow h2.gml-heading { font-style: italic; text-transform: none; letter-spacing: 0; line-height: 1.15; }

/* ---- Canvas: print-album corners are square (NOTES.md: register decision) ---- */
.gml-grid-cell { --cell-radius: 0; }

/* ---- Ornament vocabulary: the letterpress tick (short ink hairline) ---- */
.tick { --divider-color: var(--heading-color); --divider-thickness: 1px; }
.tick.gml-divider { margin: 16pt 0; }
.gml-divider.tick { width: 44pt; }

/* ---- Matted plate: the album mount — pure-white mat, hairline edge, caption below ---- */
.mat .gml-figure { background: var(--surface-color); border: 1px solid var(--neutral-border-color); padding: 8pt; aspect-ratio: 4 / 3; }
.mat .gml-figure__img { width: 100%; height: 100%; object-fit: cover; }
.mat-tall .gml-figure { aspect-ratio: 4 / 5; }
.mat-wide .gml-figure { aspect-ratio: 12 / 5; }

/* ---- Freeform paper folio: purposeful overlap, with its own box inset ---- */
.paper-folio.gml-box, .wall-label.gml-box { border: 1px solid var(--neutral-border-color); box-shadow: none; }
.paper-folio.gml-box { padding: 30pt 34pt; --block-gap: 7pt; }
.wall-label.gml-box { padding: 18pt 22pt; --block-gap: 5pt; }

/* ---- Icon-led field guide: pictograms behave like letterpress marginalia ---- */
.field-guide { --grid-seam-inset: 1.1em; }
.field-guide .gml-cell-label { color: var(--accent-color); justify-content: flex-start; margin-block-end: 8pt; }
.field-guide .gml-icon { width: 30pt; height: 30pt; font-size: 24pt; color: var(--accent-color); }

/* ---- The marque: letterpress studio name / wordmark register ---- */
.marque p.gml-paragraph { font-family: var(--heading-font); text-transform: uppercase; letter-spacing: 0.12em; color: var(--heading-color); }

/* ---- Ledger rows: hairline seams, small-caps lead tokens ---- */
/* Seam density is a theme knob, not per-cell padding: ledger rows sit tighter
   on their rules than the 18pt default (the seam-inset token, per line-facing side). */
.led { --grid-seam-inset: 11.5pt; }
.led p.gml-paragraph b { color: var(--heading-color); font-weight: 600; }
.led p.gml-paragraph i { color: var(--body-color-muted); }

/* Folio tokens. Arabic sequences ride the native number marker (it renumbers on
   reorder); roman folio numerals stay typed in an accent span, since marker
   numbering cannot format romans. Both wear the same letterpress token. */
.numbered .gml-grid-cell__marker { color: var(--accent-color); font-weight: 500; letter-spacing: 0.12em; margin-right: 8pt; }
.numbered p.gml-paragraph > span.textColor[data-variant='accent']:first-child { font-weight: 500; letter-spacing: 0.12em; }

/* ---- Bullets: quiet driftwood en-rule markers ---- */
li.gml-bullet::marker { color: var(--accent-color); content: '\2013\00a0\00a0'; }

/* ---- Prose columns get wider seam clearance (QUALITY-RULES 12b) ---- */
.cols { --grid-seam-inset: 1.1em; }

/* ---- Pull quote: bar hidden, didone italic claim, letterpress attribution ---- */
.gq.gml-blockquote { padding-inline-start: 0; }
.gq.gml-blockquote > .gml-blockquote__bar { display: none; }
.gq p.gml-paragraph { font-family: var(--heading-font); font-style: italic; line-height: 1.35; color: var(--heading-color); }

/* ---- Stat numerals: didone giants, tight leading ---- */
.stat [data-size], .stat .gml-display { line-height: 1; }
.stat h3.gml-heading { letter-spacing: 0.12em; }

/* ---- Tables: hairline ledger, letterpress header over a strong rule ---- */
.gml-table { --table-border-color: var(--neutral-border-color); --table-cell-padding: 10pt 14pt 10pt 2pt; --table-header-color: var(--accent-color); --table-header-weight: 500; --table-radius: 0; }
.gml-table__cell p.gml-paragraph { font-family: var(--body-font); color: var(--body-color); }
.gml-table__row[data-header] .gml-table__cell { letter-spacing: 0.12em; text-transform: uppercase; font-size: calc(10.5 * var(--type-anchor, 1pt)); border-bottom: 1px solid var(--heading-color); }
.metrics .gml-table__cell:last-child { text-align: end; font-variant-numeric: tabular-nums; }
.gml-table__row:last-child .gml-table__cell { border-bottom: var(--table-border-width) solid var(--table-border-color); }
/* Option comparison (voile25): the header row carries didone option names rather
   than the letterpress key, and column 0 is the caption-register attribute rail. */
.albumcmp { --table-header-color: var(--heading-color); --table-header-weight: 400; }
.albumcmp .gml-table__row[data-header] .gml-table__cell { text-transform: none; letter-spacing: 0.01em; font-size: calc(16 * var(--type-anchor, 1pt)); border-bottom: 1px solid var(--neutral-border-color); }
.albumcmp .gml-table__row[data-header] .gml-table__cell p.gml-paragraph { font-family: var(--heading-font); font-style: italic; color: var(--heading-color); }
.albumcmp .gml-table__cell[data-col='0'] { text-transform: uppercase; letter-spacing: 0.12em; font-size: calc(10.5 * var(--type-anchor, 1pt)); }
.albumcmp .gml-table__cell[data-col='0'] p.gml-paragraph { color: var(--body-color-muted); }

/* ---- Running chrome: letterpress folio ---- */
.gml-card__footer { font-family: var(--body-font); font-weight: 500; font-size: calc(10 * var(--type-anchor, 1pt)); letter-spacing: 0.12em; text-transform: uppercase; color: var(--body-color-muted); }
.gml-card__margin-el--page-number { color: var(--accent-color); }

/* ---- The album spread: facing pages of the sewn album (albook/pg register) ---- */
.albook .pg { border: 1px solid var(--neutral-border-color); --cell-default-bg: var(--surface-color); box-shadow: 0 10pt 22pt color-mix(in srgb, var(--heading-color) 13%, transparent); }
.albook .pg-l { border-right: none; box-shadow: inset -14pt 0 16pt -14pt color-mix(in srgb, var(--heading-color) 22%, transparent), 0 10pt 22pt color-mix(in srgb, var(--heading-color) 13%, transparent); }
.albook .pg-r { border-left: none; box-shadow: inset 14pt 0 16pt -14pt color-mix(in srgb, var(--heading-color) 22%, transparent), 0 10pt 22pt color-mix(in srgb, var(--heading-color) 13%, transparent); }
.albook .pg .gml-figure { border: 1px solid var(--neutral-border-color); }

/* ---- Sparse type-led cover (voile33): small proof plate offset high-right ---- */
.voile33 .proof.gml-figure {
  background: var(--surface-color);
  border: 1px solid var(--neutral-border-color);
  padding: 8pt;
  aspect-ratio: 16 / 9;
}
.voile33 .proof .gml-figure__img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.voile33 .place {
  margin-block-start: calc(var(--block-gap) * 0.45);
}

/* ---- Image-free agenda index (voile35): ruled act entries beside a narrow title rail ---- */
/* Act rows sit closer to their hairlines than the 18pt default — seam density is a theme
   knob so the entries' own marginal-numeral columns stay unpadded. */
.acts { --grid-seam-inset: 14pt; }
/* The act title shares its baseline band with the marginal roman in the gutter cell, so it
   sits flush at the top of its column instead of taking the heading's rhythm margin. */
.act-title {
  margin-block-start: 0;
}
.act-copy {
  margin-block-start: calc(var(--block-gap) * 0.4);
}

/* Graphy charts: gallery figures — driftwood lead over sea mist, hairline apparatus, square print-album marks, italic legend */
.gml-chart {
  --gamma-chart-background: transparent;
  --gamma-chart-grid-color: color-mix(in srgb, var(--body-color) 8%, transparent);
  --gamma-chart-grid-dasharray: none;
  --gamma-chart-border-color: transparent;
  --gamma-chart-axis-line-color: transparent;
  --gamma-chart-origin-line-color: color-mix(in srgb, var(--body-color) 35%, transparent);
  --gamma-chart-text-color: var(--body-color-muted);
  --gamma-chart-secondary-text-color: var(--body-color-muted);
  --gamma-chart-legend-background: transparent;
  --gamma-chart-legend-border-color: transparent;
  --gamma-chart-legend-item-background: transparent;
  --gamma-chart-legend-item-border: none;
  --gamma-chart-legend-item-shadow: none;
  --gamma-chart-legend-text-color: var(--body-color);
  --gamma-chart-legend-font-style: italic;
  --gamma-chart-bar-rx: 0;
  --gamma-chart-bar-ry: 0;
  /* Series 5-8: tints of the four voices so long series stay on-register */
  --gamma-chart-line-width: 1.5px;
  --gamma-chart-line-cap: butt;
  --gamma-chart-area-opacity: 0.08;
  --gamma-chart-pie-stroke: var(--card-color);
  --gamma-chart-pie-stroke-width: 1.5px;
}</style></HEAD>
<section image-layout="blank" id="jfO9xFeSZj" card-margin-hidden="true"><grid direction="vertical" spacing="none"><grid-item id="AoYjZ2AxZU" padding="0" rowspan="35"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/DDqZN6Cyz6ngX3ts24Mxx.png" saved-media-id="drdxqymhf1i8olr" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon photograph of a model turning gently in a quiet studio, sculpted hair lifting through soft motion, natural window light, subtle film grain, restrained stone and mineral palette, candid mid-moment framing, no visible text or logos" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"></grid-item><grid-item id="NjWxKITo2P" vertical-align="center" padding="24pt 56pt 28pt 56pt" rowspan="25"><p role="eyebrow">The new shape / concept edit</p><h1 font-size="34pt">Shape, in Motion</h1><p>Six modern hair directions, edited through line, movement and texture. Replace with current salon photography and approved service names before publishing.</p><p role="caption">AI concept imagery — not salon work.</p></grid-item></grid></section>
<section image-layout="blank" id="lwG6jOfYyP"><grid spacing="none"><grid-item id="zK-nU1DbZy" padding="0" colspan="38"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/ze7mHXZ6VYU059uccmtcz.png" saved-media-id="xraes8pusvkax0p" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon portrait in exact side profile, a jaw-length contour bob with a crisp one-line perimeter and subtly mobile ends, natural window light defining the jaw and nape, restrained stone backdrop, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item><grid-item id="HAmUTvXmiX" padding="44pt 42pt 40pt 38pt" colspan="22"><p role="eyebrow">Cut 01</p><spacer mode="fill"></spacer><h1 font-size="29pt">The Contour Bob</h1><hr class="tick"><p>A jaw-length, one-line perimeter sharpens the profile; invisible internal layers keep the ends light. Precision outside, movement within.</p><p role="caption">AI concept imagery — not salon work.</p></grid-item></grid></section>
<section image-layout="blank" id="0uga6_9_na" card-margin-hidden="true"><grid direction="vertical" spacing="none"><grid-item id="KSvw35JiAC" padding="0" rowspan="39"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/JV8IP6kW1i7XnT9Eqd9Yy.png" saved-media-id="v92syz5yx5iffne" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Wide warm ivory-toned fine-art editorial salon photograph of long hair seen three-quarter front, curtain fringe opening precisely at the cheekbones and long face-framing layers flowing into a soft U-shaped length, gentle natural movement, coastal daylight, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"></grid-item><grid-item id="JEO4LeTgZC" vertical-align="center" padding="24pt 56pt 26pt 56pt" rowspan="21"><grid spacing="large"><grid-item id="kK9czVgenr" padding="0" colspan="22"><p role="eyebrow">Cut 02</p><h1 font-size="28pt">The Veil</h1></grid-item><grid-item id="jHHmo9VKlx" vertical-align="center" padding="0" colspan="38"><p>Curtain fringe opens at the cheekbone; long face-framing layers merge into a soft U-shaped length. Fluid, not heavily feathered.</p><p role="caption">AI concept imagery — not salon work.</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="VugzHLZDDm" card-margin-hidden="true"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/AJhjNVRE-Zo58q0FLAk4R.png" saved-media-id="iv1qhcjv7t6yz99" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon photograph of a short air cut in motion, closely tapered nape visible beneath airy separated crown lengths, model turning so individual pieces lift into a shifting silhouette, soft coastal daylight, subtle film grain, generous quiet space at lower left, no visible text or logos" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"><freeform><box type="content" x="42" y="286" w="404" h="216" sizing="fixed" class="wall-label" background-color="surface" style="border-radius: 0;"><p role="eyebrow">Movement 01</p><h2 font-size="25pt">The Air Cut</h2><p>A closely tapered nape supports airy length through the crown. Piece-by-piece separation makes short hair a shifting silhouette, not a fixed crop.</p><p role="caption">AI concept imagery — not salon work.</p></box></freeform></section>
<section image-layout="blank" id="-CfEk6KecH" card-margin-hidden="true"><grid direction="vertical" spacing="none"><grid-item id="7j432Ub-jS" padding="0" rowspan="41"><grid spacing="small"><grid-item id="Q_iBZU_fd8" padding="0" colspan="30"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/jYaBvk1S0TqA3lVP1NMoB.png" saved-media-id="7axy1lsr9j8sbdj" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon portrait from the front, a soft shag with broken fringe and short crown layers separating as the model moves, longer perimeter clearly preserved, natural window light, restrained mineral palette, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"></grid-item><grid-item id="0fodYuoCGY" padding="0" colspan="30"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/857fzv9-t7rku4mx.jpg" saved-media-id="3zbvv6lvp9gg21a" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon photograph from the back and side, a soft shag swinging freely with short crown layers over a visibly longer loose perimeter, candid turning motion, coastal daylight, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1536,&quot;height&quot;:1024}"></grid-item></grid></grid-item><grid-item id="HXb0GCjrRs" vertical-align="center" padding="22pt 52pt 24pt 52pt" rowspan="19"><grid spacing="large"><grid-item id="YCn0-KU4TE" padding="0" colspan="20"><p role="eyebrow">Movement 02</p><h2 font-size="25pt">The Soft Shag</h2></grid-item><grid-item id="hMz7j15rSX" vertical-align="center" padding="0" colspan="30"><p>Short crown layers release movement while a longer perimeter preserves length. A broken fringe keeps the outline light, loose and wearable.</p></grid-item><grid-item id="Et3H92R2Xm" vertical-align="center" padding="0" colspan="10"><p role="caption" align="right">AI concept imagery — not salon work.</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="HMxYiXqkzM"><grid spacing="none"><grid-item id="2A3bGt18Vk" padding="46pt 38pt 40pt 48pt" colspan="22"><p role="eyebrow">Texture 01</p><h1 font-size="31pt">The Halo</h1><hr class="tick"><p>Rounded shaping balances volume around the face; curl-by-curl definition preserves natural variation. The silhouette feels intentional, while the texture stays alive.</p><spacer mode="fill"></spacer><p role="caption">AI concept imagery — not salon work.</p></grid-item><grid-item id="IX-sp4uGaS" padding="0" colspan="38"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/L5_lndjho3YW_ot02VEAx.png" saved-media-id="p28dbh6xcdk7xvg" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon portrait of naturally curly hair shaped into a balanced rounded halo around the face, distinct curl-by-curl variation visible without rigid uniformity, calm direct gaze, soft window light, restrained blush and stone palette, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid></section>
<section image-layout="blank" id="wfdXhTCjM2" card-margin-hidden="true"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/QajEk3PX75geA4NtMPFlX.png" saved-media-id="fk1qp9362b12dqq" source="image.ai-generated" background="true" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon photograph from behind, clean braided sections directing precise lines toward a low sculpted knot while a few softly released ends interrupt the geometry, natural window light, restrained stone studio, subtle film grain, composition weighted left with quiet space at right, no visible text or logos" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"><freeform><box type="content" x="500" y="266" w="414" h="236" sizing="fixed" class="paper-folio" background-color="surface" style="border-radius: 0;"><p role="eyebrow">Texture 02</p><h2 font-size="25pt">The Sculpted Braid</h2><p>Clean sections direct braided lines toward a low knot; softly released ends interrupt the geometry. Structured pattern meets a touchable editorial finish.</p><p role="caption">AI concept imagery — not salon work.</p></box></freeform></section>
<section image-layout="blank" id="PLn2FUSEfV" vertical-align="start"><grid spacing="none"><grid-item id="ZnDONsviz6"><h1 font-size="30pt">Start with One Cue</h1><grid spacing="medium" image-aspect="portrait" image-shape="square" class="section-group"><grid-item id="eLMVP4G2Dw" class="mat mat-tall" padding="0 10pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/s3KAWukCVJzhKgiqfeyc2.png" saved-media-id="xcl6qs2vk5lpa5p" source="image.ai-generated" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon close-up in side profile, attention fixed on a clean haircut perimeter tracing the jaw and neck, natural window light, restrained stone palette, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><p role="caption"><span text-color="accent">Line</span> · Bring the outline.</p></grid-item><grid-item id="IhJlrgTibR" class="mat mat-tall" padding="0 10pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/X7PGlv72ExZhKSPy.jpg" saved-media-id="icadxi9d2ecc7iw" source="image.ai-generated" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon portrait captured mid-turn, layered hair visibly swinging away from the face with light separation, soft coastal daylight, restrained mineral palette, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1024,&quot;height&quot;:1536}"><p role="caption"><span text-color="accent">Movement</span> · Bring the motion.</p></grid-item><grid-item id="ibLrNrujOe" class="mat mat-tall" padding="0 10pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/wxZMKl2AfgJcWjUA4Eqkq.png" saved-media-id="anqf4am11ehyd0l" source="image.ai-generated" image-style="voile-documentary" alt="Warm ivory-toned fine-art editorial salon detail portrait, natural curl pattern and tactile strand definition filling the frame while the face remains softly visible, natural window light, restrained blush and stone palette, subtle film grain, no visible text or logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><p role="caption"><span text-color="accent">Texture</span> · Bring the detail.</p></grid-item></grid><p class="section-group">A stylist can translate one reference into a wearable plan.</p><p role="caption">AI concept imagery — not salon work.</p></grid-item></grid></section>