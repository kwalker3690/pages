<HEAD><style>/* Theme tokens belong on the stable card root so canvas, chrome, and chart descendants inherit them. */
.gml-card {
  --q-ground: var(--card-color);
  --q-surface: var(--surface-color);
  --q-navy: var(--palette-navy, var(--palette-5));
  --q-ink: var(--heading-color);
  --q-body: var(--body-color);
  --q-muted: color-mix(in srgb, var(--body-color) 72%, transparent);
  --q-blue: var(--accent-color);
  --q-cobalt: var(--palette-cobalt, var(--palette-2));
  --q-cyan: var(--palette-cyan, var(--palette-3));
  --q-lavender: var(--palette-lavender, var(--palette-4));
  --q-ice: var(--palette-ice, var(--card-color));
  --q-line: color-mix(in srgb, var(--heading-color) 14%, transparent);
  --q-on-dark: var(--surface-color);
  --q-on-dark-muted: color-mix(in srgb, var(--surface-color) 68%, transparent);
  --q-metric-fill: color-mix(in srgb, var(--q-blue) 7%, var(--q-surface));
  --q-metric-fill-dark: color-mix(in srgb, var(--q-lavender) 12%, var(--q-navy));
  --gradient-signal: linear-gradient(180deg, var(--q-ink) 0%, var(--q-cyan) 100%);

  --gamma-chart-background: transparent;
  --gamma-chart-grid-color: color-mix(in srgb, var(--heading-color) 11%, transparent);
  --gamma-chart-grid-dasharray: none;
  --gamma-chart-border-color: transparent;
  --gamma-chart-axis-line-color: transparent;
  --gamma-chart-origin-line-color: color-mix(in srgb, var(--heading-color) 30%, transparent);
  --gamma-chart-text-color: var(--q-muted);
  --gamma-chart-secondary-text-color: var(--q-muted);
  --gamma-chart-legend-background: transparent;
  --gamma-chart-legend-border-color: transparent;
  --gamma-chart-legend-item-background: transparent;
  --gamma-chart-legend-item-border: none;
  --gamma-chart-legend-item-shadow: none;
  --gamma-chart-legend-text-color: var(--body-color);
  --gamma-chart-bar-rx: 2px;
  --gamma-chart-bar-ry: 2px;
  --gamma-chart-line-width: 2.25px;
  --gamma-chart-line-cap: round;
  --gamma-chart-area-opacity: 0.18;
  --gamma-chart-pie-stroke: var(--card-color);
  --gamma-chart-pie-stroke-width: 2px;
}

.q-light { background: var(--q-ground); color: var(--q-body); }
.q-dark { background: var(--q-navy); color: var(--q-on-dark); }
.q-dark h1, .q-dark h2, .q-dark h3, .q-dark h4, .q-dark .gml-display, .q-dark strong { color: var(--q-on-dark); }
.q-dark p, .q-dark li { color: var(--q-on-dark-muted); }
.q-dark [data-role="eyebrow"], .q-dark [data-role="caption"] { color: var(--q-on-dark-muted); }

.q-hairline { border-color: var(--q-line); }
.q-dark .q-hairline { border-color: color-mix(in srgb, var(--q-on-dark) 18%, transparent); }
.q-signal-bar { background: linear-gradient(180deg, var(--q-ink) 0%, var(--q-cyan) 100%); border-radius: 1px; }
.q-dark .q-signal-bar { background: linear-gradient(180deg, var(--q-on-dark) 0%, var(--q-cyan) 100%); }
.q-aura { background: radial-gradient(circle at 52% 48%, color-mix(in srgb, var(--q-blue) 96%, transparent) 0%, color-mix(in srgb, var(--q-cobalt) 64%, transparent) 24%, transparent 72%); }
.q-aura-light { background: radial-gradient(circle at 50% 50%, color-mix(in srgb, var(--q-cyan) 34%, transparent) 0%, color-mix(in srgb, var(--q-lavender) 22%, transparent) 36%, transparent 70%); }
.q-edge-glow { background: linear-gradient(90deg, transparent 0%, color-mix(in srgb, var(--q-lavender) 44%, transparent) 52%, color-mix(in srgb, var(--q-cyan) 76%, transparent) 100%); }

