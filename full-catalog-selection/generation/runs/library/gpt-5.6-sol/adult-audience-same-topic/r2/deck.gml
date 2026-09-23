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
<section image-layout="blank" id="uoPah6FIp-" card-margin-hidden="true"><grid spacing="none"><grid-item id="xmYfxTyAJ-" vertical-align="end" padding="52pt 40pt 44pt 56pt" colspan="36"><spacer mode="fill"></spacer><p role="eyebrow">Investment committee briefing · Ozone policy exposure atlas</p><display size="lg" class="claim">Map substance-dependent assets before pricing the risk</display><p>Ozone policy is not a broad green-premium story. Treat it as targeted diligence: identify substance-dependent assets, separate legacy ozone-depleting substances from HFC climate exposure, then test transition capex, operating resilience, and management evidence before changing valuation.</p><p role="caption" class="cover-meta">Briefing date · 23 Sep 2026 · Evidence anchor · UNEP 2023 assessment</p></grid-item><grid-item id="EJ0v1QboQL" class="plate" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/8jtK3Mlz0AklihEiFJzoe.png" saved-media-id="4qi2p1dbd45e35l" source="image.ai-generated" background="true" image-style="evidence-photo" alt="Documentary photograph of an industrial refrigeration plant room inside a cold-storage facility, compressors, insulated pipework and valves receding into genuine depth, natural available light with slight overcast softness entering from a distant service door, honest warm-neutral color, one clear compressor bank as the focal subject, calm uncluttered concrete floor, no people, no legible text, no logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>The committee thesis is a proposed diligence approach, not a claim about current holdings. Before assigning value, build an equipment-and-substance map, request evidence of the transition plan, and test issuer-specific timing.</p></notes></section>
<section image-layout="blank" id="2Mr-m9wQHV"><grid spacing="none"><grid-item id="RLRQwwQX9d"><h1 class="claim">One recovery story, two different refrigerant issues</h1><p role="eyebrow" class="exhibit">Exhibit 1 · Ozone recovery milestones and refrigerant distinction</p><grid spacing="none" vertical-sizing="hug"><grid-item id="RlQ2vpWPex" background-color="surface" padding="18pt 20pt" colspan="24"><h3>Recovery track</h3><p font-size="16pt">UNEP’s January 2023 assessment projects a return to 1980 ozone levels—if current policies remain.</p><grid spacing="small" vertical-sizing="hug"><grid-item id="-7vhjuHmRB" class="metric" colspan="20"><display size="md" font-size="30pt">2040</display><p role="eyebrow">Around · global</p></grid-item><grid-item id="Vtj1dNn6EG" class="metric" colspan="20"><display size="md" font-size="30pt">2045</display><p role="eyebrow">Around · Arctic</p></grid-item><grid-item id="D00PouCp12" class="metric" colspan="20"><display size="md" font-size="30pt">2066</display><p role="eyebrow">Around · Antarctica</p></grid-item></grid></grid-item><grid-item id="9DqFww50Pk" class="prose" padding-left="28pt" colspan="36"><h3>Ozone-depleting substances</h3><p font-size="16pt">Stratospheric ozone absorbs harmful ultraviolet radiation. The Montreal Protocol phases out ozone-depleting substances: this is the core ozone-protection issue.</p><hr color="neutral-border"><h3>Hydrofluorocarbons</h3><p font-size="16pt">HFCs warm the climate but do not deplete ozone. Kigali uses the Montreal Protocol framework, but the exposure is a climate-refrigerant transition—not ozone depletion.</p><grid spacing="none" vertical-sizing="hug"><grid-item id="3DFN8kKpLa" class="verdict" padding="7pt 0 7pt 14pt" border="4px solid accent" border-sides="left"><h4>Keep the substance class and policy issue separate in every portfolio screen.</h4></grid-item></grid></grid-item></grid><p role="caption" class="source">Sources: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP assessment summary</a>; <a href="https://ozone.unep.org/treaties/montreal-protocol">Montreal Protocol</a></p></grid-item></grid><notes><p>The ozone layer is recovering if current policies remain, but that does not make every refrigerant issue an ozone issue. Legacy ODS exposure and HFC climate exposure require different classification even when they sit in the same equipment.</p></notes></section>
<section image-layout="blank" id="X_Sn7AIZ93"><grid spacing="none"><grid-item id="WiwWz35QZ5"><h1 class="claim">Map equipment and substances before mapping sectors</h1><p role="eyebrow" class="exhibit">Exhibit 2 · Five coordinates for each holding</p><p>A sector screen finds candidates. These five coordinates determine what the exposure means and what the investor should do next.</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="I4ES-AJMxa" colspan="12"><h4>Substance</h4><p>ODS, HFC, lower-impact substitute, or unknown.</p></grid-item><grid-item id="jhnkHcQAnL" colspan="12"><h4>Asset</h4><p>Refrigeration, HVAC, foam, fire suppression, or industrial process.</p></grid-item><grid-item id="Oo5Imx7xNl" colspan="12"><h4>Lifecycle</h4><p>Installation, servicing, replacement, recovery, or disposal.</p></grid-item><grid-item id="x4QK4f6G51" colspan="12"><h4>Value channel</h4><p>Capex, operating cost, downtime, compliance, or customer access.</p></grid-item><grid-item id="DJhHdK8rdc" colspan="12"><h4>Action</h4><p>Underwrite, reserve, engage, monitor, or defer.</p></grid-item></grid><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="YhfVpXf_aw" class="verdict" background-color="palette-7" padding="8pt 14pt" border="4px solid accent" border-sides="left"><h4>No coordinate should be inferred from sector membership alone.</h4></grid-item></grid></grid-item></grid><notes><p>Use the same five-coordinate vocabulary for every holding. Substance and asset identify the physical exposure; lifecycle and value channel establish timing and transmission; action converts the evidence into an underwriting response.</p></notes></section>
<section image-layout="blank" id="d9xcCwq-uY"><grid spacing="none"><grid-item id="T4ksb3gp-O"><h1 class="claim">Policy reaches value through physical systems</h1><p role="eyebrow" class="exhibit">Exhibit 3 · Policy-to-value transmission</p><spacer mode="fill"></spacer><smart-layout variant="stepsWithArrow" cell-size="10"><smart-layout-item><h4>Policy scope</h4><p>Identify the relevant substance, use, and jurisdiction.</p></smart-layout-item><smart-layout-item><h4>Operational constraint</h4><p>Test whether equipment, servicing, supply, or end-of-life handling could change.</p></smart-layout-item><smart-layout-item><h4>Financial transmission</h4><p>Stress replacement capex, maintenance cost, downtime, working capital, and margins.</p></smart-layout-item><smart-layout-item><h4>Valuation response</h4><p>Adjust only when exposure and timing are evidenced.</p></smart-layout-item></smart-layout><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="Ic9qj3-mJ_" class="verdict" padding="9pt 16pt 9pt 14pt" border="4px solid accent" border-sides="left"><h4>Unknown substance inventories reduce underwriting confidence before they prove financial loss.</h4></grid-item></grid></grid-item></grid><notes><p>The transmission chain prevents policy headlines from becoming automatic valuation adjustments. Follow the policy into the physical system, test the operational constraint, quantify the financial channel, and adjust value only when timing and exposure are evidenced.</p></notes></section>
<section image-layout="blank" id="8QFgvB_I_y"><grid spacing="none"><grid-item id="62c7fWQOS6"><h1 class="claim">Illustrative portfolio matrix: urgency × materiality</h1><p role="eyebrow" class="exhibit">Exhibit 4 · Illustrative example—not portfolio data</p><grid spacing="medium" vertical-sizing="hug"><grid-item id="tQUJJ0fXEy" vertical-align="center" colspan="36"><graph chart-type="scatter" y-axis-min="1" text-size="md" config="{&quot;axes&quot;:{&quot;y&quot;:{&quot;max&quot;:5},&quot;x&quot;:{&quot;min&quot;:1,&quot;max&quot;:5}},&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="500pt" height="260pt"><properties><property key="holding" label="Illustrative holding" type="label"></property><property key="urgency" label="Urgency (1–5)" type="data"></property><property key="materiality" label="Materiality (1–5)" type="data"></property></properties><data><row><cell>Office tenant</cell><cell>1</cell><cell>1</cell></row><row><cell>Older fire suppression</cell><cell>3</cell><cell>2</cell></row><row><cell>HFC-heavy supermarket</cell><cell>3</cell><cell>4</cell></row><row><cell>Legacy-ODS cold store</cell><cell>4</cell><cell>4</cell></row></data></graph></grid-item><grid-item id="2jrEQCP5iO" background-color="surface" padding="16pt 18pt" colspan="24"><h3>Illustrative points</h3><p role="caption">U = urgency · M = materiality · 1 low · 5 high</p><grid divider="sm neutral-border" direction="vertical" vertical-sizing="hug" class="ledger"><grid-item id="JhtxO6TozX" padding="7pt 0"><labels class="tick"><label variant="solid">Act now</label></labels><p font-size="16pt">Legacy-ODS cold store · U4 / M4</p></grid-item><grid-item id="vtxmeGCVzp" padding="7pt 0"><labels class="tick"><label variant="outline">Plan</label></labels><p font-size="16pt">HFC-heavy supermarket · U3 / M4</p><p role="caption">Climate-refrigerant exposure—not ozone depletion.</p></grid-item><grid-item id="T3-TjS_TYr" padding="7pt 0"><labels class="tick"><label variant="outline">Verify</label></labels><p font-size="16pt">Older fire suppression · U3 / M2 · agent unknown</p></grid-item><grid-item id="D5h9pINXdW" padding="7pt 0"><labels class="tick"><label variant="plain">Monitor</label></labels><p font-size="16pt">Office tenant · U1 / M1 · landlord-controlled HVAC</p></grid-item></grid></grid-item></grid><p role="caption">Urgency reflects transition timing; materiality reflects potential financial impact. Replace every sample point and score with holding-specific evidence.</p></grid-item></grid><notes><p>This native matrix demonstrates prioritisation only; it is not portfolio data. The cold-store example is both urgent and potentially material. The HFC-heavy estate may also be material, but its classification is climate-refrigerant exposure rather than ozone depletion.</p></notes></section>
<section image-layout="blank" id="8CtgFG0-ZZ"><grid spacing="none"><grid-item id="qqegUNwZ7J"><h1 class="claim">Stress the transition, not the recovery forecast</h1><p role="eyebrow" class="exhibit">Exhibit 5 · Illustrative assumptions—not forecasts</p><p>Apply these sensitivities only after validating the equipment and substance inventory.</p><table col-widths="[20,27,53]" header-row="true" borders="rows" striped="false" class="ledger"><tbody><tr><td><p>Scenario</p></td><td><p>Timing or supply input</p></td><td><p>Financial and operating sensitivity</p></td></tr><tr><td><p><b>Base</b></p></td><td><p>Planned replacement cycle</p></td><td><p>Servicing cost +5%; no incremental downtime.</p></td></tr><tr><td background-color="palette-7"><p><b>Tighter transition</b></p></td><td background-color="palette-7"><p>Replacement three years earlier</p></td><td background-color="palette-7"><p>Capex +12%; transition-year EBITDA margin −1 percentage point.</p></td></tr><tr><td><p><b>Supply disruption</b></p></td><td><p>Equipment lead time +6 months</p></td><td><p>Servicing cost +20%; temporary capacity constraint.</p></td></tr></tbody></table><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="0rVi8OV3Kq" class="verdict" padding="9pt 16pt 9pt 14pt" border="4px solid accent" border-sides="left"><h4>Revalue with issuer-specific timing, contracts, and financing capacity—not with the ozone recovery date.</h4></grid-item></grid></grid-item></grid><notes><p>These are method demonstrations, not forecasts or estimates of portfolio impact. Once the five-coordinate map is validated, stress replacement timing, servicing costs, supply lead times, downtime, margins, contracts, and financing capacity.</p></notes></section>
<section image-layout="blank" id="XuMwYqw2PX"><grid spacing="none"><grid-item id="XGwh63aEQW"><h1 class="claim">Investable transition plans need four proofs</h1><p role="eyebrow" class="exhibit">Exhibit 6 · Evidence pack and decision gates</p><grid divider="sm neutral-border" vertical-sizing="fill"><grid-item id="iwNaJhRkgR" padding-right="24pt" colspan="36"><grid divider="sm neutral-border" marker="icon" marker-position="inline" direction="vertical" vertical-sizing="fill" class="ledger glyphs"><grid-item id="PXCSUBxMqm" vertical-align="center"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/6lTcfO47cvPvKzUt4BGw.svg?stroke=45" source="image.pictographic.icon" alt="industrial equipment inventory"></icon></grid-item-label><h4>Asset inventory</h4><p>Substance, equipment, location, age, and ownership.</p></grid-item><grid-item id="CIalsl-QeB" vertical-align="center"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/EoyF9yGYjQnbpOmbYuJA.svg?stroke=45" source="image.pictographic.icon" alt="maintenance service records"></icon></grid-item-label><h4>Operating records</h4><p>Leaks, maintenance, servicing, recovery, and disposal.</p></grid-item><grid-item id="w7gfyFI7PJ" vertical-align="center"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/lUDa8b1HZo9XxTJF6jlt.svg?stroke=45" source="image.pictographic.icon" alt="equipment replacement schedule"></icon></grid-item-label><h4>Funded replacement plan</h4><p>Schedule, approved capex, suppliers, and technician capacity.</p></grid-item><grid-item id="6V-Q3zDhMl" vertical-align="center"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/eiSoCUfFy5LpjrNSuqNU.svg?stroke=45" source="image.pictographic.icon" alt="board accountability governance"></icon></grid-item-label><h4>Accountability</h4><p>Scenario owner and board-level responsibility.</p></grid-item></grid></grid-item><grid-item id="yCentv__Nc" background-color="surface" padding="20pt 24pt" colspan="24"><h3>Decision gates</h3><grid divider="sm neutral-border" direction="vertical" vertical-sizing="fill" class="ledger"><grid-item id="yu-bwQr3m4" vertical-align="center"><labels class="tick"><label variant="solid">Underwrite</label></labels><p>Inventory and funded plan are credible.</p></grid-item><grid-item id="cfz5TqPArD" vertical-align="center"><labels class="tick"><label variant="outline">Reserve and engage</label></labels><p>Evidence gaps are bounded and remediable.</p></grid-item><grid-item id="NwrvExD-DK" vertical-align="center"><labels class="tick"><label variant="plain">Defer</label></labels><p>Unknown exposure could be financially material.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>The evidence threshold is practical rather than theoretical. A credible inventory and funded plan support underwriting. Bounded gaps support a reserve and engagement. Potentially material unknown exposure should defer a confident valuation.</p></notes></section>
<section image-layout="blank" id="Qoll9ROP9s" card-margin-hidden="true"><grid spacing="none"><grid-item id="3n64o8JXWA" class="flip" background-color="palette-2" padding="36pt 38pt 28pt 56pt" colspan="38"><p role="eyebrow"><span text-color="palette-7">Decision sought · Approve a 90-day portfolio screen</span></p><h1 class="claim">Committee decision: turn unknowns into priced evidence</h1><grid divider="sm neutral-border" marker="number" marker-position="inline" marker-numbering-format="decimal-leading-zero" direction="vertical" vertical-sizing="fill" class="ledger"><grid-item id="d4FJgLc4bn" vertical-align="center" padding="6pt 0"><h4>Days 0–30 · map the assets</h4><p>Prioritize refrigeration, cooling, foam, fire suppression, and industrial processes.</p></grid-item><grid-item id="81UGkigjgK" vertical-align="center" padding="6pt 0"><h4>Days 31–60 · classify and evidence</h4><p>Classify ODS, HFC, lower-impact substitute, or unknown; request the evidence pack.</p></grid-item><grid-item id="KLQ900anQb" vertical-align="center" padding="6pt 0"><h4>Days 61–75 · rerun transition stresses</h4><p>Use issuer-specific timing, contracts, supply constraints, and financing capacity.</p></grid-item><grid-item id="rV6vBhxBWm" vertical-align="center" padding="6pt 0"><h4>Days 76–90 · decide and assign ownership</h4><p>Underwrite, reserve and engage, or defer; set escalation owners and cadence.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="64VPW3DUTB" class="verdict" padding="7pt 0 7pt 14pt" border="4px solid accent" border-sides="left"><h4>No substance map, no confident transition valuation.</h4></grid-item></grid></grid-item><grid-item id="qZPfoQ1jov" class="plate" padding="0" colspan="22"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/dJW4Xcs_ZFA2HufcYxpCj.png" saved-media-id="jbx3nj8nhjmi3rg" source="image.ai-generated" background="true" image-style="evidence-photo" alt="Documentary photograph of a cold-storage service corridor with insulated refrigeration pipework, valves and compressor controls extending into depth, a technician seen only as a small incidental figure from behind at the far end, natural available light with slight overcast softness, honest warm-neutral color, calm plain wall and floor areas, quiet precise composition, no legible text, no logos" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>The decision is to approve a ninety-day evidence screen, not to assume portfolio exposure. Map the assets, classify each substance, request the evidence pack, rerun issuer-specific stresses, and return with an underwriting, reserve-and-engage, or defer recommendation.</p></notes></section>