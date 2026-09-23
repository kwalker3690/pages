<HEAD><style>/* ============ blackwork — ink-black show reel. Palette lives in theme fields only. ============ */
.gml-card {
  --mono: var(--label-font);
  --hair: var(--neutral-border-color);
  --plate-shadow: color-mix(in srgb, var(--heading-color) 8%, transparent);
}

/* Structural geometry stays square; images become trim-filling work surfaces rather than mounted artifacts. */
.gml-grid-cell { --cell-radius: 0; }

/* Signature sheet: one dominant move per working card, up to two on covers and dividers. */
.hero-surface .gml-figure,
.hero-surface .gml-figure__img,
.hero-surface img { border-radius: 0; object-fit: cover; }
.reel-lockup .gml-display,
.reel-lockup.gml-display { letter-spacing: -0.035em; line-height: 1.02; text-wrap: balance; }
.metric-mono.gml-display { font-family: var(--mono); font-weight: 400; letter-spacing: -0.06em; line-height: 0.95; }
.contact-sheet { --grid-divider-color: var(--card-color); --grid-divider-width: 3pt; --grid-seam-inset: 0; }
.contact-sheet .gml-grid-cell { --cell-radius: 0; }
.contact-sheet .gml-figure__img,
.contact-sheet img { aspect-ratio: 16 / 9; object-fit: cover; border-radius: 0; }
.credit-rail { font-family: var(--mono); border-left: 1px solid var(--hair); }
.credit-rail .gml-paragraph,
.credit-rail p { font-family: var(--mono); }
.silver-seam { --grid-divider-color: var(--hair); --grid-divider-width: 1px; --grid-seam-inset: 1em; }
.work-color .gml-figure__img,
.work-color img { border-radius: 0; }

/* Inline semantic voices. accent = ink (pair it with a real <u> mark for the index underline, the template's signature device, dose: at most one per card); muted = calm gray. */
span.textColor[data-variant='accent'] { color: var(--accent-color); }
/* The index underline itself is the editable underline mark, not decoration on the color span. */
u { text-decoration-thickness: 0.04em; text-underline-offset: 0.19em; text-decoration-color: color-mix(in srgb, currentColor 55%, transparent); }
span.textColor[data-variant='muted'] { color: var(--body-color-muted); }

/* ============ Data voice: monospace strictly for data (years, stats, folios, filters) ============ */
/* Mono register: class="mono" on the node (works from the wrapper or the content element). */
.mono > .gml-paragraph, p.mono, .mono p,
h1.mono, h2.mono, h3.mono, h4.mono,
.mono h1, .mono h2, .mono h3, .mono h4,
.mono > .gml-heading { font-family: var(--mono); }

/* Stat register: mono numerals over quiet captions; whitespace separation, no rules. */
.stat .gml-display, .stat [data-size], .stat h2, .stat h3 { font-family: var(--mono); font-weight: 500; letter-spacing: -0.02em; line-height: 1.05; }
.stat .gml-paragraph[data-role='caption'] { color: var(--body-color-muted); }

/* Pair hug: a caption/gloss that belongs to the block above it (rule 12b) */
.cap { margin-block-start: calc(var(--block-gap, 13pt) * 0.4); }
/* Stat figures are tight-leaded (1.05): descenders paint outside the line box, so the gloss needs real air (T4 figure-hug). Grid cells scale --block-gap to 0.55x, hence the pt floor. */
.stat .cap { margin-block-start: max(calc(var(--block-gap, 13pt) * 0.4), 12pt); }
/* Group break: a commentary graf that must not melt into the prose above it (T4 — the cell-scaled beat sits under the wrapped-row threshold) */
.brk { margin-block-start: max(var(--block-gap, 13pt), 10.5pt); }

/* Ghost numeral voice for dividers/agenda: oversized mono, stone gray */
.folio h1, .folio h2, .folio h3, h1.folio, h2.folio, h3.folio,
.gml-display.folio, .folio [data-size] { font-family: var(--mono); font-weight: 400; letter-spacing: -0.04em; line-height: 1.3; color: var(--palette-3); }

/* Derived index numerals (auto-renumbering markers) on the contents grid (class="idx" on the grid). */
.idx .gml-grid-cell { --marker-color: var(--body-color-muted); --marker-font-size: calc(17 * var(--type-anchor, 1pt)); --marker-font-weight: 400; }
.idx .gml-grid-cell__marker { font-family: var(--mono); margin-right: 10pt; }