.q-metric.gml-grid-cell {
  --cell-default-bg: var(--q-metric-fill);
  border: 1px solid color-mix(in srgb, var(--q-blue) 16%, transparent);
  border-radius: 14px;
}
.q-dark .q-metric.gml-grid-cell { --cell-default-bg: var(--q-metric-fill-dark); }
.q-pill { border: 1px solid color-mix(in srgb, var(--q-blue) 10%, transparent); border-radius: 999px; }
.q-dark .q-pill { border-color: color-mix(in srgb, var(--q-cyan) 18%, transparent); }
.q-plate { background: color-mix(in srgb, var(--q-surface) 94%, transparent); border: 1px solid color-mix(in srgb, var(--q-ink) 10%, transparent); box-shadow: 0 12px 34px color-mix(in srgb, var(--q-navy) 12%, transparent); }
.q-dark .q-plate { background: color-mix(in srgb, var(--q-navy) 92%, transparent); border-color: color-mix(in srgb, var(--q-on-dark) 14%, transparent); box-shadow: none; }
.q-ghost { background: color-mix(in srgb, var(--q-lavender) 16%, transparent); border: 1px solid color-mix(in srgb, var(--q-cobalt) 10%, transparent); }
.q-dark .q-ghost { background: color-mix(in srgb, var(--q-lavender) 7%, transparent); border-color: color-mix(in srgb, var(--q-cyan) 13%, transparent); }

.q-number { font-variant-numeric: tabular-nums; letter-spacing: 0; }
.gml-display.q-number, h1.q-number, h2.q-number, h3.q-number { letter-spacing: -0.035em; }
.q-display-tight { letter-spacing: -0.04em; line-height: 1; font-weight: 300; }
.q-micro { letter-spacing: 0.06em; }
.q-quote-mark { color: var(--q-cyan); font-weight: 300; line-height: 0.72; }
.gml-blockquote.bare > .gml-blockquote__bar { display: none; }
.gml-blockquote.bare { padding-inline-start: 0; }
.q-rule-left { border-left: 1px solid var(--q-line); }
.q-dark .q-rule-left { border-left-color: color-mix(in srgb, var(--q-on-dark) 18%, transparent); }
.q-accent-rule.gml-grid-cell { box-shadow: inset 3pt 0 0 var(--q-blue); }
.q-dark .q-accent-rule.gml-grid-cell { box-shadow: inset 3pt 0 0 var(--q-cyan); }
.q-signal-gate.gml-grid-cell { box-shadow: inset 3pt 0 0 var(--q-cyan); }
.q-section-gap { margin-block-start: calc(var(--block-gap) * 1.35); }

.wins-index { --marker-color: var(--accent-color); --marker-font-weight: 500; }
.wins-index .gml-grid-cell__content { --block-gap: 7pt; }
.wins-index h3.gml-heading { font-variant-numeric: tabular-nums; }
.agenda-stagger { --marker-color: var(--q-cyan); --marker-font-weight: 500; --marker-font-size: 12pt; }
.risk-rail.gml-grid-cell { --block-gap: calc(var(--block-gap-pt, 16) * 0.75 * var(--rhythm-unit, 1pt)); }
.metric-stack.gml-grid-cell { --block-gap: calc(var(--block-gap-pt, 16) * 0.25 * var(--rhythm-unit, 1pt)); }
.metric-stack .metric-value { margin-block-start: calc(var(--block-gap) * 3); }
.metric-stack .metric-definition { margin-block-start: calc(var(--block-gap) * 2); }
.evidence-arrow { color: var(--q-cyan); font-weight: 300; }
.timeline-gate.gml-grid-cell { --block-gap: 6pt; }
.ask-stack { margin-block-start: calc(var(--block-gap) * 0.72); --marker-color: var(--q-cyan); --marker-font-size: 10.5pt; --marker-font-weight: 500; }
.ask-row.gml-grid-cell { --block-gap: 4pt; }
.copy-rail.gml-grid-cell { --block-gap: 14pt; }
.metric-rail .gml-grid-cell__content { --block-gap: 8pt; }
.metric-rail .gml-paragraph:last-child { margin-block-start: calc(var(--block-gap) * 0.45); }
.artifact-grid .gml-figure { border: 1px solid var(--q-line); border-radius: 8pt; }
.process-meta-value { margin-block-start: 3pt; }
.process-pair-break { margin-block-start: 16pt; }
.closing-pill-row { margin-block-start: 22pt; }
.closing-pill.gml-grid-cell { --q-on-dark: var(--palette-ink, var(--palette-6)); border-radius: 999px; }
.closing-pill.gml-grid-cell { --block-gap: 3pt; --marker-color: var(--q-on-dark); --marker-font-size: 15pt; }
.closing-pill-lead.gml-grid-cell { --marker-color: var(--q-cyan); }
.decision-rail { margin-block-start: 20pt; }
.decision-cluster.gml-grid-cell { --block-gap: calc(var(--block-gap-pt, 16) * 0.75 * var(--rhythm-unit, 1pt)); }
.decision-cluster .decision-value,
.decision-cluster h3.gml-heading { margin-block-start: var(--block-gap); }
.decision-action > .gml-grid-cell__content { --block-gap: 5pt; }
.commentary-copy p.gml-paragraph { line-height: 1.38; color: var(--q-body); }
.evidence-rail h3.gml-heading { font-variant-numeric: tabular-nums; white-space: nowrap; }

