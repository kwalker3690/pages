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
<section image-layout="blank" id="UcQ2HyDu74" vertical-align="start" background-color="palette-5" card-margin-hidden="true"><grid spacing="none" padding="58pt" class="q-root q-dark"><grid-item id="yHk3wqfwld" colspan="47"><p role="eyebrow"><span text-color="palette-3">Leadership QBR</span></p><display size="lg" font-size="46pt" class="q-display-tight">Growth continued; customer expansion became the constraint</display><p font-size="16pt" role="subheading"><b>Illustrative example — not company data.</b> Revenue rose 6% quarter over quarter and gross margin improved 2 percentage points, but net revenue retention fell to 108%.</p><spacer mode="fill"></spacer><hr color="palette-3" thickness="sm" width="xs"><p font-size="15pt"><span text-color="palette-7">The growth engine is working. Fund the intervention, tighten pricing, and rebalance commercial capacity around customer expansion.</span></p></grid-item><spacer span="13"></spacer></grid><box type="content" x="834" y="166" w="92" h="226" sizing="fixed" background-color="palette-3" style="filter: blur(48pt); border-radius: 999pt; opacity: 0.58;"><p></p></box></section>
<section image-layout="blank" id="iS0ZqKHBxi" vertical-align="start"><grid spacing="none" class="q-root q-light"><grid-item id="Xa6B7qTdRj" padding="40pt 48pt 44pt"><p role="eyebrow">Quarter close</p><h1 font-size="32pt">The quarter at a glance</h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer size="16pt"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="_tM_aEiBy2" background-color="palette-7" padding="12pt 16pt"><p font-size="17pt"><b>Executive read:</b> Growth and margin improved, while retention and cash finished below plan.</p></grid-item></grid><spacer size="16pt"></spacer><grid spacing="small" vertical-sizing="fill"><grid-item id="bxoOglNxTt" class="q-metric metric-stack" background-color="palette-7" padding="20pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Revenue</label></labels><display size="md" class="q-number metric-value">$24.8M</display><p font-size="16pt" class="q-number metric-delta"><span text-color="accent">+6% QoQ</span></p><p font-size="16pt" class="metric-definition">96% of plan</p></grid-item><grid-item id="uwPi0OceGr" class="q-metric metric-stack" background-color="palette-7" padding="20pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Gross margin</label></labels><display size="md" class="q-number metric-value">61%</display><p font-size="16pt" class="q-number metric-delta"><span text-color="accent">+2 percentage points</span></p><p font-size="16pt" class="metric-definition">1 percentage point below plan</p></grid-item><grid-item id="JV5m6oi778" class="q-metric q-signal-gate metric-stack" background-color="palette-7" padding="20pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Net revenue retention</label></labels><display size="md" class="q-number metric-value">108%</display><p font-size="16pt" class="q-number metric-delta"><span text-color="accent">−2 percentage points</span></p><p font-size="16pt" class="metric-definition">2 percentage points below plan</p></grid-item><grid-item id="QUc8rwj2Ah" class="q-metric metric-stack" background-color="palette-7" padding="20pt 16pt" colspan="15"><labels><label variant="outline" class="q-pill">Free cash flow</label></labels><display size="md" class="q-number metric-value">−$0.6M</display><p font-size="16pt" class="q-number metric-delta"><span text-color="accent">Improved $1.1M</span></p><p font-size="16pt" class="metric-definition">$0.2M below plan</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="qpV_g2PZBg" vertical-align="start"><grid spacing="none" class="q-root q-light"><grid-item id="yGnGeMgQqG" padding="36pt 42pt 38pt"><p role="eyebrow">Four-quarter trend</p><h1 font-size="31pt">Four quarters reveal a quality trade-off</h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer size="14pt"></spacer><grid divider="1pt neutral-border"><grid-item id="15eCYgHQaE" padding="8pt 16pt 8pt 0" colspan="20"><p role="eyebrow">Revenue · $M</p><h3 font-size="24pt" class="q-number"><span text-color="accent">$21.2M → $24.8M</span></h3><p role="caption">Displayed range: $20M–$25M</p><graph chart-type="line" show-data-labels="true" show-grid-lines="false" y-axis-min="20" config="{&quot;axes&quot;:{&quot;y&quot;:{&quot;max&quot;:25}},&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="240pt" height="155pt"><properties><property key="quarter" label="Quarter" type="label"></property><property key="revenue" label="Revenue ($M)" type="data"></property></properties><data><row><cell>Q1</cell><cell>21.2</cell></row><row><cell>Q2</cell><cell>22.1</cell></row><row><cell>Q3</cell><cell>23.4</cell></row><row><cell>Q4</cell><cell>24.8</cell></row></data></graph></grid-item><grid-item id="g8OKMT7E4G" padding="8pt 16pt" colspan="20"><p role="eyebrow">Gross margin · %</p><h3 font-size="24pt" class="q-number"><span text-color="accent">57% → 61%</span></h3><p role="caption">Displayed range: 56%–62%</p><graph chart-type="line" show-data-labels="true" show-grid-lines="false" y-axis-min="56" config="{&quot;axes&quot;:{&quot;y&quot;:{&quot;max&quot;:62}},&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="240pt" height="155pt"><properties><property key="quarter" label="Quarter" type="label"></property><property key="margin" label="Gross margin (%)" type="data"></property></properties><data><row><cell>Q1</cell><cell>57</cell></row><row><cell>Q2</cell><cell>58</cell></row><row><cell>Q3</cell><cell>59</cell></row><row><cell>Q4</cell><cell>61</cell></row></data></graph></grid-item><grid-item id="JfhP4Uwlsp" class="q-accent-rule" padding="8pt 0 8pt 16pt" colspan="20"><p role="eyebrow">Net revenue retention · %</p><h3 font-size="24pt" class="q-number"><span text-color="accent">114% → 108%</span></h3><p role="caption">Displayed range: 107%–115%</p><graph chart-type="line" show-data-labels="true" show-grid-lines="false" y-axis-min="107" config="{&quot;axes&quot;:{&quot;y&quot;:{&quot;max&quot;:115}},&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="240pt" height="155pt"><properties><property key="quarter" label="Quarter" type="label"></property><property key="retention" label="Net revenue retention (%)" type="data"></property></properties><data><row><cell>Q1</cell><cell>114</cell></row><row><cell>Q2</cell><cell>112</cell></row><row><cell>Q3</cell><cell>110</cell></row><row><cell>Q4</cell><cell>108</cell></row></data></graph></grid-item></grid><p font-size="16pt"><b>Acquisition and efficiency strengthened</b> while retention fell in each of the three observed quarter-to-quarter comparisons.</p></grid-item></grid></section>
<section image-layout="blank" id="W26UrJ_L-V" vertical-align="start" background-color="palette-5"><grid spacing="none" class="q-root q-dark"><grid-item id="WQzEduY5m_" padding="38pt 46pt 40pt"><p role="eyebrow"><span text-color="palette-3">Results bridge</span></p><h1 font-size="32pt"><span text-color="palette-7">New business funded the lift; churn gave back half</span></h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer size="18pt"></spacer><grid spacing="medium" vertical-sizing="fill"><grid-item id="vL4aF5Bp4A" cell-style="outline" padding="16pt 16pt 14pt" colspan="30"><p role="eyebrow"><span text-color="palette-3">Revenue bridge · $M</span></p><h3 font-size="23pt" class="q-number">$23.4M → $24.8M</h3><graph chart-type="waterfall" show-data-labels="true" show-grid-lines="false" y-axis-min="22" config="{&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="380pt" height="185pt" class="q-dark-chart"><properties><property key="driver" label="Driver" type="label"></property><property key="change" label="Revenue ($M)" type="data"></property></properties><data><row><cell>Prior</cell><cell>23.4</cell></row><row><cell>New</cell><cell>1</cell></row><row><cell>Expand</cell><cell>0.7</cell></row><row><cell>Price/mix</cell><cell>0.3</cell></row><row><cell>Churn</cell><cell>-0.5</cell></row><row><cell>FX</cell><cell>-0.1</cell></row></data></graph><p font-size="16pt"><b>Largest lift:</b> new business +$1.0M · <b>Largest leak:</b> churn −$0.5M</p></grid-item><grid-item id="HL8TodkstQ" cell-style="outline" padding="16pt 16pt 14pt" colspan="30"><p role="eyebrow"><span text-color="palette-3">Gross-margin bridge · percentage points</span></p><h3 font-size="23pt" class="q-number">59% → 61%</h3><graph chart-type="waterfall" show-data-labels="true" show-grid-lines="false" y-axis-min="58" config="{&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="380pt" height="185pt" class="q-dark-chart"><properties><property key="driver" label="Driver" type="label"></property><property key="change" label="Margin change (pp)" type="data"></property></properties><data><row><cell>Prior</cell><cell>59</cell></row><row><cell>Mix</cell><cell>1</cell></row><row><cell>Infra</cell><cell>0.8</cell></row><row><cell>Delivery</cell><cell>0.5</cell></row><row><cell>Discount</cell><cell>-0.3</cell></row></data></graph><p font-size="16pt"><b>Largest lift:</b> mix +1.0 pp · <b>Leakage:</b> discounting −0.3 pp</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="JHuukXK7_H" vertical-align="start" background-color="palette-5"><grid spacing="none" class="q-root q-dark"><grid-item id="WcJF1gVwcy" padding="38pt 48pt 42pt"><p role="eyebrow"><span text-color="palette-3">Leading indicators</span></p><h1 font-size="34pt"><span text-color="palette-7">Three leading risks could break the plan</span></h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer size="20pt"></spacer><grid spacing="medium" vertical-sizing="fill"><grid-item id="3mEoA7FwYU" class="risk-rail q-signal-gate" cell-style="outline" padding="20pt 18pt" colspan="20"><p role="eyebrow"><span text-color="palette-3">Demand</span></p><h2 font-size="31pt" class="q-number">2.7×</h2><p font-size="16pt">Pipeline coverage · <b>3.0× guardrail</b></p><hr color="palette-8" thickness="sm"><p font-size="16pt"><b>Trigger:</b> Below 2.8× at mid-quarter.</p><p font-size="16pt"><b>Action:</b> Rebalance coverage and inspect conversion by segment.</p><p font-size="16pt"><b>Owner:</b> Sales</p></grid-item><grid-item id="pqZMWhjQd3" class="risk-rail" cell-style="outline" padding="20pt 18pt" colspan="20"><p role="eyebrow"><span text-color="palette-3">Adoption</span></p><h2 font-size="31pt" class="q-number">18 days</h2><p font-size="16pt">Onboarding time · <b>14-day target</b></p><hr color="palette-8" thickness="sm"><p font-size="16pt"><b>Trigger:</b> Above 16 days at Day 30.</p><p font-size="16pt"><b>Action:</b> Deploy the pod and clear the oldest backlog first.</p><p font-size="16pt"><b>Owner:</b> Customer leadership</p></grid-item><grid-item id="XNHHFEkAQq" class="risk-rail" cell-style="outline" padding="20pt 18pt" colspan="20"><p role="eyebrow"><span text-color="palette-3">Concentration</span></p><h2 font-size="31pt" class="q-number">34%</h2><p font-size="16pt">Top-ten revenue · <b>30% guardrail</b></p><hr color="palette-8" thickness="sm"><p font-size="16pt"><b>Trigger:</b> Above 32% at Day 60.</p><p font-size="16pt"><b>Action:</b> Review exposure and accelerate diversified expansion plays.</p><p font-size="16pt"><b>Owner:</b> Finance</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="sq_QAwqrP2" vertical-align="start" background-color="card"><grid spacing="none" class="decision-root q-light"><grid-item id="i3wpmLJONf" background-color="palette-7" padding="40pt 44pt 44pt 50pt" colspan="36"><p role="caption"><b>Illustrative decision asks — not company data.</b></p><h1 font-size="31pt">Three leadership choices unlock the next quarter</h1><hr color="accent" thickness="sm" width="xs"><spacer size="16pt"></spacer><p role="caption"><span text-color="accent">01</span> · APPROVE</p><h2 font-size="36pt" class="q-display-tight">Invest $0.4M in an onboarding pod</h2><p font-size="17pt"><b>Illustrative target:</b> reduce onboarding from 18 to 14 days and recover 1 percentage point of retention.</p><p role="caption">Assumes the pod is staffed by Day 15 and customer mix remains broadly stable.</p><spacer mode="fill"></spacer><labels><label variant="outline" class="q-pill">CUSTOMER EXPANSION</label></labels></grid-item><grid-item id="RDhvoAeD4Z" background-color="palette-5" padding="40pt 36pt 40pt 28pt" colspan="24"><p role="caption"><span text-color="palette-3">FOLLOW-ON CHOICES</span></p><grid marker="number" marker-position="above" marker-numbering-start="2" marker-numbering-format="decimal-leading-zero" direction="vertical" spacing="small" vertical-sizing="fill" class="ask-stack"><grid-item id="CRKB6qwUSQ" class="ask-row" background-color="palette-2" padding="18pt 16pt"><p role="eyebrow"><span text-color="palette-7">APPROVE</span></p><h3 font-size="21pt"><span text-color="palette-7">Set a 12% discount guardrail</span></h3><p font-size="15pt"><span text-color="palette-7"><b>Illustrative target:</b> protect 0.3 percentage points of margin.</span></p><p role="caption"><span text-color="palette-7">Assumes current discount mix and CFO exception control.</span></p></grid-item><grid-item id="V18Y08rGhW" class="ask-row" background-color="palette-2" padding="18pt 16pt"><p role="eyebrow"><span text-color="palette-7">CONFIRM</span></p><h3 font-size="21pt"><span text-color="palette-7">Redirect two open commercial roles</span></h3><p font-size="15pt"><span text-color="palette-7">Move capacity from acquisition to expansion coverage.</span></p><p role="caption"><span text-color="palette-7">Assumes no change to the approved headcount envelope.</span></p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="iNnJmfQzUH" vertical-align="start" background-color="palette-5"><grid spacing="none" class="q-root q-dark"><grid-item id="5-p6W6o1Pt" padding="36pt 50pt 24pt"><p role="eyebrow"><span text-color="palette-3">Next-quarter execution</span></p><h1 font-size="32pt"><span text-color="palette-7">The next-quarter plan links actions to outcomes</span></h1><p role="caption"><b>Illustrative example — not company data.</b></p><spacer size="18pt"></spacer><grid spacing="medium" vertical-sizing="fill"><grid-item id="9AcOFvfJSI" vertical-align="center" colspan="40"><table col-widths="[24,76]" header-row="true" borders="rows" striped="false" class="q-table timeline-table"><tbody><tr><td><p>Timing</p></td><td><p>Action</p></td></tr><tr><td><p font-size="16pt" class="q-number">Days 1–30</p></td><td><p font-size="16pt">Staff the pod and publish pricing rules.</p></td></tr><tr><td><p font-size="16pt" class="q-number">Days 31–60</p></td><td><p font-size="16pt">Reduce onboarding backlog and activate expansion plays.</p></td></tr><tr><td><p font-size="16pt">Quarter end</p></td><td><p font-size="16pt">Scale only interventions that improve leading indicators.</p></td></tr></tbody></table></grid-item><grid-item id="k-_lnZdkKr" class="q-signal-gate timeline-gate" background-color="palette-2" padding="18pt 18pt 16pt" colspan="20"><p role="eyebrow"><span text-color="palette-7">Quarter-end outcomes</span></p><p role="caption"><span text-color="palette-7">Illustrative targets</span></p><grid divider="sm palette-3" direction="vertical"><grid-item id="V9iPxZdg96" padding="6pt 0"><h3 font-size="24pt" class="q-number"><span text-color="palette-7">$26.0M</span></h3><p role="caption"><span text-color="palette-7">Revenue</span></p></grid-item><grid-item id="s9L6wUjQT3" padding="6pt 0"><h3 font-size="24pt" class="q-number"><span text-color="palette-7">62%</span></h3><p role="caption"><span text-color="palette-7">Gross margin</span></p></grid-item><grid-item id="kHFD0hoPB3" padding="6pt 0"><h3 font-size="24pt" class="q-number"><span text-color="palette-7">109%</span></h3><p role="caption"><span text-color="palette-7">Net revenue retention</span></p></grid-item><grid-item id="Qpysh98XG5" padding="6pt 0"><h3 font-size="24pt" class="q-number"><span text-color="palette-7">+$0.2M</span></h3><p role="caption"><span text-color="palette-7">Free cash flow</span></p></grid-item></grid></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="TeELWZNEyB" vertical-align="start" background-color="palette-5" card-margin-hidden="true"><grid spacing="none" class="q-root q-dark"><grid-item id="Q9tfu4fXrV" padding="38pt 50pt 40pt"><p role="eyebrow"><span text-color="palette-3">Leadership close</span></p><h1 font-size="40pt"><span text-color="palette-7">Close the loop: decide, measure, adapt</span></h1><spacer size="18pt"></spacer><smart-layout variant="cycle" cell-size="10" color="#3155FF"><smart-layout-item><h4 font-size="18pt">Today · Decide</h4><p font-size="16pt">Approve, adjust, or defer the three choices.</p></smart-layout-item><smart-layout-item><h4 font-size="18pt">Day 30 · Measure</h4><p font-size="16pt">Track staffing, pricing, coverage, and onboarding.</p></smart-layout-item><smart-layout-item><h4 font-size="18pt">Day 60 · Review</h4><p font-size="16pt">Test retention trajectory and release contingencies.</p></smart-layout-item><smart-layout-item><h4 font-size="18pt">Quarter end · Adapt</h4><p font-size="16pt">Rebase the plan on revenue, margin, retention, and cash.</p></smart-layout-item></smart-layout><spacer size="16pt"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="uAJm4PUkZ_" background-color="palette-7" padding="10pt 16pt"><p font-size="16pt" align="center"><span text-color="palette-5"><b>Quarter-end evidence becomes the input to the next leadership review.</b></span></p></grid-item></grid></grid-item></grid><box type="content" x="814" y="422" w="92" h="58" sizing="fixed" background-color="palette-1" style="filter: blur(42pt); border-radius: 999pt; opacity: 0.44;"><p></p></box></section>