/* Ghost section numerals above each contents column (class="acts" on the grid): the folio voice, marker-driven so the strip renumbers itself. */
.acts .gml-grid-cell { --marker-color: var(--palette-3); --marker-font-size: calc(34 * var(--type-anchor, 1pt)); --marker-font-weight: 400; }
.acts .gml-grid-cell__marker { font-family: var(--mono); letter-spacing: -0.04em; line-height: 1.3; }
/* Two extra beats between the contents heading and the strip (the recipe's heading-to-grid channel; additive over
   the native rhythm) — the marker band carries no block inset of its own, so the channel is the theme's to hold. */
.acts { margin-block-start: calc(var(--block-gap, 13pt) * 2); }

/* Question set on the agenda spread (class="qset"): mono index numerals, marker-driven, seams instead of hand-spaced rules. */
.qset { --grid-divider-color: var(--hair); --grid-divider-width: 1px; --grid-seam-inset: 13pt; }
.qset .gml-grid-cell { --marker-color: var(--body-color-muted); --marker-font-size: calc(17.5 * var(--type-anchor, 1pt)); --marker-font-weight: 400; }
.qset .gml-grid-cell__marker { font-family: var(--mono); margin-right: 8pt; }

/* ============ Labels: pills + the square black CTA ============ */
.gml-label { border-radius: 999px; }
.gml-label[data-variant='outline'] { outline-color: var(--hair); color: var(--body-color); }
.gml-label[data-variant='solid'] { background: var(--accent-color); color: var(--palette-4); }
.gml-label[data-variant='plain'] { color: var(--body-color-muted); }
/* CTA: square-shouldered black button (class="btn" on the solid label) */
.btn.gml-label { border-radius: 0; padding: 8pt 14pt; }

/* ============ Seams & ledgers ============ */
/* Seam clearance is a theme knob, not card padding: the renderer insets every unpainted cell from its own
   line-facing sides, so cards author no per-cell gutter padding. Prose columns beside a rule breathe wider
   than ledger rows (rule 12b seam clearance). */
.cols { --grid-divider-color: var(--hair); --grid-divider-width: 1px; --grid-seam-inset: 1.15em; }
.led { --grid-divider-color: var(--hair); --grid-divider-width: 1px; --grid-seam-inset: 0.6em; }
.proof-stack { --grid-divider-color: var(--hair); --grid-divider-width: 1px; --grid-seam-inset: 9pt; }
.gloss, .proof-copy { margin-block-start: calc(var(--block-gap, 13pt) * 0.45); }

/* Sharp editorial cards: hairline-bordered square cells (capabilities, tiers). CSS paint is invisible to the
   renderer, so every .cards cell authors its own even options.padding in the same change. */
/* Opaque black box over photography: the box owns its pt padding and hugs its copy. */
.overlay-paper.gml-box { padding: 18pt 20pt; --block-gap: 6pt; }
.overlay-paper.gml-box { border-radius: 0; box-shadow: 0 6pt 18pt var(--plate-shadow); }

/* ============ Work surfaces: square, flush, and unframed ============ */
.plates .gml-grid-cell { box-shadow: none; --cell-default-bg: var(--surface-color); --cell-radius: 0; }
.gallery-deep .gml-figure, .gallery-deep .gml-figure__img { aspect-ratio: 16 / 9; }
.gallery-deep .gml-figure__img { object-fit: cover; width: 100%; border-radius: 0; }

/* ============ Table: hairline project-index register ============ */
.gml-table { --table-border-color: var(--hair); --table-border-width: 1px; --table-header-bg: transparent; --table-header-color: var(--body-color-muted); --table-header-weight: 400; --table-stripe-bg: transparent; --table-radius: 0; --table-cell-padding: 8pt 10pt; }
.gml-table__row[data-header] .gml-table__cell { font-family: var(--mono); font-size: calc(10.5 * var(--type-anchor, 1pt)); letter-spacing: 0.02em; }
.gml-table { border: none; }
.yearcol .gml-table__cell[data-col='0'] { font-family: var(--mono); color: var(--body-color-muted); }

/* ============ Lists ============ */
li.gml-bullet::marker { content: '—\00a0\00a0'; color: var(--body-color-muted); }
li.gml-bullet.tick::marker, li.gml-bullet.tick::marker { content: '✓\00a0\00a0'; color: var(--heading-color); }

