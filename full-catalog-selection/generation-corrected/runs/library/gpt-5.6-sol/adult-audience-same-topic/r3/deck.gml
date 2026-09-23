<HEAD><style>/* Verdict — "Evidence and Recommendations" page treatment sheet.
   Analytical readout as modern editorial design: stone paper, one hairline grammar (horizontal
   only), one accent that means "the conclusion / the deciding evidence", a mono cross-reference
   voice for exhibit numbers and source lines. Palette-var only; every visible line is 0.75pt except
   the 3pt verdict rule. */

.gml-card {
  --ink: var(--palette-ink);
  --paper: var(--palette-paper);
  --plate: var(--palette-plate);
  --graphite: var(--palette-graphite);
  --rule: var(--palette-rule);
  --tint: var(--palette-tint);
  /* Chart series: the focal series is always the accent; comparisons sit in graphite. Charts read
     these through native config appearance.customSeriesColors. */
  --series-1: var(--accent-color);
  --series-2: var(--palette-series-two);
  --series-3: var(--palette-series-three);
  --hairline: 0.75pt;
  /* Move 4 — ledger rules: every seam, table rule, and <hr> is one hairline in the rule colour. */
  --grid-divider-width: var(--hairline);
  --grid-divider-color: var(--palette-rule);
  --divider-thickness: var(--hairline);
  --divider-color: var(--palette-rule);
  --cell-radius: 0;
  --table-radius: 0;
}

/* ─── Move 1 — action title ─────────────────────────────────────────────────────────────────── */
/* The H1 (or H2 on a working card) states the card's conclusion as a full sentence in one fixed
   title zone; a balanced rag keeps a two-line title from orphaning a word. */
.claim.gml-heading,
.claim .gml-heading,
.claim .gml-display,
.claim.gml-display { text-wrap: balance; }
.claim.gml-heading { max-width: 700pt; }

/* ─── Move 2 — verdict plate ────────────────────────────────────────────────────────────────── */
/* The card's synthesis: a nested hug grid whose single cell carries the 3pt accent rule on its
   left edge (the cell's own `border="3pt solid var(--accent-color)" border-sides="left"`) and a
   bold one- or two-line H4. Dense cards paint the cell `background-color="palette-7"` (tint).
   At most one per card. */
.verdict.gml-grid-cell > .gml-grid-cell__content { --block-gap: 4pt; }
.verdict .gml-heading { text-wrap: balance; }

/* ─── Move 3 — exhibit label ────────────────────────────────────────────────────────────────── */
/* Mono uppercase `EXHIBIT n · TITLE` over every chart, table, or plate, sitting under a hairline
   that closes the title zone. The deck's citation system: later cards cite exhibits by number. */
.exhibit.gml-paragraph {
  border-top: var(--hairline) solid var(--rule);
  padding-top: 8pt;
}

/* ─── Move 4 — ledger (tables and ruled row grids) ──────────────────────────────────────────── */
.ledger.gml-table,
.ledger .gml-table {
  --table-border-color: var(--rule);
  --table-border-width: var(--hairline);
  --table-header-bg: transparent;
  --table-header-color: var(--body-color-muted);
  --table-header-font: var(--eyebrow-font);
  --table-header-weight: 400;
  --table-cell-padding: 9pt 12pt 9pt 0;
  font-variant-numeric: tabular-nums lining-nums;
}
.ledger .gml-table__row[data-header] .gml-table__cell {
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-size: 11pt;
}
.ledger .gml-table__row:last-child .gml-table__cell {
  border-bottom: var(--table-border-width) solid var(--table-border-color);
}
/* Numeric ledgers right-align every column after the label column. */
.numeric .gml-table__cell:not([data-col='0']) { text-align: end; }
/* Scorecard matrix: centred score cells; the dot run tracks open so the five marks read as five. */
.matrix .gml-table__cell:not([data-col='0']) { text-align: center; letter-spacing: 0.14em; }
/* Ruled row grids (agenda, risks, findings): seam clearance and the inline marker channel. */
.ledger.gml-grid {
  --grid-seam-inset: 14pt;
  --marker-color: var(--accent-color);
  --marker-bg: transparent;
  --marker-subtle-bg: transparent;
  --marker-border-width: 0;
  --marker-font-size: 14pt;
  --marker-font-weight: 600;
  --marker-size: 26pt;
  --marker-inline-size: 30pt;
  --marker-gap: 12pt;
}
.ledger .gml-grid-cell__marker { font-family: var(--eyebrow-font); }

/* ─── Move 5 — figure as object ─────────────────────────────────────────────────────────────── */
/* Headline figures on <display> nodes with a mono caption beneath; digits stack. */
.metric .gml-display,
.metric.gml-display {
  font-variant-numeric: tabular-nums lining-nums;
  line-height: 1;
}
.metric.gml-grid-cell > .gml-grid-cell__content { --block-gap: 6pt; }
/* Delta chip: the accent change label beside or under a figure (`<labels class="delta">`). */
.delta.gml-label-group {
  --label-font-size: 13pt;
  --label-pad-inline: 0.6em;
  --label-pad-block: 0.3em;
}
.delta .gml-label { border-radius: 0; }

/* ─── Move 6 — source line ──────────────────────────────────────────────────────────────────── */
/* `<p role="caption" class="source">` pinned to the card foot above a hairline: 12pt mono
   uppercase, muted — never smaller, never omitted where data appears. */
.source.gml-paragraph {
  font-family: var(--eyebrow-font);
  text-transform: uppercase;
  letter-spacing: 0.06em;
  border-top: var(--hairline) solid var(--rule);
  padding-top: 8pt;
}

/* ─── Move 7 — ink flip ─────────────────────────────────────────────────────────────────────── */
/* Verdict moments reverse to the ink ground: the root cell is painted `background-color="palette-2"`
   (derived paper type). Rules on ink step down to graphite so they read as seams, not stripes. */
.flip.gml-grid-cell {
  --rule: var(--graphite);
  --grid-divider-color: var(--graphite);
  --divider-color: var(--graphite);
  --table-border-color: var(--graphite);
}
/* Ledger markers on the reversed ground take the accent tint (palette-7), the same reviewed pair
   the exhibit references use: light on ink in the paper skin, deep on the light panel when a dark
   skin inverts the flip. */
