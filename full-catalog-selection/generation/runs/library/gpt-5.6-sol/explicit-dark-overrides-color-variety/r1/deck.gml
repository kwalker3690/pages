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
<section image-layout="blank" id="MMC_6MCwvK" card-margin-hidden="true"><img class="hero-surface work-color" src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/4UtCMA0ksq6w0OISAAY6F.jpg" saved-media-id="l8onmhcjf0w2l37" source="image.ai-generated" background="true" image-style="reel-abstract" alt="Abstract liquid-glass motion field where a precise black ribbon formation opens into an unpredictable burst of refracted cyan and ember-red light, deep ink shadows across the frame, bold edge crops, broad calm black lower-left region for copy, no typography or logos" meta="{&quot;width&quot;:2560,&quot;height&quot;:1440,&quot;has_transparency&quot;:false}"><grid spacing="none"><grid-item id="E-NeRCsMQV" padding="48pt 54pt 52pt"><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="tEwaFyJbVl" background-color="palette-4" padding="18pt 22pt" colspan="46"><p role="caption" class="mono">Provisional conference topic</p><display size="lg" class="reel-lockup">Make room for<br>the unexpected</display><p>Creative experimentation is not waiting for lightning. It is building conditions where surprise can appear, be recognized, and become useful.</p></grid-item><spacer span="14"></spacer></grid></grid-item></grid></section>
<section image-layout="blank" id="rlQ1nfRaED" card-margin-hidden="true"><grid divider="sm palette-3" spacing="none" class="silver-seam"><grid-item id="idSEZOpQmd" background-color="palette-4" padding="48pt 50pt 44pt" colspan="38"><display size="md" class="reel-lockup">A perfect plan can only deliver what it already knows</display><spacer mode="fill"></spacer><p>Efficiency removes variation. Valuable when the destination is known; dangerous when the destination itself is the question.</p><p><b>The creative paradox:</b> enough structure to act. Enough openness to encounter what we did not prescribe.</p></grid-item><grid-item id="SHGmbJZwT3" background-color="surface" padding="44pt 34pt" colspan="22"><p role="caption" class="mono">Known destination</p><h2>Efficiency protects quality.</h2><spacer mode="fill"></spacer><hr color="palette-3" thickness="sm"><p role="caption" class="mono">Destination unknown</p><h2>Variation creates evidence.</h2></grid-item></grid></section>
<section image-layout="blank" id="g8Jq7KxHpP"><grid spacing="none"><grid-item id="08SDFV8BuP"><h2 class="reel-lockup">Two loops. Two outcomes.</h2><p>Complementary modes—use the loop that matches the certainty of the destination.</p><grid divider="sm palette-3" vertical-sizing="hug" class="silver-seam"><grid-item id="_OPhPRHSwD" padding="18pt 26pt 14pt 0" colspan="30"><h3>Production loop</h3><smart-layout variant="cycle" cell-size="10"><smart-layout-item><h4>Define</h4></smart-layout-item><smart-layout-item><h4>Execute</h4></smart-layout-item><smart-layout-item><h4>Verify</h4></smart-layout-item><smart-layout-item><h4>Repeat</h4></smart-layout-item></smart-layout><p role="caption">Protects quality when the destination is known.</p></grid-item><grid-item id="V7E2NgqJSU" padding="18pt 0 14pt 26pt" colspan="30"><h3>Discovery loop</h3><smart-layout variant="cycle" cell-size="10"><smart-layout-item><h4>Frame</h4></smart-layout-item><smart-layout-item><h4>Vary</h4></smart-layout-item><smart-layout-item><h4>Notice</h4></smart-layout-item><smart-layout-item><h4>Select</h4></smart-layout-item><smart-layout-item><h4>Learn</h4></smart-layout-item></smart-layout><p role="caption">Creates evidence when the destination is not known.</p></grid-item></grid><p class="brk">Confuse them and we get polished sameness—or exploration without consequence.</p></grid-item></grid></section>
<section image-layout="blank" id="xa-P8Gk-38"><grid spacing="none"><grid-item id="Q7cLijrrLk"><h2 class="reel-lockup">Not a brainstorm. A bounded bet.</h2><p>A useful experiment has edges.</p><grid divider="sm palette-3" vertical-sizing="fill" padding="24pt 14pt" class="silver-seam capability-stack"><grid-item id="qaE3P16HBm" border="lg solid" border-sides="top" colspan="12"><h3>Question</h3><p>What are we trying to learn?</p></grid-item><grid-item id="bt8b2SBgAz" border="lg solid" border-sides="top" colspan="12"><h3>Constants</h3><p>What must remain stable?</p></grid-item><grid-item id="SamEyrHt8_" border="lg solid" border-sides="top" colspan="12"><h3>Variable</h3><p>What changes this time?</p></grid-item><grid-item id="ru6XuPT_be" border="lg solid" border-sides="top" colspan="12"><h3>Signal</h3><p>What would make the result worth pursuing?</p></grid-item><grid-item id="BS6b_yLvYr" border="lg solid" border-sides="top" colspan="12"><h3>Stop</h3><p>When will we decide?</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="QwKQE_K5r0"><grid spacing="none"><grid-item id="9KNov6d-jt"><h2 class="reel-lockup">Design the interruption</h2><p>Change one thing strongly enough to create evidence, not noise.</p><diagram template-key="ideas" align="center" width="820pt" height="280pt" data-meta="{&quot;general&quot;:[{&quot;text&quot;:&quot;<h4>One deliberate interruption</h4>&quot;}],&quot;step&quot;:[{&quot;text&quot;:&quot;<h4>Material</h4><p>Translate into another medium</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/mdb.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:576},&quot;query&quot;:&quot;material&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}},{&quot;text&quot;:&quot;<h4>Rule</h4><p>Remove option or add limit</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/scale-balanced.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:640},&quot;query&quot;:&quot;rule&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}},{&quot;text&quot;:&quot;<h4>Perspective</h4><p>Shift discipline, audience, scale</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://staging.gamma.app/api/icons/magnifying-glass.svg?provider=fa&amp;style=light&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:512},&quot;query&quot;:&quot;perspective&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}}]}"></diagram><p role="caption">One interruption at a time keeps the lesson visible.</p></grid-item></grid></section>
<section image-layout="blank" id="y__BgW6_Am" card-margin-hidden="true"><grid divider="sm palette-3" spacing="none" class="silver-seam"><grid-item id="ScF79MX5RV" background-color="palette-4" padding="42pt 34pt 38pt" colspan="21"><display size="xl" class="metric-mono">24</display><h3 role="subheading">departures</h3><spacer mode="fill"></spacer><p role="caption" class="mono">4 rounds · 6 sketches each</p></grid-item><grid-item id="JcfE4d7K9T" padding="38pt 44pt 34pt" colspan="39"><h2 class="reel-lockup">Illustrative example: one brief, 24 departures</h2><p role="caption">Illustrative example—not measured conference data.</p><grid divider="sm palette-3" direction="vertical" vertical-sizing="fill" padding="10pt 0" class="silver-seam"><grid-item id="ahIjX6Y-bZ"><h4>Fixed</h4><p>One six-word brief, monochrome, 30 minutes.</p></grid-item><grid-item id="lfGzy1QsL1"><h4>Variable</h4><p>One rule changed per round.</p></grid-item><grid-item id="Efp8nY-Ani"><h4>Signal</h4><p>Three reviewers mark “surprising” and “usable.”</p></grid-item><grid-item id="8Ir6O69Hf_"><h4>Advance</h4><p>Ideas earning both marks from at least two reviewers.</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="J5hhm-5Yc6"><grid spacing="none"><grid-item id="QCB3vxcUcx"><h2 class="reel-lockup">Open a 72-hour aperture</h2><p>Before the idea becomes precious:</p><grid divider="sm palette-3" marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" padding="20pt 18pt" class="silver-seam number-top" style="--marker-gap: 0.6em;"><grid-item id="IkgLurdpUH" colspan="20"><h3>Today</h3><p>Write one question and name the constants.</p></grid-item><grid-item id="KaAzuoVz8J" colspan="20"><h3>Tomorrow</h3><p>Run three variations with one changed rule.</p></grid-item><grid-item id="mmPB8sqm5i" colspan="20"><h3>Within 72 hours</h3><p>Show two people, record their signals, and choose what continues.</p></grid-item></grid><spacer mode="fill"></spacer><blockquote class="gq"><p font-size="24pt">What did the interruption reveal that the plan concealed?</p></blockquote></grid-item></grid></section>
<section image-layout="blank" id="CGcKqV83Lp" card-margin-hidden="true"><img class="hero-surface work-color" src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/laSSAiS898A-nLmDH8xKz.jpg" saved-media-id="hie72dn9c2r8q3n" source="image.ai-generated" background="true" image-style="reel-cinematic" alt="Cinematic work still of a lone adult figure pushing open a monumental black door in a dark spatial installation, a narrow seam of cyan and ember-red practical light spilling through, figure held near the upper-right edge, reflective floor and broad quiet black lower-left region for copy, no logos or readable text" meta="{&quot;width&quot;:2560,&quot;height&quot;:1440,&quot;has_transparency&quot;:false}"><grid spacing="none"><grid-item id="EcRO1dA_Zv" padding="48pt 54pt 52pt"><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="H6czHF7J6Z" background-color="palette-4" padding="18pt 22pt" colspan="46"><display size="md" class="reel-lockup">Leave a door open</display><h3>Protect the promise. Loosen the route.</h3><p>Make one constraint explicit. Change one variable. Notice what surprises you. Keep what earns its place.</p><hr color="palette-3" thickness="sm"><h3 role="subheading">The unexpected is not the opposite of rigor. It is what rigor can be designed to discover.</h3></grid-item><spacer span="14"></spacer></grid></grid-item></grid></section>