/* ============ Blockquote: bar off, bare grotesk pull quote ============ */
.gq.gml-blockquote > .gml-blockquote__bar { display: none; }
.gq.gml-blockquote { padding-inline-start: 0; }
/* The pull quote is display-adjacent type: leading tighter than body (T5) */
.gq.gml-blockquote p, .gq.gml-blockquote .gml-paragraph { line-height: 1.24; }

/* ============ Charts: quiet ink-on-paper, tabular numerals ============ */
.gml-card .gml-chart text { font-variant-numeric: tabular-nums; }

/* Graphy charts: studio-book figures — ink lead over graphite and stone, mono labels, square marks, no furniture */
.gml-chart {
  --gamma-chart-background: transparent;
  --gamma-chart-grid-color: transparent;
  --gamma-chart-border-color: transparent;
  --gamma-chart-axis-line-color: color-mix(in srgb, var(--body-color) 40%, transparent);
  --gamma-chart-origin-line-color: color-mix(in srgb, var(--body-color) 40%, transparent);
  --gamma-chart-font-family: var(--label-font);
  --gamma-chart-text-color: var(--body-color-muted);
  --gamma-chart-secondary-text-color: var(--body-color-muted);
  --gamma-chart-legend-background: transparent;
  --gamma-chart-legend-border-color: transparent;
  --gamma-chart-legend-item-background: transparent;
  --gamma-chart-legend-item-border: none;
  --gamma-chart-legend-item-shadow: none;
  --gamma-chart-legend-text-color: var(--heading-color);
  --gamma-chart-bar-rx: 0;
  --gamma-chart-bar-ry: 0;
  /* Series 5-8: tints of the four voices so long series stay on-register */
  --gamma-chart-line-width: 1.25px;
  --gamma-chart-line-cap: butt;
  --gamma-chart-area-opacity: 0.06;
  --gamma-chart-pie-stroke: var(--card-color);
  --gamma-chart-pie-stroke-width: 1.5px;
}

/* Rev 1: chrome-free reel. Mono survives only as evidence, not eyebrows or running furniture. */
.mono, .mono .gml-paragraph, p.mono, h2.mono, h3.mono, h4.mono { font-family: var(--mono); }
.number-top .gml-grid-cell__marker { align-self: flex-start; margin-top: 0; }
.capability-stack h3 { font-size: calc(28 * var(--type-anchor, 1pt)); font-weight: 600; line-height: 1.05; letter-spacing: -0.025em; }
.project-index .gml-table__row[data-header] .gml-table__cell { font-family: var(--body-font); font-size: calc(13.5 * var(--type-anchor, 1pt)); font-weight: 600; letter-spacing: 0; color: var(--heading-color); }
.project-index-strip .gml-grid-cell { padding-top: 8pt; }