.flip .ledger.gml-grid { --marker-color: var(--tint); }

/* ─── Move 8 — severity tick ────────────────────────────────────────────────────────────────── */
/* One accent at three fill densities as the severity / status system: `<labels class="tick">` with
   `variant="solid"` (high), `"outline"` (medium), `"plain"` (low). Square corners, mono. */
.tick.gml-label-group {
  --label-font-size: 11pt;
  --label-pad-inline: 0.7em;
  --label-pad-block: 0.3em;
}
.tick .gml-label { border-radius: 0; }
/* High = the renderer's solid chip (accent tint fill, body ink); medium keeps the accent outline;
   low is plain. The three densities are the only severity code — no hue. */

/* ─── Registers — rhythm, never ink ─────────────────────────────────────────────────────────── */
/* Commentary rail beside a chart: numbered mono callouts, tight interior rhythm. */
.rail.gml-grid {
  --marker-color: var(--accent-color);
  --marker-bg: transparent;
  --marker-subtle-bg: transparent;
  --marker-border-width: 0;
  --marker-font-size: 14pt;
  --marker-font-weight: 600;
  --marker-size: 24pt;
  --marker-inline-size: 28pt;
  --marker-gap: 10pt;
}
.rail .gml-grid-cell__marker { font-family: var(--eyebrow-font); }
.rail.gml-grid .gml-grid-cell > .gml-grid-cell__content { --block-gap: 4pt; }
/* Agenda rows: larger mono ordinals in a wider gutter. */
.toc.gml-grid {
  --marker-font-size: 18pt;
  --marker-size: 30pt;
  --marker-inline-size: 40pt;
  --marker-gap: 14pt;
}
/* Prose: reading rhythm. */
.prose p.gml-paragraph { line-height: 1.45; }
/* Evidence plate interior rhythm (chart or table cells). */
.evidence.gml-grid-cell > .gml-grid-cell__content { --block-gap: 8pt; }
/* Cover meta line: mono uppercase run under a cover or divider title. */
.cover-meta.gml-paragraph {
  font-family: var(--eyebrow-font);
  text-transform: uppercase;
  letter-spacing: 0.08em;
  border-bottom: var(--hairline) solid var(--rule);
  padding-bottom: 10pt;
}
/* Photo plate: squared corners on every image, bled or matted. */
.plate .gml-figure__img,
.plate.gml-figure__img,
.plate .gml-figure { --figure-radius: 0; border-radius: 0; }
/* A caption under a plate keeps a clear line of air from the image crop. */
.plate.gml-grid .gml-grid-cell > .gml-grid-cell__content { --block-gap: 16pt; --heading-gap-above: 16pt; }
/* Roster (people): the name, role, and remit under each portrait hug as one unit (8pt) while the
   portrait keeps its line of air, so the gutter between profiles reads wider than the stack inside. */
.roster.gml-grid .gml-grid-cell > .gml-grid-cell__content { --block-gap: 8pt; --heading-gap-above: 18pt; }
/* Quote: the bar becomes the 3pt verdict rule; the words run in the display face. */
.quote .gml-blockquote__bar { background: var(--accent-color); width: 3pt; }
.quote .gml-blockquote p.gml-paragraph {
  font-family: var(--heading-font);
  line-height: 1.2;
  text-wrap: balance;
}
/* Folio: the running card number in the mono voice. */
.gml-card__margin-el--page-number {
  font-family: var(--eyebrow-font);
  letter-spacing: 0.08em;
}

/* Icon ledger: bare glyph markers in ink — the accent stays reserved for the conclusion and the
   evidence that decides it, so a row of peer icons never reads as accent decoration. */
.glyphs.gml-grid { --marker-color: var(--ink); }

/* Rising steps (process): the native steps smart layout in the deck's own language — squared
   boxes on a neutral hairline outline, no coloured cap band (the cap becomes transparent interior
   air), and the accent outlining only the final step, the one that produces the conclusion. The
   variables are the renderer's own shape channels, so a reskin follows the theme. */
.steps.gml-grid-cell {
  --box-border-radius: 0;
  --line-thickness: var(--hairline);
  --shape-border-width: 0;
  --shape-border-color-override: var(--rule);
  --shape-bg-color-override: var(--rule);
  --shape-shadow: none;
}
/* The variant's 1em cap band becomes a 3pt head rule in the seam colour — the deck's rule weight,
   not a coloured header. */
.steps .themed-html-shape-background { height: 3pt; }
.steps .node-smartLayoutCell:last-child {
  --shape-border-color-override: var(--accent-color);
  --shape-bg-color-override: var(--accent-color);
}

/* Hub (converging inputs): squared neutral plate nodes abutting one solid accent result plate;
   the adjacency reads as convergence without drawn connectors. */