.q-table .gml-table__table { border-collapse: collapse; }
.q-table .gml-table__row[data-header] .gml-table__cell { color: var(--q-body); font-weight: 500; letter-spacing: 0.06em; border-bottom: 1px solid var(--q-line); }
.q-table .gml-table__row:not([data-header]) .gml-table__cell { border-bottom: 1px solid var(--q-line); }
.q-dark .q-table {
  --table-border-color: color-mix(in srgb, var(--q-on-dark) 16%, transparent);
  --table-header-color: var(--q-on-dark-muted);
}
.q-dark .q-table .gml-table__row[data-header] .gml-table__cell, .q-dark .q-table .gml-table__row:not([data-header]) .gml-table__cell { border-bottom-color: color-mix(in srgb, var(--q-on-dark) 14%, transparent); }
.q-dark .q-table .gml-table__row[data-header] .gml-table__cell { color: var(--q-on-dark-muted); }
.timeline-table.gml-table {
  --table-cell-padding-block: 8pt;
  --table-cell-padding-inline: 10pt;
  --table-radius: 0;
}
.decision-root .ink-on-light .gml-paragraph { color: var(--q-ink); }
.fullbleed-plate .ink-on-light .gml-heading,
.fullbleed-plate .ink-on-light .gml-paragraph { color: var(--q-ink); }
.delta-alert { --cell-default-bg: var(--q-cyan); background: var(--q-cyan); }
.delta-alert .gml-heading { color: var(--q-ink); }
.agenda-table.gml-table {
  --table-border-color: color-mix(in srgb, var(--q-on-dark) 16%, transparent);
  --table-cell-padding-block: 13pt;
  --table-cell-padding-inline: 8pt;
  --table-radius: 0;
}
.agenda-table .gml-table__cell:first-child { color: var(--q-cyan); }
.agenda-table .gml-table__cell:nth-child(2) { color: var(--q-on-dark); font-size: 22pt; }
.agenda-table .gml-table__cell:nth-child(3) { color: var(--q-on-dark-muted); text-align: end; font-size: 13pt; }
.agenda-table .gml-table__cell:nth-child(3) .gml-paragraph { color: var(--q-on-dark-muted); }
.compare-table.gml-table {
  --table-border-color: var(--q-line);
  --table-border-width: 1px;
  --table-cell-padding-block: 10pt;
  --table-cell-padding-inline: 18pt;
  --table-header-bg: transparent;
  --table-header-color: var(--q-muted);
  --table-header-weight: 500;
  --table-radius: 0;
}
.compare-table .gml-table__cell:first-child { text-align: end; }
.compare-table .gml-table__cell:nth-child(2) { text-align: center; font-variant-numeric: tabular-nums; }
.compare-table .gml-table__row:not(:last-child) .gml-table__cell { border-bottom: 1px solid var(--q-line); }
.compare-table .compare-value { margin: 0; }
.compare-table .compare-label { margin-block-start: 5pt; }
.ql-table {
  --table-border-color: color-mix(in srgb, var(--heading-color) 19%, transparent);
  --table-border-width: 1pt;
  --table-header-bg: transparent;
  --table-header-color: var(--body-color);
  --table-header-weight: 500;
  --table-stripe-bg: transparent;
  --table-cell-padding: 18pt 10pt;
  --table-gap-x: 0;
  --table-gap-y: 0;
  --table-radius: 0;
}
.q-dark .ql-table { --table-border-color: color-mix(in srgb, var(--q-on-dark) 24%, transparent); }
.ql-table .gml-table__table { border: none; border-collapse: collapse; border-spacing: 0; }
.ql-table .gml-table__cell { font-size: 13pt; }
.ql-table .gml-table__row:not(:last-child) .gml-table__cell { border-bottom: 1pt solid var(--table-border-color); }
.ql-table .gml-table__row[data-header] .gml-table__cell { border-bottom-color: color-mix(in srgb, var(--heading-color) 27%, transparent); font-size: 11pt; letter-spacing: 0.06em; text-transform: uppercase; }
.ql-table .numeric-cell,
.ql-table .confidence-cell { text-align: end; font-variant-numeric: tabular-nums; }
.q-plan-chart { --gamma-chart-bar-fill: var(--palette-8); --gamma-chart-grid-color: color-mix(in srgb, var(--surface-color) 12%, transparent); --gamma-chart-origin-line-color: color-mix(in srgb, var(--surface-color) 28%, transparent); --gamma-chart-text-color: var(--surface-color); --gamma-chart-secondary-text-color: var(--surface-color); --gamma-chart-goal-line-color: var(--palette-8); }
.q-actual-chart { --gamma-chart-bar-fill: var(--palette-3); --gamma-chart-grid-color: color-mix(in srgb, var(--surface-color) 12%, transparent); --gamma-chart-origin-line-color: color-mix(in srgb, var(--surface-color) 28%, transparent); --gamma-chart-text-color: var(--surface-color); --gamma-chart-secondary-text-color: var(--surface-color); --gamma-chart-goal-line-color: var(--palette-3); }