.index-code { margin-block-start: 10pt; }</style></HEAD>
<section image-layout="blank" id="MMC_6MCwvK" background-overlay="tint" background-overlay-intensity="0.42" card-margin-hidden="true"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/MkAPKc0dypOjqMMMMMOFS.jpg" saved-media-id="zk338t233moleyy" source="image.ai-generated" background="true" image-style="reel-abstract" alt="Dark cinematic abstract stage dominated by matte black negative space, with one narrow vertical aperture near the right edge releasing refracted cyan and ember-red light, subtle afterimage traces diverging from the opening, restrained liquid-glass highlights only around the aperture, broad quiet black lower-left field for keynote copy, dramatic editorial lighting, no people, no doors, no typography, no logos" meta="{&quot;width&quot;:2560,&quot;height&quot;:1440,&quot;has_transparency&quot;:false}"><grid spacing="none"><grid-item id="DrkfBzn3AP" padding="48pt 56pt 52pt"><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="kaYC9_vfvd" colspan="39"><display size="lg" class="reel-lockup">Make room for<br>the unexpected<br></display><p font-size="19pt">Creative experimentation is not waiting for lightning. It is building conditions where surprise can appear, be recognized, and become useful.</p></grid-item><spacer span="21"></spacer></grid></grid-item></grid></section>
<section image-layout="blank" id="rlQ1nfRaED" card-margin-hidden="true"><grid divider="sm palette-3" spacing="none" class="silver-seam"><grid-item id="idSEZOpQmd" background-color="palette-4" padding="48pt 50pt 44pt" colspan="38"><display size="md" class="reel-lockup">A perfect plan can only deliver what it already knows</display><spacer mode="fill"></spacer><p font-size="18pt">Standardized execution reduces variation. Valuable when the destination is known; dangerous when the destination itself is the question.</p><p font-size="18pt"><b>The creative paradox:</b> enough structure to act. Enough openness to encounter what we did not prescribe.</p></grid-item><grid-item id="SHGmbJZwT3" background-color="surface" padding="44pt 34pt" colspan="22"><p font-size="14pt" role="caption">Known destination</p><h2 font-size="24pt">Efficiency protects quality.</h2><spacer mode="fill"></spacer><hr color="palette-3" thickness="sm"><p font-size="14pt" role="caption">Destination unknown</p><h2 font-size="24pt">Variation creates evidence.</h2></grid-item></grid></section>
<section image-layout="blank" id="g8Jq7KxHpP"><grid spacing="none"><grid-item id="08SDFV8BuP"><h2 class="reel-lockup">Two loops. Two outcomes.</h2><p font-size="18pt">Choose the loop that matches how certain the destination is.</p><grid divider="sm palette-3" vertical-sizing="hug" class="silver-seam"><grid-item id="_OPhPRHSwD" padding="18pt 26pt 14pt 0" colspan="30"><labels><label variant="outline">KNOWN DESTINATION</label></labels><h3 font-size="21pt">Production loop</h3><smart-layout variant="cycle" cell-size="10"><smart-layout-item><h4 font-size="18pt">Define</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Execute</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Verify</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Repeat</h4></smart-layout-item></smart-layout><p font-size="18pt"><b>Protects repeatable quality.</b></p></grid-item><grid-item id="V7E2NgqJSU" padding="18pt 0 14pt 26pt" colspan="30"><labels><label variant="outline">DESTINATION UNKNOWN</label></labels><h3 font-size="21pt">Discovery loop</h3><smart-layout variant="cycle" cell-size="10"><smart-layout-item><h4 font-size="18pt">Frame</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Vary</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Notice</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Select</h4></smart-layout-item><smart-layout-item><h4 font-size="18pt">Learn</h4></smart-layout-item></smart-layout><p font-size="18pt"><b>Creates evidence for the next move.</b></p></grid-item></grid><p font-size="20pt" class="brk">Confuse the loops and we get polished sameness—or exploration without consequence.</p></grid-item></grid></section>
<section image-layout="blank" id="xa-P8Gk-38"><grid spacing="none"><grid-item id="Q7cLijrrLk"><h2 class="reel-lockup">Not a brainstorm. A bounded bet.</h2><p font-size="18pt">A useful experiment has edges. Here is the illustrative brief used on the next slide.</p><grid divider="sm palette-3" marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="fill" padding="20pt 14pt" class="silver-seam number-top" style="--marker-gap: 0.6em;"><grid-item id="VcF3R_twvY" colspan="12"><h3 font-size="21pt">Question</h3><p font-size="16pt" role="caption">What are we trying to learn?</p><spacer mode="fill"></spacer><labels><label variant="plain">ILLUSTRATIVE</label></labels><p font-size="18pt">Can a six-word brief produce a direction worth keeping?</p></grid-item><grid-item id="-nnxpSSha6" colspan="12"><h3 font-size="21pt">Constants</h3><p font-size="16pt" role="caption">What remains stable?</p><spacer mode="fill"></spacer><labels><label variant="plain">HOLD</label></labels><p font-size="18pt">Same brief, monochrome, 30 minutes.</p></grid-item><grid-item id="lltH9mCc86" colspan="12"><h3 font-size="21pt">Variable</h3><p font-size="16pt" role="caption">What changes this time?</p><spacer mode="fill"></spacer><labels><label variant="plain">CHANGE</label></labels><p font-size="18pt">One translation rule per round.</p></grid-item><grid-item id="WF8gn-D_4B" colspan="12"><h3 font-size="21pt">Signal</h3><p font-size="16pt" role="caption">What earns attention?</p><spacer mode="fill"></spacer><labels><label variant="plain">NOTICE</label></labels><p font-size="18pt">At least two reviewers mark both “surprising” and “usable.”</p></grid-item><grid-item id="M48Z1LWrKe" colspan="12"><h3 font-size="21pt">Stop</h3><p font-size="16pt" role="caption">When do we decide?</p><spacer mode="fill"></spacer><labels><label variant="plain">DECIDE</label></labels><p font-size="18pt">After four rounds: advance or archive.</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="QwKQE_K5r0"><grid divider="sm palette-3" spacing="none" class="silver-seam"><grid-item id="r_3OB0CWPC" background-color="palette-4" padding="48pt 38pt 42pt" colspan="22"><h2 class="reel-lockup">Design the interruption</h2><p font-size="18pt">Change one thing strongly enough to create evidence, not noise.</p><spacer mode="fill"></spacer><labels><label variant="outline">ONE CHANGE ONLY</label></labels><p font-size="20pt"><b>Material</b>, <b>rule</b>, or <b>perspective</b> can disturb the pattern while the rest of the experiment stays legible.</p><p font-size="15pt" role="caption">One interruption at a time keeps the lesson visible.</p></grid-item><grid-item id="TGECZdURqf" background-color="surface" vertical-align="center" padding="34pt 28pt" colspan="38"><diagram template-key="inputs" align="center" width="500pt" height="350pt" data-meta="{&quot;general&quot;:[{&quot;text&quot;:&quot;<h4>Visible learning</h4>&quot;}],&quot;step&quot;:[{&quot;text&quot;:&quot;<h4>Material</h4><p>Translate idea to another medium</p>&quot;},{&quot;text&quot;:&quot;<h4>Rule</h4><p>Remove option or add a limit</p>&quot;},{&quot;text&quot;:&quot;<h4>Perspective</h4><p>Shift discipline, audience, or scale</p>&quot;}]}"></diagram></grid-item></grid></section>
<section image-layout="blank" id="y__BgW6_Am" card-margin-hidden="true"><grid divider="sm palette-3" spacing="none" class="silver-seam"><grid-item id="KhOqGEd3xh" background-color="palette-4" padding="34pt 34pt 30pt" colspan="34"><p font-size="14pt" role="caption">ILLUSTRATIVE GENERATION PLAN</p><display size="lg" class="metric-mono">24</display><h3 font-size="20pt" role="subheading">departures = 4 rounds × 6 sketches</h3><grid direction="vertical" spacing="small" vertical-sizing="hug"><grid-item id="O_buPHbZX_"><grid spacing="small" vertical-sizing="hug"><grid-item id="NIxIiHJOMV" colspan="12"><h4 font-size="16pt">R1 · BASE</h4></grid-item><grid-item id="mtzUk1L3Gw" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">1</p></grid-item><grid-item id="uZmvRLKVFV" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">2</p></grid-item><grid-item id="P0X_Eh06xI" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">3</p></grid-item><grid-item id="E4yVCKlD_j" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">4</p></grid-item><grid-item id="GxtpSqA_-_" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">5</p></grid-item><grid-item id="O7GDOZW6tT" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">6</p></grid-item></grid></grid-item><grid-item id="ync67WPty-"><grid spacing="small" vertical-sizing="hug"><grid-item id="zplnYtBKtw" colspan="12"><h4 font-size="16pt">R2 · MATERIAL</h4></grid-item><grid-item id="kTH0NyPQxO" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">1</p></grid-item><grid-item id="bn4VIwINNe" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">2</p></grid-item><grid-item id="8J2GP3ncjD" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">3</p></grid-item><grid-item id="lUC7S4MrDA" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">4</p></grid-item><grid-item id="wErv3aUYUs" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">5</p></grid-item><grid-item id="xewzLP0b2T" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">6</p></grid-item></grid></grid-item><grid-item id="oiWZrwHoUs"><grid spacing="small" vertical-sizing="hug"><grid-item id="Dmxj4bGRGk" colspan="12"><h4 font-size="16pt">R3 · RULE</h4></grid-item><grid-item id="Z7IB_RZjNi" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">1</p></grid-item><grid-item id="Gxn2gkXKot" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">2</p></grid-item><grid-item id="eZ7S73vuK0" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">3</p></grid-item><grid-item id="2jcdbySG6M" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">4</p></grid-item><grid-item id="nyYxMwgHVC" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">5</p></grid-item><grid-item id="L4b1avgOLs" cell-style="outline" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">6</p></grid-item></grid></grid-item><grid-item id="qWWUQ3tVRm"><grid spacing="small" vertical-sizing="hug"><grid-item id="or3bxR11hO" colspan="12"><h4 font-size="16pt">R4 · VIEW</h4></grid-item><grid-item id="CFabjF6Ek-" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">1</p></grid-item><grid-item id="BwW2fzUJuq" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">2</p></grid-item><grid-item id="oWPrHjsV5Z" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">3</p></grid-item><grid-item id="xKsxG-R4_c" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">4</p></grid-item><grid-item id="0VxoynH25b" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">5</p></grid-item><grid-item id="ACY3bWx79t" cell-style="subtle" padding="7pt 0" colspan="8"><p font-size="16pt" align="center">6</p></grid-item></grid></grid-item></grid><p font-size="14pt" role="caption">Illustrative example—not measured conference data.</p></grid-item><grid-item id="xYdM0B6d6S" padding="38pt 38pt 34pt" colspan="26"><h2 class="reel-lockup">How the example works</h2><grid divider="sm palette-3" direction="vertical" vertical-sizing="fill" padding="10pt 0" class="silver-seam"><grid-item id="HxJnnVuUHm"><h4 font-size="16pt">FIXED</h4><p font-size="18pt">One six-word brief, monochrome, 30 minutes.</p></grid-item><grid-item id="mbDcO8OzP8"><h4 font-size="16pt">VARIABLE</h4><p font-size="18pt">One rule changes in each round.</p></grid-item><grid-item id="aSKy8pjr4U"><h4 font-size="16pt">SIGNAL</h4><p font-size="18pt">Three reviewers mark “surprising” and “usable.”</p></grid-item><grid-item id="x1iD_Xo7kw"><h4 font-size="16pt">ADVANCE</h4><p font-size="18pt">Both marks from at least two reviewers.</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="J5hhm-5Yc6"><grid spacing="none"><grid-item id="QCB3vxcUcx"><h2 class="reel-lockup">Open a 72-hour aperture</h2><p font-size="18pt">Before the idea becomes precious:</p><grid divider="sm palette-3" marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" padding="20pt 18pt" class="silver-seam number-top" style="--marker-gap: 0.6em;"><grid-item id="IkgLurdpUH" colspan="20"><h3 font-size="21pt">Today</h3><p font-size="18pt">Write one question and name the constants.</p></grid-item><grid-item id="KaAzuoVz8J" colspan="20"><h3 font-size="21pt">Tomorrow</h3><p font-size="18pt">Run three variations with one changed rule.</p></grid-item><grid-item id="mmPB8sqm5i" colspan="20"><h3 font-size="21pt">Within 72 hours</h3><p font-size="18pt">Show two people, record their signals, and choose what continues.</p></grid-item></grid><spacer mode="fill"></spacer><blockquote class="gq"><p font-size="28pt">What did the interruption reveal that the plan concealed?</p></blockquote></grid-item></grid></section>
<section image-layout="blank" id="CGcKqV83Lp" background-overlay="tint" background-overlay-intensity="0.5" card-margin-hidden="true"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/KdeEEuo0r5sjQi-5zTmcx.jpg" saved-media-id="b3qvuulbnndoy4y" source="image.ai-generated" background="true" image-style="reel-cinematic" alt="Cinematic black spatial installation with no literal door and no people, a narrow vertical aperture of cyan and ember-red practical light near the right edge, several faint afterimage traces spreading into darkness then resolving into one clear beam, reflective black floor, broad calm negative space across the left half for keynote copy, premium editorial photography, deep contrast, no typography, logos, screens, or interface elements" meta="{&quot;width&quot;:2560,&quot;height&quot;:1440,&quot;has_transparency&quot;:false}"><grid spacing="none"><grid-item id="4eINW964_U" padding="48pt 54pt 50pt" colspan="39"><spacer mode="fill"></spacer><p font-size="14pt" role="caption">ONE PRACTICE TO TAKE HOME</p><display size="md" class="reel-lockup">Protect the promise.<br>Loosen the route.</display><p font-size="20pt"><b>Name the question.</b> Hold the constants. Change one variable. Choose from evidence.</p><hr color="palette-3" thickness="sm"><h3 font-size="20pt" role="subheading">The unexpected is not the opposite of rigor. It is what rigor can be designed to discover.</h3><spacer mode="fill"></spacer></grid-item><spacer span="21"></spacer></grid></section>