.hub.gml-grid { --cell-radius: 0; }
.node.gml-grid-cell > .gml-grid-cell__content { --block-gap: 10pt; }
.node .gml-heading { text-wrap: balance; }
/* The rule between two inputs in one plate takes air on both sides so each input reads as a unit. */
.node .gml-divider { padding: 10pt 0; }
.result.gml-grid-cell > .gml-grid-cell__content { --block-gap: 8pt; }</style></HEAD>
<section image-layout="blank" id="JnYP8tbR35" card-margin-hidden="true"><grid spacing="none"><grid-item id="TaTUnbJvzk" vertical-align="end" padding="56pt 40pt 48pt 56pt" colspan="36"><spacer mode="fill"></spacer><display size="lg" class="claim">Ozone Policy as a Supply Regime: What the HFC Phasedown Does to Cooling-Exposed Assets</display><p role="caption" class="cover-meta">Investment committee briefing · Policy, pricing and portfolio diligence</p></grid-item><grid-item id="93Qo6DX1OK" class="plate" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/tVTXUbZoXxqnx4Lxt6-Gf.png" saved-media-id="q169e9le3fvlqub" source="image.ai-generated" background="true" image-style="evidence-photo" alt="Documentary photograph of an industrial refrigerant storage aisle with rows of steel recovery cylinders secured in racks, insulated pipework and a charging manifold visible at the far end, natural available light with slight overcast softness, wide human-eye vantage with genuine depth, honest warm neutral color, one technician far away turned from the camera, calm uncluttered upper wall, no text, no logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>This briefing treats ozone policy as a supply regime. It separates sourced facts, illustrative arithmetic, and our interpretation, then ends with the diligence required before any positioning discussion.</p></notes></section>
<section image-layout="blank" id="SB4ATgeG9N"><grid spacing="none"><grid-item id="WigoTGf3te" colspan="40"><h1 class="claim">The ozone regime is now a government-administered scarcity machine, and the pricing effects are already in reported results</h1><grid spacing="none" vertical-sizing="hug"><grid-item id="Q1sVLo3Wz8" class="verdict" padding="5pt 0 5pt 14pt" border="4px solid var(--accent-color)" border-sides="left"><h4>Our read: producer pricing power, cooling-input pass-through, and reclaim economics are the three transmission channels.</h4></grid-item></grid><p>Kigali placed HFCs inside the Montreal Protocol’s quota-and-schedule machinery. The AIM Act now directs an 85% US production and consumption phasedown by 2036, while demand for cooling remains uncapped.</p><p><b>Scope discipline.</b> No holdings, weights or valuations were supplied. Portfolio statements in this briefing are hypotheses or diligence questions, not position reads.</p><spacer mode="fill"></spacer><p role="caption" class="source">Sources: <a href="https://eelp.law.harvard.edu/tracker/hydrofluorocarbons-and-kigali-amendment-to-montreal-protocol/">AIM Act and Kigali tracker, Sep 2022</a>; <a href="https://www.contractingbusiness.com/industry-news/news/55376212/chemours-forecasts-strong-2026-cooling-season-refrigerant-demand">Chemours TSS reporting, Q1 2026</a></p></grid-item><grid-item id="vRaZKftymw" background-color="surface" padding="28pt 32pt 32pt" colspan="20"><grid divider="sm neutral-border" direction="vertical" spacing="none" vertical-sizing="fill" padding="8pt 0" class="ledger"><grid-item id="b-Bmei_fXF" class="metric" vertical-align="center"><display size="lg">85%</display><p role="eyebrow">US phasedown by 2036</p></grid-item><grid-item id="4mO414Y5li" class="metric" vertical-align="center"><display size="lg">$568M</display><p role="eyebrow">Chemours TSS sales · Q1 2026</p><labels class="delta"><label variant="solid">+22% year over year</label></labels></grid-item><grid-item id="5Ixx-NpoF4" class="metric" vertical-align="center"><display size="lg">33%</display><p role="eyebrow">TSS segment EBITDA margin</p></grid-item></grid></grid-item></grid><notes><p>The cap is statutory, but demand for cooling is not capped. The first visible effect is producer pricing and margin. We do not yet have the portfolio data needed to map the second and third effects.</p></notes></section>
<section image-layout="blank" id="RbLVJGeX9N" card-margin-hidden="true"><grid spacing="none"><grid-item id="fHlx33HPK6" class="flip metric" background-color="palette-2" padding="56pt"><display size="xl">I</display><spacer mode="fill"></spacer><display size="lg" class="claim">Part I — Why this treaty is the one regime that reliably binds</display><p font-size="lg">Four decades of delivered schedules make policy dates unusually underwritable.</p></grid-item></grid><notes><p>Part one establishes why Montreal Protocol schedules carry a different degree of credibility from most environmental policy.</p></notes></section>
<section image-layout="blank" id="dYWwo2qSyO"><grid spacing="none"><grid-item id="oWFg1oeiXw"><h1 class="claim">The Montreal Protocol delivered—a rare treaty with maturity-ladder schedules</h1><p role="eyebrow" class="exhibit">Exhibit 1 · Delivered outcomes and projected recovery dates</p><grid divider="sm neutral-border" vertical-sizing="hug" class="ledger"><grid-item id="tB19DMAtFU" class="metric" padding="12pt 16pt 10pt 0" colspan="20"><display size="lg">99%</display><p role="eyebrow">Banned ozone-depleting substances phased out</p></grid-item><grid-item id="d4ds5CCHnR" class="metric" padding="12pt 16pt 10pt" colspan="20"><display size="lg">36.7M t</display><p role="eyebrow">2025 maximum ozone mass deficit</p><p role="caption">25%+ below 1990–2010 mean (50.1M t).</p></grid-item><grid-item id="r3dXh2shB_" class="metric" padding="12pt 0 10pt 16pt" colspan="20"><display size="lg">0.5°C</display><p role="eyebrow">Warming approximately avoided</p></grid-item></grid><grid divider="sm neutral-border" vertical-sizing="hug"><grid-item id="dtjMjXBosh" vertical-align="center" padding="10pt 14pt 8pt 0" colspan="15"><p role="eyebrow">Projected return to 1980 ozone values</p></grid-item><grid-item id="xbyA7ipK-K" vertical-align="center" padding="10pt 14pt 8pt" colspan="15"><p role="eyebrow">Around 2040</p><h4>Rest of world</h4></grid-item><grid-item id="GeAfMITvvu" vertical-align="center" padding="10pt 14pt 8pt" colspan="15"><p role="eyebrow">Around 2045</p><h4>Arctic</h4></grid-item><grid-item id="VlQpBYm5JI" vertical-align="center" padding="10pt 0 8pt 14pt" colspan="15"><p role="eyebrow">Around 2066</p><h4>Antarctic</h4></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="wJuCMXJ6IA" class="verdict" padding="4pt 0 4pt 14pt" border="4px solid accent" border-sides="left"><h4>Our read: schedules that survived repeated changes of government can be underwritten on their dates more confidently than most regulatory exposure.</h4></grid-item></grid><p role="caption" class="source">Sources: <a href="https://wmo.int/news/media-centre/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">WMO ozone recovery update</a>; <a href="https://wmo.int/resources/publication-series/wmo-ozone-and-uv-bulletin/no-4-sep-2026">WMO Ozone and UV Bulletin No. 4 (Sep 2026)</a></p></grid-item></grid><notes><p>The key point is institutional delivery. The same machinery that removed ozone-depleting substances now governs HFC supply, giving its future dates more credibility than a newly created regime would have.</p></notes></section>
<section image-layout="blank" id="gMwav50tNG"><grid spacing="none"><grid-item id="zmvADvSh6P" padding-bottom="8pt"><h1 font-size="30pt" class="claim">Substitution cycles shift value to replacement owners; phase-out dates vary by jurisdiction</h1><p role="eyebrow" class="exhibit">Exhibit 2 · Substitution cycle and HCFC servicing tails</p><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="x-kJlR6ZbN" colspan="20"><h3>CFCs restricted</h3><p>The 1987 Protocol imposed binding production and consumption schedules for ozone-depleting molecules.</p></grid-item><grid-item id="cX9hr8R4xz" colspan="20"><h3>HFCs adopted</h3><p>HFCs became accepted substitutes with no known natural sources and GWPs hundreds to thousands of times that of CO₂.</p></grid-item><grid-item id="RJCBTTPLkc" colspan="20"><h3>HFCs phased down</h3><p>The 2016 Kigali Amendment put the replacement class inside the same quota-and-schedule apparatus.</p></grid-item></grid><grid spacing="medium"><grid-item id="EVfQ3I2lI8" background-color="surface" padding="12pt 16pt" colspan="30"><p role="eyebrow">Non-Article 5 parties</p><h3>100% HCFC reduction: 1 Jan 2020</h3><p>A 0.5% servicing allowance runs to 2030.</p></grid-item><grid-item id="qhLmTIyJmS" background-color="palette-7" padding="12pt 16pt" colspan="30"><p role="eyebrow">Article 5 parties</p><h3>100% reduction: 1 Jan 2030</h3><p>A 2.5% servicing tail is averaged over 2030–2040 and runs until 1 Jan 2040.</p></grid-item></grid><p><b>Why the correction matters.</b> “HCFCs gone by 2030” overstates the cliff: Article 5 servicing runs to 2040, leaving a ten-year revenue window as equipment is replaced.</p><spacer mode="fill"></spacer><p role="caption" class="source">Sources: <a href="https://ozone.unep.org/treaties/montreal-protocol/annex-c-group-i-hcfcs-consumption">UNEP HCFC schedule</a>; <a href="https://www.epa.gov/hfcs/frequent-questions-phasedown-hydrofluorocarbons">EPA HFC phasedown questions</a></p></grid-item></grid><notes><p>The commercial pattern is repeated substitution. The legal timing is not globally uniform, and the Article 5 servicing tail extends the installed-base economics to 2040.</p></notes></section>
<section image-layout="blank" id="DEgYgc8TPj" card-margin-hidden="true"><grid spacing="none"><grid-item id="oojpcVNlWQ" class="plate" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/jE9PMw-yQB4qT-wdgqC54.png" saved-media-id="xpq2xczcvez2wtq" source="image.ai-generated" background="true" image-style="evidence-photo" alt="Documentary photograph inside a large industrial chiller plant room, insulated refrigerant pipes, valves and compressor housings receding into depth, pale overcast daylight entering through high service windows, honest warm neutral color, one maintenance worker in the distance facing the machinery, no text, no logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item><grid-item id="repJ4RD0fO" class="metric" padding="56pt 56pt 48pt 44pt" colspan="36"><display size="xl">II</display><spacer mode="fill"></spacer><display size="lg" class="claim">Part II — The machinery, and the 2026 divergence between the two largest markets</display><grid divider="sm neutral-border" spacing="none" vertical-sizing="hug" class="ledger"><grid-item id="d9-HJrw0N3" colspan="20"><p role="eyebrow">Lever 1</p><p>Supply allowances</p></grid-item><grid-item id="TA9p91U4Pj" colspan="20"><p role="eyebrow">Lever 2</p><p>Sector timing</p></grid-item><grid-item id="1pUM7UK6wd" colspan="20"><p role="eyebrow">Lever 3</p><p>Reclaim rules</p></grid-item></grid></grid-item></grid><notes><p>Part two separates the statutory cap from the sector rules that can move more quickly. That distinction explains the 2026 divergence between the United States and European Union.</p></notes></section>
<section image-layout="blank" id="DEsBVP4v1e"><grid spacing="none"><grid-item id="f5x1BjGAYr"><h1 class="claim">Three levers do the work: a production cap, sector-by-sector transition rules, and a reclaim mandate</h1><p role="eyebrow" class="exhibit">Exhibit 3 · The industrial-policy stack</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="Sfuta7nefp" colspan="20"><h3>Allowance allocation</h3><p>EPA sets production and consumption allowances by 1 October for the following year. Allowances are tradeable, and EPA may withhold, retire or revoke them.</p></grid-item><grid-item id="9935zY2GCF" colspan="20"><h3>Technology Transitions</h3><p>Subsection (i) permits full, partial or graduated restrictions on regulated substances within a named sector or subsector.</p></grid-item><grid-item id="AqVCXhhJ50" colspan="20"><h3>Emissions and reclamation</h3><p>Leak repair, technician and reclamation rules convert recovered gas from waste into a regulated feedstock for the installed base.</p></grid-item></grid><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="PASY9UH8Oe" class="verdict" background-color="palette-7" padding="10pt 16pt 10pt 14pt" border="4px solid var(--accent-color)" border-sides="left"><h4>Our read: the cap creates scarcity, sector rules time demand destruction, and reclaim rules determine who can monetise the installed base.</h4></grid-item></grid><p role="caption" class="source">Sources: <a href="https://www.epa.gov/system/files/documents/2025-10/9116-07-oar-cy2026-allocation-fr-notice-pre-published_1.pdf">EPA 2026 allowance allocation notice</a>; <a href="https://www.govinfo.gov/content/pkg/FR-2026-05-26/pdf/2026-10387.pdf">Federal Register, 26 May 2026</a></p></grid-item></grid><notes><p>The system is a stack rather than a single ban. Supply, sector timing and recovered material can move independently, which is why a deregulatory sector decision does not repeal the statutory cap.</p></notes></section>
<section image-layout="blank" id="sr75fssR8d"><grid spacing="none"><grid-item id="-Nm0QtU5uZ" padding-bottom="24pt"><h1 class="claim">In 2026 the two largest markets moved in opposite directions, and only the sector timing moved</h1><p role="eyebrow" class="exhibit">Exhibit 4 · United States versus European Union, 2026</p><grid divider="sm neutral-border" spacing="none" vertical-sizing="fill"><grid-item id="g6GnXZIxbR" padding-right="24pt" colspan="30"><labels class="tick"><label variant="outline">Loosening</label></labels><h2>United States</h2><p>EPA’s final rule of 26 May 2026, effective 27 July, relaxed Technology Transitions requirements across refrigerated transport, semiconductor process refrigeration and chillers, supermarkets, cold storage, laboratory equipment, and selected pre-2025 residential inventory.</p><p role="caption">The action followed industry petitions and deregulatory measures announced on 12 March 2025.</p></grid-item><grid-item id="rybp88He27" padding-left="24pt" colspan="30"><labels class="tick"><label variant="solid">Tightening</label></labels><h2>European Union</h2><p>Regulation (EU) 2024/573 replaced the 2014 F-gas regime. Its quota system governs HFCs placed on the market, and allocation carries a payment from the 2026 quota year.</p><p role="caption">The change tightens the economics of Annex I HFC supply rather than every fluorinated gas.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="y6MQDS8qXI" class="verdict" background-color="palette-7" padding="10pt 16pt 10pt 14pt" border="4px solid var(--accent-color)" border-sides="left"><h4>The US statutory cap did not move: the 85% production and consumption phasedown to 2036 remains in force.</h4></grid-item></grid><p role="caption" class="source">Sources: <a href="https://www.govinfo.gov/content/pkg/FR-2026-05-26/pdf/2026-10387.pdf">EPA final rule, 26 May 2026</a>; <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX%3A02024R0573-20240220">Regulation (EU) 2024/573</a>; <a href="https://climate.ec.europa.eu/areas-action/fluorinated-greenhouse-gases/faq_en">European Commission FAQ</a></p></grid-item></grid><notes><p>The US moved sector deadlines while the EU tightened quota economics. The statutory US supply path remains intact, so this is timing relief rather than repeal of scarcity.</p></notes></section>
<section image-layout="blank" id="Yjfx88uWGg"><grid spacing="none"><grid-item id="8U-YnTIUBF" padding-bottom="36pt"><h1 class="claim">The EU quota charge applies to HFCs—not every F-gas</h1><p>Articles 16 and 17(5): HFC market placement requires Commission quota; allocations from 2026 cost EUR 3 per tonne CO₂e.</p><p role="eyebrow" class="exhibit">Exhibit 5 · Illustrative quota cost at EUR 3/tCO₂e · Annex I HFCs only</p><grid divider="sm neutral-border" vertical-sizing="hug"><grid-item id="VOfdpKZT-U" class="evidence" padding-right="20pt" colspan="40"><graph chart-type="bar" show-data-labels="true" y-axis-min="0" config="{&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="540pt" height="170pt"><properties><property key="gas" label="Annex I HFC or HFC blend" type="label"></property><property key="cost" label="Illustrative quota cost (EUR/kg)" type="data"></property></properties><data><row><cell>R134a · GWP 1430</cell><cell>4.29</cell></row><row><cell>R449A · GWP 1396</cell><cell>4.19</cell></row><row><cell>R452B · GWP 697</cell><cell>2.09</cell></row><row><cell>R454B · GWP 467</cell><cell>1.4</cell></row><row><cell>R455A · GWP 146</cell><cell>0.44</cell></row></data></graph><p role="caption">Our calculation: 0.003 × GWP. Blend cost depends on Annex I content; paid at allocation, not sale.</p></grid-item><grid-item id="0ClIxOYyGm" padding-left="20pt" colspan="20"><grid spacing="small" vertical-sizing="hug" class="rail"><grid-item id="d_QvCVQZ8v" colspan="30"><h4>In scope</h4><p font-size="sm">Annex I, Section 1 HFCs, alone or in mixtures.</p></grid-item><grid-item id="y-SSBTOiov" colspan="30"><h4>Out of scope</h4><p font-size="sm">PFCs, SF₆, NF₃ and quota allocated before 2026.</p></grid-item><grid-item id="hiz5CA4JuZ" colspan="30"><h4>Annex II exclusion</h4><p font-size="sm">R1234yf has GWP 0.501 and carries no quota allocation payment.</p></grid-item><grid-item id="9GRTVj-H9i" colspan="30"><h4>No stated indexation</h4><p font-size="sm">The Regulation and FAQ state neither escalation nor permanence.</p></grid-item></grid></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="v8LmhoB6Jm" class="verdict" padding="4pt 0 4pt 14pt" border="4px solid accent" border-sides="left"><h4>Interpretation: Annex II gases are excluded from scope—not subject to a measurable per-kilogram tariff differential.</h4></grid-item></grid><p role="caption" class="source">Sources: <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX%3A02024R0573-20240220">EUR-Lex, Regulation (EU) 2024/573</a>; <a href="https://climate.ec.europa.eu/areas-action/fluorinated-greenhouse-gases/faq_en">European Commission F-gas FAQ</a></p></grid-item></grid><notes><p>This is the key legal correction. The payment applies to allocated Annex I HFC quota. R1234yf is outside that system, and the chart is illustrative arithmetic rather than a market price list.</p></notes></section>
<section image-layout="blank" id="djGKbaGgvw" background-overlay="tint" background-overlay-intensity="0.38" card-margin-hidden="true"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/y_JDNOpsS_ije0JJhwTYO.png" saved-media-id="c0axngfggphj5dx" source="image.ai-generated" background="true" image-style="evidence-photo" alt="Documentary photograph across a fluorochemical production and cylinder-filling floor, stainless process vessels and pipe racks in the middle distance, secured refrigerant cylinders lined along one side, natural overcast daylight entering through high windows, wide human-eye vantage, honest warm neutral color, the lower-left concrete floor calm and uncluttered for copy, small incidental workers turned away, no text, no logos" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"><grid spacing="none"><grid-item id="QRm6YubfKx" vertical-align="end" padding="56pt"><display size="xl">III</display><spacer mode="fill"></spacer><display size="lg" class="claim">Part III — Where the money is visibly moving</display><p font-size="lg">Producer margins, permit prices and cooling demand now provide observable evidence.</p></grid-item></grid><notes><p>Part three moves from legal machinery to reported financial and market evidence.</p></notes></section>
<section image-layout="blank" id="Ym-dpqRca6"><grid spacing="none"><grid-item id="o1mdezfES4"><h1 class="claim">Two producers are turning the phasedown into margin—visible in four reported results</h1><p role="eyebrow" class="exhibit">Exhibit 6 · Regulated-product growth versus group growth</p><grid divider="sm neutral-border" spacing="none" vertical-sizing="hug"><grid-item id="K-XH_K617P" padding-right="24pt" colspan="30"><h3>Chemours Thermal &amp; Specialized Solutions</h3><grid divider="sm neutral-border" spacing="none" vertical-sizing="hug" class="ledger"><grid-item id="rPmOBtuJyU" class="metric" padding="10pt 14pt 10pt 0" colspan="30"><display size="md">$568M</display><labels class="delta"><label variant="solid">+22% year over year</label></labels><p font-size="sm">Q1 2026 TSS sales; EBITDA rose 35% and margin reached 33%. Opteon was $313M, up 12%; Freon was $162M, up 67%.</p></grid-item><grid-item id="dU2Or0wEum" class="metric" padding="10pt 0 10pt 14pt" colspan="30"><display size="md">+56%</display><p role="eyebrow">Opteon sales · full-year 2025</p><p font-size="sm">Record TSS performance; group net sales were flat at $5.8bn.</p></grid-item></grid></grid-item><grid-item id="be3RzSFGqx" padding-left="24pt" colspan="30"><h3>Solstice Advanced Materials</h3><grid divider="sm neutral-border" spacing="none" vertical-sizing="hug" class="ledger"><grid-item id="MBcdInNCU5" class="metric" padding="10pt 14pt 10pt 0" colspan="30"><display size="md">$711M</display><labels class="delta"><label variant="solid">+19% year over year</label></labels><p font-size="sm">Q1 2026 sales growth from price and volume, attributed to the HFO transition and data-centre demand.</p></grid-item><grid-item id="Ud78cj6HHH" class="metric" padding="10pt 0 10pt 14pt" colspan="30"><display size="md">+16%</display><p role="eyebrow">Refrigerant sales · full-year 2025</p><p font-size="sm">Group net sales: $3.9bn, up 3%.</p></grid-item></grid></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="snwxvjvCxg" class="verdict" padding="4pt 0 4pt 14pt" border="5.333333333333333px solid accent" border-sides="left"><h4>Our read: regulated product lines are outgrowing their groups, and Chemours is already reporting the margin capture.</h4></grid-item></grid><p role="caption" class="source">Sources: <a href="https://www.contractingbusiness.com/industry-news/news/55376212/chemours-forecasts-strong-2026-cooling-season-refrigerant-demand">Chemours TSS, Q1 2026</a>; <a href="https://www.coolingpost.com/world-news/refrigerant-producers-report-strong-q1-sales/">Solstice, Q1 2026</a>; <a href="https://www.coolingpost.com/world-news/refrigerant-producers-record-sales-boosts/">full-year 2025 reporting</a></p></grid-item></grid><notes><p>The evidence is not a broad chemicals recovery. The regulated refrigerant lines are growing faster than group revenue, with Chemours reporting both sales and margin expansion.</p></notes></section>
<section image-layout="blank" id="oe64BmELg7"><grid spacing="none"><grid-item id="ASrqYqOFvj" padding-bottom="24pt"><h1 font-size="30pt" class="claim">Legacy gas prices hold; quota permits<br>clear far above the statutory €3 rate</h1><p role="eyebrow" class="exhibit">Exhibit 7 · Two different quota price points, shown on one scale</p><custom-code><style>.quota-spectrum { height: 8.6em; font-family: var(--body-font); color: var(--body-color); position: relative; } .quota-spectrum .lane { position: relative; height: 3.1em; margin-bottom: 0.15em; } .quota-spectrum .lane-name { position: absolute; left: 0; top: 0; width: 14em; font-family: var(--heading-font); font-weight: 600; } .quota-spectrum .track { position: absolute; left: 15em; right: 0; top: 1.45em; height: 0.1em; background: var(--neutral-border-color); } .quota-spectrum .payment { position: absolute; left: 15%; top: -0.55em; width: 0.18em; height: 1.25em; background: var(--accent-color); } .quota-spectrum .range { position: absolute; left: 70%; width: 22.5%; top: -0.32em; height: 0.72em; background: var(--body-color); } .quota-spectrum .average { position: absolute; left: 85.95%; top: -0.6em; width: 0.16em; height: 1.3em; background: var(--accent-color); } .quota-spectrum .tag { position: absolute; top: 0.52em; transform: translateX(-50%); white-space: nowrap; font-size: 0.78em; } .quota-spectrum .axis { position: absolute; left: 15em; right: 0; bottom: 0.1em; display: flex; justify-content: space-between; font-size: 0.72em; color: var(--body-color); opacity: 0.7; } .quota-spectrum .unit { position: absolute; left: 0; bottom: 0; font-size: 0.72em; opacity: 0.7; }</style><div class="quota-spectrum" role="img" aria-label="Statutory allocation payment of EUR 3 per tonne CO2 equivalent compared with a secondary quota permit range of EUR 14 to EUR 18.50 and average of EUR 17.19"><div class="lane"><div class="lane-name">Statutory allocation payment</div><div class="track"><div class="payment"></div><div class="tag" style="left:15%">€3</div></div></div><div class="lane"><div class="lane-name">Secondary quota permits</div><div class="track"><div class="range"></div><div class="average"></div><div class="tag" style="left:81%">€14–€18.50 · avg €17.19</div></div></div><div class="unit">EUR per tonne CO₂e</div><div class="axis"><span>0</span><span>5</span><span>10</span><span>15</span><span>20</span></div></div></custom-code><grid divider="sm neutral-border" spacing="none" vertical-sizing="hug" class="ledger"><grid-item id="JfOXKmbuXr" padding="14pt 18pt 12pt 0" colspan="20"><h4>Legacy gases held</h4><p font-size="sm">R134a and R410A were each up 1% year over year in Q2 2026.</p></grid-item><grid-item id="A5Vij1fR-e" padding="14pt 18pt" colspan="20"><h4>Alternatives rose faster</h4><p font-size="sm">R290 rose 11%, R32 9%, and R448A 4% quarter on quarter.</p></grid-item><grid-item id="aY-18mYHsr" padding="14pt 0 12pt 18pt" colspan="20"><h4>Reclaim was mixed</h4><p font-size="sm">Reclaimed R404A fell 9% among service companies and 4% among distributors.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="j8d-L2Du9I" class="verdict" padding="4pt 0 4pt 14pt" border="4px solid accent" border-sides="left"><h4>Our interpretation: scarcity value, not the EUR 3 administrative payment, is setting the quota economics; the installed base continues to pay for service.</h4></grid-item></grid><p role="caption" class="source">Source: <a href="https://www.coolingpost.com/world-news/european-f-gas-prices-remain-stable/">European F-gas price survey, Q2 2026</a>; statutory rate from Regulation (EU) 2024/573</p></grid-item></grid><notes><p>The statutory payment and secondary permit price are different. The secondary market was clearing at roughly five times the statutory rate, while both legacy and alternative refrigerant prices remained firm.</p></notes></section>
<section image-layout="blank" id="hIihH8pAgH"><grid spacing="none"><grid-item id="DlFPOsGVqR"><grid spacing="medium" vertical-sizing="fill"><grid-item id="mS48qvBDF0" colspan="24"><h1 class="claim">Compute growth drives thermal load—and refrigerant competition</h1><p>Solstice attributes refrigerant strength partly to data-centre demand. EPA’s 2026 reconsideration also addressed industrial process refrigeration and chillers used in semiconductor manufacturing.</p><grid spacing="none" vertical-sizing="hug"><grid-item id="QTXnLukOT7" class="verdict" padding="4pt 0 4pt 14pt" border="4px solid var(--accent-color)" border-sides="left"><h4>Diligence question: do infrastructure and chemicals exposures share an untracked refrigerant dependency?</h4></grid-item></grid><spacer mode="fill"></spacer><p role="caption" class="source">Sources: <a href="https://www.coolingpost.com/world-news/refrigerant-producers-report-strong-q1-sales/">Solstice reporting, Q1 2026</a>; <a href="https://www.govinfo.gov/content/pkg/FR-2026-05-26/pdf/2026-10387.pdf">EPA final rule, 26 May 2026</a></p></grid-item><grid-item id="kJH4V3Pqv9" colspan="36"><grid spacing="none" vertical-sizing="fill" class="hub"><grid-item id="1Kq-WLAAUg" class="node" background-color="surface" vertical-align="center" padding="30pt 20pt" colspan="22"><h3>New thermal load</h3><p role="eyebrow">AI and data centres</p><p>More compute requires heat rejection and cooling capacity.</p><hr color="neutral-border"><p role="eyebrow">Semiconductor manufacturing</p><p>EPA’s sector rules explicitly address process refrigeration and chillers.</p></grid-item><grid-item id="Q3yJkwPUPQ" class="node result" background-color="accent" vertical-align="center" padding="30pt 18pt" colspan="16"><h4>One constrained refrigerant pool</h4></grid-item><grid-item id="7iZtnvFuwe" class="node" background-color="surface" vertical-align="center" padding="30pt 20pt" colspan="22"><h3>Installed-base service</h3><p role="eyebrow">Existing cooling assets</p><p>Cold chain, retail, buildings and industrial systems still require charge replacement.</p><hr color="neutral-border"><p role="eyebrow">Supply path</p><p>The statutory cap was legislated in 2020, before the current compute build cycle.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>The proposed test is to identify positions whose delivery schedule or cost base depends on regulated refrigerant availability, then measure overlap across the infrastructure and chemicals books.</p></notes></section>
<section image-layout="blank" id="o08jOZdj_r"><grid spacing="none"><grid-item id="l_icn4LHKq"><h1 class="claim">Four things would break this thesis, and three are already observable</h1><p role="eyebrow" class="exhibit">Exhibit 8 · Thesis-breakers and observable signals</p><grid divider="sm neutral-border" direction="vertical" spacing="none" vertical-sizing="fill" class="ledger"><grid-item id="Dx4CI8S7mH" vertical-align="center" padding="10pt 0"><grid spacing="medium"><grid-item id="XOTvfTIpKI" colspan="18"><h4>Substitution past incumbents</h4></grid-item><grid-item id="DF6EEfxMkI" colspan="30"><p font-size="sm">OEM standardisation on natural refrigerants such as R290 propane or CO₂ would compress HFO patent rent. R290 rose 11% quarter on quarter.</p></grid-item><grid-item id="8qDRHmmf7c" colspan="12"><labels class="tick"><label variant="solid">Observable</label></labels></grid-item></grid></grid-item><grid-item id="xjIk10x9L_" vertical-align="center" padding="10pt 0"><grid spacing="medium"><grid-item id="lhCMMlw00S" colspan="18"><h4>Fluorine regulation</h4></grid-item><grid-item id="zFicSuzB5x" colspan="30"><p font-size="sm">The WMO/UNEP assessment terms name TFA, a breakdown product associated with fluorinated gases. PFAS-adjacent action against HFOs would remove Annex II’s scope advantage.</p></grid-item><grid-item id="d8lHg4vxqN" colspan="12"><labels class="tick"><label variant="outline">Watch</label></labels></grid-item></grid></grid-item><grid-item id="hG8FSyVrUL" vertical-align="center" padding="10pt 0"><grid spacing="medium"><grid-item id="lz99hOO5zC" colspan="18"><h4>Further US deregulation</h4></grid-item><grid-item id="dZefb2X6JW" colspan="30"><p font-size="sm">EPA proposed on 26 May 2026 to exempt road and intermodal transport refrigeration from AIM Act leak-repair requirements.</p></grid-item><grid-item id="GQIHxjZvAc" colspan="12"><labels class="tick"><label variant="solid">Observable</label></labels></grid-item></grid></grid-item><grid-item id="y8mq35zGH1" vertical-align="center" padding="10pt 0"><grid spacing="medium"><grid-item id="EmL_ZILyDz" colspan="18"><h4>Enforcement failure</h4></grid-item><grid-item id="u1195BcV68" colspan="30"><p font-size="sm">Illegal imports or quota fraud would leak the scarcity. EPA has already imposed administrative consequences on named entities.</p></grid-item><grid-item id="KAdA5FuaPG" colspan="12"><labels class="tick"><label variant="solid">Observable</label></labels></grid-item></grid></grid-item></grid><p role="caption" class="source">Sources: European price survey, Q2 2026; <a href="https://ozone.unep.org/system/files/documents/SAP_Presentation_36MOP_31Oct2024.pdf">WMO/UNEP assessment terms</a>; EPA actions, May 2026 and 2026 allowance notice</p></grid-item></grid><notes><p>Three signals can already be monitored in market prices, rulemaking and enforcement. Formal regulatory action against HFO chemistry remains the less developed but potentially most damaging break.</p></notes></section>
<section image-layout="blank" id="N9Vx3zWDub"><grid spacing="none"><grid-item id="06pg-Opuup" padding-bottom="40pt"><h1 class="claim">Three hypotheses without position data</h1><p role="eyebrow" class="exhibit">Scenario frame · Assumption, hypothesised effect and test</p><grid divider="sm neutral-border" spacing="none" vertical-sizing="fill"><grid-item id="pITKVeYe_J" padding-right="20pt" colspan="20"><labels class="tick"><label variant="plain">Base hypothesis</label></labels><h3>The schedule holds</h3><p><b>Assumption.</b> The statutory 85% phasedown proceeds to 2036 while sector timing slips at the margin.</p><p><b>Hypothesised effect.</b> Producer margin expansion continues at a decelerating rate and reclaim volumes scale.</p><p role="caption">Test: regulated-segment margin versus group margin each quarter.</p></grid-item><grid-item id="J0aJ8PY013" padding="0 20pt" colspan="20"><labels class="tick"><label variant="outline">Bull hypothesis</label></labels><h3>GWP-linked pricing spreads</h3><p><b>Assumption.</b> Another jurisdiction adopts quota pricing on the EU model.</p><p><b>Hypothesised effect.</b> The cost wedge widens and reclaim economics improve where recycled material is outside quota.</p><p role="caption">Test: a second jurisdiction legislates a quota charge.</p></grid-item><grid-item id="1mLTC0QVqX" padding-left="20pt" colspan="20"><labels class="tick"><label variant="solid">Bear hypothesis</label></labels><h3>Naturals plus fluorine action</h3><p><b>Assumption.</b> OEM standardisation on propane and CO₂ coincides with regulatory action on fluorinated chemistry.</p><p><b>Hypothesised effect.</b> Replacement-molecule pricing power compresses while the cap still constrains legacy supply.</p><p role="caption">Test: OEM standards and formal TFA or HFO rulemaking.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="lE3deOzFMi" class="verdict" background-color="palette-7" padding="10pt 16pt 10pt 14pt" border="4px solid var(--accent-color)" border-sides="left"><h4>Open question: whether the bear case is a multiple de-rating or franchise impairment depends on holdings, entry valuation and duration that were not provided.</h4></grid-item></grid><p role="caption" class="source">Policy anchors: AIM Act phasedown to 2036; Regulation (EU) 2024/573; WMO/UNEP assessment terms</p></grid-item></grid><notes><p>These are hypotheses rather than portfolio conclusions. Each has an observable test, and none can be translated into sizing or valuation without the missing holdings data.</p></notes></section>
<section image-layout="blank" id="2aviNZYg0b" card-margin-hidden="true"><grid spacing="none"><grid-item id="qBvmeQREla" class="flip" background-color="palette-2" padding="36pt 40pt 28pt 56pt" colspan="42"><display size="md" class="claim">Three evidence decisions before positioning</display><table col-widths="[23,37]" borders="rows" striped="false" class="ledger" style="--table-cell-padding: 7pt 10pt;"><tbody><tr><td valign="top"><h4>Commission an exposure screen</h4><p role="eyebrow">Owner [name] · Date [date]</p></td><td valign="top"><p font-size="sm">Map producers, cooling-intensive operators, OEMs, reclaim and servicing. Deliver names, weights and transmission channels.</p></td></tr><tr><td valign="top"><h4>Quantify pass-through</h4><p role="eyebrow">Owner [name] · Date [date]</p></td><td valign="top"><p font-size="sm">For cold chain, food retail and data centres, separate EU quota-linked cost from market refrigerant price. Ask management for gas inventory, replacement schedule and contractual pass-through.</p></td></tr><tr><td valign="top"><h4>Scope reclaim before sizing it</h4><p role="eyebrow">Owner [name] · Date [date]</p></td><td valign="top"><p font-size="sm">Confirm quota treatment, certification, collection economics and addressable volumes in each relevant jurisdiction before capital is discussed.</p></td></tr></tbody></table><p font-size="sm"><b>Trip-wires:</b> formal EU or EPA action naming TFA or HFOs under a PFAS framework; natural-refrigerant standardisation by two of the top five HVAC OEMs; or a sustained EU permit price outside €14–€18.50 per tonne CO₂e.</p><spacer mode="fill"></spacer><p role="caption" class="source">Reference range: <a href="https://www.coolingpost.com/world-news/european-f-gas-prices-remain-stable/">European quota permit survey, Q2 2026</a></p></grid-item><grid-item id="gGMEbvyowd" class="plate" padding="0" colspan="18"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/u18i3T9978BnkFpgpeGJF.png" saved-media-id="8yasqxx6g4edk25" source="image.ai-generated" background="true" image-style="evidence-photo" alt="Documentary photograph inside a refrigerant reclamation facility, a technician seen from behind connecting hoses to a row of labelled but illegible steel recovery cylinders beside filtration equipment, natural available industrial light with slight overcast softness, honest warm neutral color, genuine depth, calm uncluttered upper wall, no readable text, no logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>The requested decisions are about evidence collection, not capital allocation. The screen, pass-through work and reclaim analysis establish whether the policy regime is material to the portfolio and through which channel.</p></notes></section>