.gml-chart.q-dark-chart {
  --accent-color: var(--q-cyan);
  --gamma-chart-grid-color: color-mix(in srgb, var(--q-on-dark) 12%, transparent);
  --gamma-chart-origin-line-color: color-mix(in srgb, var(--q-on-dark) 28%, transparent);
  --gamma-chart-text-color: var(--q-on-dark-muted);
  --gamma-chart-secondary-text-color: var(--q-on-dark-muted);
  --gamma-chart-legend-text-color: var(--q-on-dark);
  --gamma-chart-pie-stroke: var(--q-navy);
}

.q-island { border: 1px solid var(--q-line); background: color-mix(in srgb, var(--q-surface) 68%, transparent); border-radius: 12px; }
.q-dark .q-island { border-color: color-mix(in srgb, var(--q-on-dark) 16%, transparent); background: color-mix(in srgb, var(--q-on-dark) 5%, transparent); }</style></HEAD>
<section image-layout="blank" id="UcQ2HyDu74" vertical-align="start" background-color="palette-5" card-margin-hidden="true"><grid spacing="none" padding="58pt" class="q-root q-dark"><grid-item id="yHk3wqfwld" colspan="47"><p role="eyebrow"><span text-color="palette-3">Leadership QBR</span></p><display size="lg" font-size="46pt" class="q-display-tight">Growth continued; customer expansion became the constraint</display><p font-size="16pt" role="subheading"><b>Illustrative example — not company data.</b> Revenue rose 6% quarter over quarter and gross margin improved 2 points, but net revenue retention fell to 108%.</p><spacer mode="fill"></spacer><hr color="palette-3" thickness="sm" width="xs"><p font-size="15pt"><span text-color="palette-7">The growth engine is working. Fund the intervention, tighten pricing, and rebalance commercial capacity around customer expansion.</span></p></grid-item><spacer span="13"></spacer></grid><box type="content" x="834" y="166" w="92" h="226" sizing="fixed" background-color="palette-3" style="filter: blur(48pt); border-radius: 999pt; opacity: 0.58;"><p></p></box></section>
<section image-layout="blank" id="iS0ZqKHBxi" vertical-align="start"><grid spacing="none" class="q-root q-light"><grid-item id="Xa6B7qTdRj" padding="44pt 48pt 48pt 48pt"><p role="eyebrow">Quarter close</p><h1 font-size="32pt">The quarter at a glance</h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer mode="fill"></spacer><grid spacing="small" vertical-sizing="hug"><grid-item id="bxoOglNxTt" class="q-metric metric-stack" background-color="palette-7" padding="20pt 16pt 22pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Revenue</label></labels><display size="md" class="q-number metric-value">$24.8M</display><p class="q-number metric-delta"><span text-color="accent">+6% QoQ</span></p><p role="caption" class="metric-definition">96% of plan</p></grid-item><grid-item id="uwPi0OceGr" class="q-metric metric-stack" background-color="palette-7" padding="20pt 16pt 22pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Gross margin</label></labels><display size="md" class="q-number metric-value">61%</display><p class="q-number metric-delta"><span text-color="accent">+2 points</span></p><p role="caption" class="metric-definition">1 point below plan</p></grid-item><grid-item id="JV5m6oi778" class="q-metric q-signal-gate metric-stack" background-color="palette-7" padding="20pt 16pt 22pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Net revenue retention</label></labels><display size="md" class="q-number metric-value">108%</display><p class="q-number metric-delta"><span text-color="accent">−2 points</span></p><p role="caption" class="metric-definition">2 points below plan</p></grid-item><grid-item id="QUc8rwj2Ah" class="q-metric metric-stack" background-color="palette-7" padding="20pt 16pt 22pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Free cash flow</label></labels><display size="md" class="q-number metric-value">−$0.6M</display><p class="q-number metric-delta"><span text-color="accent">Improved $1.1M</span></p><p role="caption" class="metric-definition">$0.2M below plan</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="qpV_g2PZBg" vertical-align="start"><grid spacing="none" class="q-root q-light"><grid-item id="yGnGeMgQqG" padding="40pt 46pt 40pt 46pt"><p role="eyebrow">Four-quarter trend</p><h1 font-size="31pt">Four quarters reveal a quality trade-off</h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer mode="fill"></spacer><grid divider="1pt neutral-border"><grid-item id="15eCYgHQaE" padding="8pt 18pt 8pt 0" colspan="20"><p role="eyebrow">Revenue · $M</p><h3 font-size="24pt" class="q-number"><span text-color="accent">$21.2M → $24.8M</span></h3><graph chart-type="line" show-data-labels="true" config="{&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="250pt" height="190pt"><properties><property key="quarter" label="Quarter" type="label"></property><property key="revenue" label="Revenue ($M)" type="data"></property></properties><data><row><cell>Q1</cell><cell>21.2</cell></row><row><cell>Q2</cell><cell>22.1</cell></row><row><cell>Q3</cell><cell>23.4</cell></row><row><cell>Q4</cell><cell>24.8</cell></row></data></graph></grid-item><grid-item id="g8OKMT7E4G" padding="8pt 18pt" colspan="20"><p role="eyebrow">Gross margin · %</p><h3 font-size="24pt" class="q-number"><span text-color="accent">57% → 61%</span></h3><graph chart-type="line" show-data-labels="true" config="{&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="250pt" height="190pt"><properties><property key="quarter" label="Quarter" type="label"></property><property key="margin" label="Gross margin (%)" type="data"></property></properties><data><row><cell>Q1</cell><cell>57</cell></row><row><cell>Q2</cell><cell>58</cell></row><row><cell>Q3</cell><cell>59</cell></row><row><cell>Q4</cell><cell>61</cell></row></data></graph></grid-item><grid-item id="JfhP4Uwlsp" class="q-accent-rule" padding="8pt 0 8pt 18pt" colspan="20"><p role="eyebrow">Net revenue retention · %</p><h3 font-size="24pt" class="q-number"><span text-color="accent">114% → 108%</span></h3><graph chart-type="line" show-data-labels="true" config="{&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="250pt" height="190pt"><properties><property key="quarter" label="Quarter" type="label"></property><property key="retention" label="Net revenue retention (%)" type="data"></property></properties><data><row><cell>Q1</cell><cell>114</cell></row><row><cell>Q2</cell><cell>112</cell></row><row><cell>Q3</cell><cell>110</cell></row><row><cell>Q4</cell><cell>108</cell></row></data></graph></grid-item></grid><p font-size="14pt"><b>Acquisition and efficiency strengthened</b> while customer expansion softened for four consecutive quarters.</p></grid-item></grid></section>
<section image-layout="blank" id="W26UrJ_L-V" vertical-align="start" background-color="palette-5"><grid spacing="none" class="q-root q-dark"><grid-item id="WQzEduY5m_" padding="40pt 46pt 42pt 46pt"><p role="eyebrow"><span text-color="palette-3">Results bridge</span></p><h1 font-size="32pt"><span text-color="palette-7">The bridge from result to cause</span></h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer mode="fill"></spacer><p role="eyebrow"><span text-color="palette-3">Revenue bridge · $M</span></p><grid spacing="small" vertical-sizing="hug"><grid-item id="XyiidHeQKl" cell-style="outline" padding="14pt 10pt" colspan="10"><p role="caption">Prior quarter</p><h3 font-size="22pt" class="q-number">$23.4M</h3></grid-item><grid-item id="MKEO8YlI4A" cell-style="outline" padding="14pt 9pt" colspan="8"><p role="caption">New business</p><h3 font-size="20pt" class="q-number"><span text-color="palette-3">+$1.0M</span></h3></grid-item><grid-item id="vYm_ADMQFC" cell-style="outline" padding="14pt 9pt" colspan="8"><p role="caption">Expansion</p><h3 font-size="20pt" class="q-number"><span text-color="palette-3">+$0.7M</span></h3></grid-item><grid-item id="cwesFicmS0" cell-style="outline" padding="14pt 9pt" colspan="8"><p role="caption">Price &amp; mix</p><h3 font-size="20pt" class="q-number"><span text-color="palette-3">+$0.3M</span></h3></grid-item><grid-item id="HTe-fz7NUe" cell-style="outline" padding="14pt 9pt" colspan="8"><p role="caption">Churn</p><h3 font-size="20pt" class="q-number"><span text-color="palette-4">−$0.5M</span></h3></grid-item><grid-item id="XSIurmD-aO" cell-style="outline" padding="14pt 9pt" colspan="8"><p role="caption">Currency</p><h3 font-size="20pt" class="q-number"><span text-color="palette-4">−$0.1M</span></h3></grid-item><grid-item id="TgXf8qfgoJ" class="q-signal-gate" background-color="palette-3" padding="14pt 10pt" colspan="10"><p role="caption">Result</p><h3 font-size="22pt" class="q-number">$24.8M</h3></grid-item></grid><spacer size="16pt"></spacer><p role="eyebrow"><span text-color="palette-3">Gross-margin bridge · points</span></p><grid spacing="small" vertical-sizing="hug"><grid-item id="jujlYfvqax" cell-style="outline" padding="14pt 12pt" colspan="12"><p role="caption">Prior quarter</p><h3 font-size="22pt" class="q-number">59%</h3></grid-item><grid-item id="OofrDYYUpV" cell-style="outline" padding="14pt 10pt" colspan="9"><p role="caption">Mix</p><h3 font-size="20pt" class="q-number"><span text-color="palette-3">+1.0 pt</span></h3></grid-item><grid-item id="faKEmnVU74" cell-style="outline" padding="14pt 10pt" colspan="9"><p role="caption">Infrastructure</p><h3 font-size="20pt" class="q-number"><span text-color="palette-3">+0.8 pt</span></h3></grid-item><grid-item id="UmAI-Uyd7b" cell-style="outline" padding="14pt 10pt" colspan="9"><p role="caption">Delivery</p><h3 font-size="20pt" class="q-number"><span text-color="palette-3">+0.5 pt</span></h3></grid-item><grid-item id="aCFjEz3OoV" cell-style="outline" padding="14pt 10pt" colspan="9"><p role="caption">Discounting</p><h3 font-size="20pt" class="q-number"><span text-color="palette-4">−0.3 pt</span></h3></grid-item><grid-item id="gSE1a5mr-X" class="q-signal-gate" background-color="palette-3" padding="14pt 12pt" colspan="12"><p role="caption">Result</p><h3 font-size="22pt" class="q-number">61%</h3></grid-item></grid><spacer mode="fill"></spacer></grid-item></grid></section>
<section image-layout="blank" id="JHuukXK7_H" vertical-align="start" background-color="palette-5"><grid spacing="none" class="q-root q-dark"><grid-item id="WcJF1gVwcy" padding="40pt 52pt 42pt 52pt"><p role="eyebrow"><span text-color="palette-3">Leading indicators</span></p><h1 font-size="34pt"><span text-color="palette-7">Three leading risks could break the plan</span></h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer mode="fill"></spacer><grid spacing="medium"><grid-item id="8-7MPNSzuP" colspan="20"><grid direction="vertical" spacing="none"><spacer span="2"></spacer><grid-item id="3mEoA7FwYU" class="risk-rail q-signal-gate" cell-style="outline" padding="22pt 20pt 18pt 20pt" rowspan="58"><p role="eyebrow"><span text-color="palette-3">Demand</span></p><h2 font-size="31pt" class="q-number">2.7×</h2><p role="caption">Pipeline coverage · 3.0× guardrail</p><hr color="palette-8" thickness="sm"><p font-size="13pt"><b>Trigger:</b> Sales intervenes if mid-quarter coverage remains below 2.8×.</p><labels><label variant="outline" class="q-pill">SALES</label></labels></grid-item></grid></grid-item><grid-item id="1mS7eg7OzH" colspan="20"><grid direction="vertical" spacing="none"><spacer span="9"></spacer><grid-item id="pqZMWhjQd3" class="risk-rail" cell-style="outline" padding="22pt 20pt 18pt 20pt" rowspan="51"><p role="eyebrow"><span text-color="palette-3">Adoption</span></p><h2 font-size="31pt" class="q-number">18 days</h2><p role="caption">Onboarding · 14-day target</p><hr color="palette-8" thickness="sm"><p font-size="13pt"><b>Owner:</b> Customer leadership owns recovery.</p><labels><label variant="outline" class="q-pill">CUSTOMER</label></labels></grid-item></grid></grid-item><grid-item id="YlHyPozDOR" colspan="20"><grid direction="vertical" spacing="none"><spacer span="16"></spacer><grid-item id="XNHHFEkAQq" class="risk-rail" cell-style="outline" padding="22pt 20pt 18pt 20pt" rowspan="44"><p role="eyebrow"><span text-color="palette-3">Concentration</span></p><h2 font-size="31pt" class="q-number">34%</h2><p role="caption">Top-ten revenue · 30% guardrail</p><hr color="palette-8" thickness="sm"><p font-size="13pt"><b>Owner:</b> Finance monitors exposure.</p><labels><label variant="outline" class="q-pill">FINANCE</label></labels></grid-item></grid></grid-item></grid><spacer mode="fill"></spacer></grid-item></grid></section>
<section image-layout="blank" id="sq_QAwqrP2" vertical-align="start" background-color="card"><grid spacing="none" class="decision-root q-light"><grid-item id="i3wpmLJONf" background-color="palette-7" padding="44pt 44pt 48pt 50pt" colspan="36"><p role="caption"><b>Illustrative decision asks — not company data.</b></p><h1 font-size="31pt">Three leadership choices unlock the next quarter</h1><hr color="accent" thickness="sm" width="xs"><spacer size="18pt"></spacer><p role="caption"><span text-color="accent">01</span> · APPROVE</p><h2 font-size="38pt" class="q-display-tight">Invest $0.4M in an onboarding pod</h2><p font-size="15pt">Modeled outcome: reduce onboarding from 18 to 14 days and recover 1 point of retention.</p><spacer mode="fill"></spacer><labels><label variant="outline" class="q-pill">CUSTOMER EXPANSION</label></labels></grid-item><grid-item id="RDhvoAeD4Z" background-color="palette-5" padding="44pt 36pt 42pt 28pt" colspan="24"><p role="caption"><span text-color="palette-3">FOLLOW-ON CHOICES</span></p><grid marker="number" marker-position="above" marker-numbering-start="2" marker-numbering-format="decimal-leading-zero" direction="vertical" spacing="small" vertical-sizing="fill" class="ask-stack"><grid-item id="CRKB6qwUSQ" class="ask-row" background-color="palette-2" padding="18pt 16pt"><p role="eyebrow"><span text-color="palette-7">APPROVE</span></p><h3 font-size="21pt"><span text-color="palette-7">Set a 12% discount guardrail</span></h3><p font-size="13pt"><span text-color="palette-7">CFO exceptions; modeled protection is 0.3 margin points.</span></p></grid-item><grid-item id="V18Y08rGhW" class="ask-row" background-color="palette-2" padding="18pt 16pt"><p role="eyebrow"><span text-color="palette-7">CONFIRM</span></p><h3 font-size="21pt"><span text-color="palette-7">Redirect two open commercial roles</span></h3><p font-size="13pt"><span text-color="palette-7">Move capacity from acquisition to expansion coverage.</span></p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="iNnJmfQzUH" vertical-align="start" background-color="palette-5"><grid spacing="none" class="q-root q-dark"><grid-item id="5-p6W6o1Pt" padding="40pt 52pt 42pt 52pt"><p role="eyebrow"><span text-color="palette-3">Next-quarter execution</span></p><h1 font-size="32pt"><span text-color="palette-7">The next-quarter plan links actions to outcomes</span></h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer mode="fill"></spacer><grid spacing="medium"><grid-item id="9AcOFvfJSI" vertical-align="center" colspan="41"><table col-widths="[24,76]" header-row="true" borders="rows" striped="false" class="q-table timeline-table"><tbody><tr><td><p>Timing</p></td><td><p>Action</p></td></tr><tr><td><p class="q-number">Days 1–30</p></td><td><p>Staff the pod and publish pricing rules.</p></td></tr><tr><td><p class="q-number">Days 31–60</p></td><td><p>Reduce onboarding backlog and activate expansion plays.</p></td></tr><tr><td><p>Quarter end</p></td><td><p>Scale only interventions that improve leading indicators.</p></td></tr></tbody></table></grid-item><grid-item id="k-_lnZdkKr" class="q-metric timeline-gate" background-color="palette-7" padding="0" colspan="19"><grid spacing="none"><grid-item id="sQoagCCkCu" background-color="palette-3" padding="0" colspan="2"><p></p></grid-item><grid-item id="TYgfxolWd_" padding="20pt 18pt" colspan="58"><p role="eyebrow"><span text-color="palette-2">Quarter-end outcomes</span></p><grid divider="sm neutral-border" direction="vertical" spacing="none"><grid-item id="V9iPxZdg96" padding="9pt 0"><h3 font-size="25pt" class="q-number"><span text-color="palette-5">$26.0M</span></h3><p role="caption"><span text-color="palette-5">Revenue</span></p></grid-item><grid-item id="s9L6wUjQT3" padding="9pt 0"><h3 font-size="25pt" class="q-number"><span text-color="palette-5">62%</span></h3><p role="caption"><span text-color="palette-5">Gross margin</span></p></grid-item><grid-item id="kHFD0hoPB3" padding="9pt 0"><h3 font-size="25pt" class="q-number"><span text-color="palette-5">109%</span></h3><p role="caption"><span text-color="palette-5">Net revenue retention</span></p></grid-item><grid-item id="Qpysh98XG5" padding="9pt 0"><h3 font-size="25pt" class="q-number"><span text-color="palette-5">+$0.2M</span></h3><p role="caption"><span text-color="palette-5">Free cash flow</span></p></grid-item></grid></grid-item></grid></grid-item></grid><spacer mode="fill"></spacer></grid-item></grid></section>
<section image-layout="blank" id="TeELWZNEyB" vertical-align="start" background-color="palette-5" card-margin-hidden="true"><grid spacing="none" class="q-root q-dark"><grid-item id="Q9tfu4fXrV" padding="40pt 50pt 42pt 50pt"><p role="eyebrow"><span text-color="palette-3">Leadership close</span></p><h1 font-size="40pt"><span text-color="palette-7">Close the loop: decide, measure, adapt</span></h1><spacer mode="fill"></spacer><grid direction="vertical" spacing="none"><grid-item id="lTbE6mPJj7" padding="0" rowspan="28"><grid spacing="small"><grid-item id="4a0Pf8h1Tu" class="q-signal-gate" cell-style="outline" padding="16pt 18pt" border="md solid palette-3" border-sides="top" colspan="30"><p role="eyebrow"><span text-color="palette-3">01 · Today →</span></p><h3 font-size="21pt">Decide</h3><p font-size="13pt">Approve, adjust, or defer the three proposed choices.</p></grid-item><grid-item id="J7P9BrhFNE" cell-style="outline" padding="16pt 18pt" border="sm solid palette-8" border-sides="top" colspan="30"><p role="eyebrow"><span text-color="palette-3">02 · Day 30 ↓</span></p><h3 font-size="21pt">Measure execution</h3><p font-size="13pt">Owners report staffing, pricing compliance, pipeline coverage, and onboarding time.</p></grid-item></grid></grid-item><grid-item id="oDhuSGcDcQ" padding="0" rowspan="28"><grid spacing="small"><grid-item id="hcndrJWMHX" background-color="palette-3" padding="16pt 18pt" colspan="30"><p role="eyebrow">← 04 · Quarter end</p><h3 font-size="22pt">Adapt the next plan</h3><p font-size="13pt">Assess durable growth across revenue, margin, retention, and cash—not growth alone.</p></grid-item><grid-item id="o02MnZ3WvI" cell-style="outline" padding="16pt 18pt" border="sm solid palette-8" border-sides="top" colspan="30"><p role="eyebrow"><span text-color="palette-3">← 03 · Day 60</span></p><h3 font-size="21pt">Review trajectory</h3><p font-size="13pt">Leadership reviews retention trajectory and releases contingency capacity if triggers are breached.</p></grid-item></grid></grid-item><grid-item id="HJCozTpyrs" background-color="palette-7" padding="9pt 16pt" rowspan="4"><p font-size="13pt" align="center"><span text-color="palette-5"><b>Decision evidence becomes the input to the next review.</b></span></p></grid-item></grid><spacer mode="fill"></spacer></grid-item></grid><box type="content" x="814" y="422" w="92" h="58" sizing="fixed" background-color="palette-1" style="filter: blur(42pt); border-radius: 999pt; opacity: 0.44;"><p></p></box></section>