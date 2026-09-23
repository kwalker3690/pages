<HEAD><style>/* Lecture Hall — enlarged textbook figures. Palette and type route through theme variables. */
.gml-card {
  --lh-ink: var(--heading-color);
  --lh-signal: var(--accent-color);
  --lh-field: var(--card-color);
  --lh-soft: var(--surface-color);
  --lh-rule: var(--neutral-border-color);
  --lh-line: 1.5pt;
  --lh-radius: 6pt;
  font-variant-numeric: tabular-nums;
}

.gml-card p.gml-paragraph,
.gml-card .gml-table__cell,
.gml-card .gml-heading { font-variant-numeric: tabular-nums; }
.gml-card h3.gml-heading,
.gml-card h4.gml-heading { font-family: var(--body-font); }

/* Signature 1: the calm chalk field that holds every construction. */
.lh-chalk-field.gml-grid,
.lh-chalk-field.gml-grid-cell { --cell-default-bg: var(--lh-field); }

/* Signature 2: monumental projection type; scale comes from the theme ledger. */
.lh-monumental.gml-display,
.lh-monumental.gml-heading {
  letter-spacing: -0.035em;
  line-height: 0.95;
  text-wrap: balance;
}

/* Signature 3: exactly one authored teaching signal per construction. */
.lh-signal { --lh-signal-role: var(--lh-signal); }

/* Signature 4: large numbered lecture callouts with a single marker channel. */
.lh-callouts {
  --marker-inline-size: 34pt;
  --marker-gap: 12pt;
  --marker-color: var(--lh-ink);
  --marker-border-color: var(--lh-ink);
  --marker-border-width: 1.5pt;
  --grid-divider-color: var(--lh-rule);
  --grid-divider-width: 1px;
}

/* Signature 5: narrow subject figure rail; no radius or decorative plate. */
.lh-figure-rail.gml-grid-cell {
  --cell-radius: 0;
  min-width: 0;
}
.lh-figure-rail .gml-image { --figure-radius: 0; }

/* Signature 6: two-column image cargo with one deliberate seam grammar. */
.lh-figure-grid {
  --grid-divider-color: var(--lh-rule);
  --grid-divider-width: 1px;
  --grid-seam-inset: 0;
  --figure-radius: var(--lh-radius);
}

/* Signature 7: hero and divider imagery stays quiet behind monumental copy. */
.lh-image-break.gml-image { --figure-radius: 0; }

/* Signature 8: evidence images read as inspectable plates, not decoration. */
.lh-inspection-plate.gml-grid,
.lh-inspection-plate.gml-grid-cell {
  --grid-divider-color: var(--lh-rule);
  --grid-divider-width: 1px;
  --figure-radius: var(--lh-radius);
}

/* Native data remains a flat teaching instrument. */
.gml-chart {
  --gamma-chart-figure-background: transparent;
  --gamma-chart-background: transparent;
  --gamma-chart-border-color: transparent;
  --gamma-chart-grid-color: var(--lh-rule);
  --gamma-chart-grid-dasharray: 0;
  --gamma-chart-axis-line-color: var(--lh-ink);
  --gamma-chart-origin-line-color: var(--lh-ink);
  --gamma-chart-font-family: var(--body-font);
  --gamma-chart-text-color: var(--body-color);
  --gamma-chart-secondary-text-color: var(--body-color-muted);
  --gamma-chart-bar-rx: 0;
  --gamma-chart-bar-ry: 0;
  --gamma-chart-line-width: 3px;
  --gamma-chart-line-cap: square;
  --gamma-chart-area-opacity: 0.15;
  --gamma-chart-pie-stroke: var(--card-color);
  --gamma-chart-pie-stroke-width: 3px;
}

/* Restored native evidence-family hooks. */
.comparison-table {
  --table-border-color: var(--lh-ink);
  --table-border-width: 1.5px;
  --table-cell-padding: 12pt 14pt;
  --table-header-bg: transparent;
  --table-stripe-bg: transparent;
  --table-radius: 0;
}
.two-column-compare .gml-table__cell:first-child { width: 36%; }


/* People are organized around the human subject, not repeated as a figure-plus-ledger split. */
.lh-role-constellation,
.lh-role-stack {
  --grid-divider-color: var(--lh-rule);
  --grid-divider-width: 1px;
  --cell-icon-size: 28pt;
  --marker-color: var(--lh-ink);
  --marker-border-color: var(--lh-ink);
}</style></HEAD>
<section image-layout="blank" id="kRseG2m5qo" vertical-align="center"><grid direction="vertical" spacing="none"><grid-item id="NqXTOeSvXv" padding="24pt 48pt 14pt" rowspan="33"><grid spacing="large"><grid-item id="zcimOt-aG9" vertical-align="center" colspan="18"><display size="lg" class="lh-monumental lh-signal"><span text-color="accent">5.14</span></display><h3>Hours added by field inefficiency</h3></grid-item><grid-item id="qy53HksZ81" vertical-align="center" colspan="42"><p role="eyebrow">ALSINTAN EFFICIENCY · ILLUSTRATIVE 12 HA EXAMPLE</p><h1 font-size="44pt" class="lh-monumental">The gap is <span text-color="accent">five hours</span></h1><p>At 2.0 m and 5.0 km/h, theoretical capacity is 1.00 ha/hour. At 70% field efficiency, effective capacity is 0.70 ha/hour.</p><p>Required time rises from <b>12.00</b> to <b>17.14 hours</b>.</p></grid-item></grid></grid-item><grid-item id="3_ARknlih6" background-color="surface" padding="6pt 48pt 8pt" rowspan="27"><grid spacing="large"><grid-item id="B6opMr2Y7A" vertical-align="center" colspan="36"><graph chart-type="bar" show-data-labels="true" y-axis-min="0" bar-width="0.55" config="{&quot;appearance&quot;:{&quot;customSeriesColors&quot;:{&quot;series1&quot;:{&quot;color&quot;:&quot;#131A2B&quot;},&quot;series2&quot;:{&quot;color&quot;:&quot;#B23A2E&quot;}}},&quot;legend&quot;:{&quot;position&quot;:&quot;none&quot;}}" width="500pt" height="112pt"><properties><property key="basis" label="Time basis" type="label"></property><property key="hours" label="Hours" type="data"></property></properties><data><row><cell>Theoretical work</cell><cell>12</cell></row><row><cell>Field time at 70%</cell><cell>17.14</cell></row></data></graph><p role="caption">Illustrative 12 ha replacement; source document not provided.</p></grid-item><grid-item id="sEno_4bhjl" vertical-align="center" colspan="24"><h4>The 5.14-hour gap can contain</h4><ul><li>Headland turning</li><li>Overlap and adjustment</li><li>Refill waiting</li><li>Stoppages</li></ul></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="w6yw23W6h3"><grid spacing="none"><grid-item id="nzyBrOrjv4" class="lh-chalk-field"><h2 class="lh-monumental">Three numbers define field efficiency</h2><grid spacing="medium" vertical-sizing="hug"><grid-item id="9Doza8UO2k" padding="14pt 0" colspan="25"><p role="eyebrow">INPUTS</p><grid divider="sm neutral-border" direction="vertical" vertical-sizing="hug" padding="6pt 0"><grid-item id="hoDqp7fDr0"><h4 font-size="20pt">Working width</h4><p font-size="18pt">Metres covered in each pass.</p></grid-item><grid-item id="sw7jo52sls"><h4 font-size="20pt">Operating speed</h4><p font-size="18pt">Kilometres travelled per hour under field conditions.</p></grid-item><grid-item id="8RMtN9DxtN"><h4 font-size="20pt"><span text-color="accent">Field efficiency</span></h4><p font-size="18pt">Effective capacity divided by theoretical capacity; enter it as a decimal. It captures turning, overlap, refilling, adjustment and stoppage losses.</p></grid-item></grid></grid-item><grid-item id="fIITyokRD3" background-color="surface" align="center" vertical-align="center" padding="16pt" colspan="17"><p role="eyebrow">CORE RELATIONSHIP</p><formula>C_e=\frac{W\times S\times E_f}{10}</formula><p font-size="17pt"><math>W</math> in metres; <math>S</math> in kilometres per hour; <math>C_e</math> in hectares per hour.</p></grid-item><grid-item id="9ZOSfnxziI" background-color="surface" padding="16pt" colspan="18"><p role="eyebrow">REFERENCE EQUATIONS</p><grid divider="sm neutral-border" direction="vertical" vertical-sizing="hug" padding="8pt 0"><grid-item id="DjEHapjSIL"><h4 font-size="18pt">Theoretical capacity</h4><formula>C_t=\frac{W\times S}{10}</formula></grid-item><grid-item id="Af_QlOqhfm"><h4 font-size="18pt">Field efficiency</h4><formula>E_f=\frac{C_e}{C_t}</formula></grid-item><grid-item id="HIlXZmlIOh"><h4 font-size="18pt">Cost per hectare</h4><formula>\text{Cost/ha}=\frac{\text{hourly cost}}{C_e}</formula></grid-item></grid></grid-item></grid><p role="caption">Method: <a href="https://www.extension.iastate.edu/agdm/crops/html/a3-24.html">Iowa State University Extension, “Estimating the Field Capacity of Farm Machines” (A3-24)</a>.</p></grid-item></grid></section>
<section image-layout="blank" id="5hxrZ8loMM" vertical-align="center"><grid spacing="none"><grid-item id="bEVGMzsQv-" class="lh-chalk-field"><h2 class="lh-monumental">Efficiency is won across five stages</h2><p>Each stage controls a different source of lost time or poor work quality.</p><grid divider="sm neutral-border"><grid-item id="obUTcZblev" background-color="surface" colspan="36"><p role="eyebrow">BEFORE THE PASS</p><grid divider="sm neutral-border"><grid-item id="eU2LI2KFOw" colspan="20"><h4>Plan</h4><p>Field shape, access and work window.</p></grid-item><grid-item id="PNZsJ6dh_C" colspan="20"><h4>Select</h4><p>Implement, tractor power and expected use.</p></grid-item><grid-item id="kl_LoVAnlJ" colspan="20"><h4>Set up</h4><p>Width, depth, pressure and inputs.</p></grid-item></grid></grid-item><grid-item id="HHRovM9VOi" colspan="24"><p role="eyebrow">IN THE FIELD · AFTER</p><grid divider="sm neutral-border"><grid-item id="VZKctiOlQR" colspan="30"><h4>Operate</h4><p>Speed, overlap, turns and refill waiting.</p></grid-item><grid-item id="PEgIGo2d8q" colspan="30"><h4><span text-color="accent">Verify</span></h4><p>Quality, losses and corrections.</p></grid-item></grid></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="j4rPCFJywa" background-color="palette-1" padding="12pt 18pt"><p align="center"><b>VERIFY ↺ PLAN</b> · Inspection and loss records reset the next work plan.</p></grid-item></grid><p role="caption" align="center">Field efficiency is the accumulated result of decisions made before, during and after the pass.</p></grid-item></grid></section>
<section image-layout="blank" id="YuI1Ribv82"><grid divider="2pt palette-2"><grid-item id="slcsd29vPN" background-color="surface" vertical-align="center" colspan="22"><p role="eyebrow">ILLUSTRATIVE OPTIONS · SAME TASK</p><h2 class="lh-monumental">Select the system, not the biggest machine</h2><p role="caption">Lower cost per hectare matters only when the complete system remains workable.</p><spacer mode="fill"></spacer><p><b>Select B only if</b> power, hitch, soil load, transport width, access and annual use are acceptable.</p><p role="caption">Illustrative USD; excludes taxes, financing terms and location-specific subsidies or policy effects.</p></grid-item><grid-item id="rbblpfRSP0" vertical-align="center" colspan="38"><table col-widths="[30,35,35]" header-row="true" borders="rows" striped="false" class="comparison-table" style="--table-cell-padding: 8pt 10pt;"><tbody><tr><td><p>Measure</p></td><td><p>Option A</p></td><td background-color="surface"><p>Option B</p></td></tr><tr><td><p><b>Width × speed</b></p></td><td><p><math>2.0\,m\times5.0\,km/h</math></p></td><td background-color="surface"><p><math>3.0\,m\times6.0\,km/h</math></p></td></tr><tr><td><p><b>Efficiency</b></p></td><td><p>0.70</p></td><td background-color="surface"><p>0.75</p></td></tr><tr><td><p><b>Capacity</b></p></td><td><p>0.70 ha/hour</p></td><td background-color="surface"><p>1.35 ha/hour</p></td></tr><tr><td><p><b>Hourly cost</b></p></td><td><p>$54/hour</p></td><td background-color="surface"><p>$78/hour</p></td></tr><tr><td><p><b>Cost/ha</b></p></td><td><p>$77.14/ha</p></td><td background-color="surface"><p><b>$57.78/ha</b></p></td></tr></tbody></table><p role="caption">Option A: 2.0 × 5.0 × 0.70 ÷ 10. Option B: 3.0 × 6.0 × 0.75 ÷ 10.</p></grid-item></grid></section>
<section image-layout="blank" id="c6o9WFR37H"><grid spacing="none"><grid-item id="0sc8X6blHE"><p role="eyebrow">ILLUSTRATIVE WORKED EXAMPLE</p><h2 class="lh-monumental">Reproduce the 12 ha calculation</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="RjwSgJC_ac" colspan="39"><grid divider="sm neutral-border" marker="number" marker-style="outline" marker-shape="circle" marker-position="inline" marker-numbering-format="decimal-leading-zero" direction="vertical" spacing="none" vertical-sizing="fill" padding="4pt 0" class="lh-callouts"><grid-item id="d15xSTO-h3"><h4>Enter the inputs</h4><p font-size="18pt">Width 2.0 m · speed 5.0 km/h · efficiency 0.70 · hourly cost $54.</p></grid-item><grid-item id="Qqb4v6Ntsu"><h4>Calculate capacity</h4><p><math>2.0\times5.0\times0.70\div10=0.70</math> ha/hour</p></grid-item><grid-item id="Hb07FgMc-v"><h4>Calculate cost per hectare</h4><p><math>\$54\div0.70=\$77.14/\text{ha}</math></p></grid-item><grid-item id="Gftfiwzfix"><h4>Extend to the full field</h4><p><math>\$54\times12\div0.70=\$925.71</math></p></grid-item></grid></grid-item><grid-item id="FONfVpAS0S" background-color="palette-2" vertical-align="center" padding="18pt" colspan="21"><p role="eyebrow">OUTPUT</p><display size="md" font-size="48pt" class="lh-monumental">0.70</display><p role="caption">ha/hour</p><hr color="palette-3" thickness="sm"><display size="md" font-size="40pt" class="lh-monumental">$77.14</display><p role="caption">per hectare</p><hr color="palette-3" thickness="sm"><display size="md" font-size="40pt" class="lh-monumental">$925.71</display><p role="caption">12 ha total</p></grid-item></grid><p role="caption">Cost method: <a href="https://www.extension.iastate.edu/agdm/crops/html/a3-29.html">Iowa State University Extension</a>. Illustrative USD.</p></grid-item></grid></section>
<section image-layout="blank" id="LPV0259lr9"><grid spacing="none"><grid-item id="W9Pc5aKgox"><h2 class="lh-monumental">Turn measured losses into actions</h2><p>Diagnose the signal before changing machine size or operating speed.</p><table col-widths="[22,31,47]" header-row="true" borders="rows" striped="false" class="comparison-table" style="--table-cell-padding: 7pt 10pt;"><tbody><tr><td><p>Signal</p></td><td><p>Likely cause to test</p></td><td background-color="surface"><p>First action</p></td></tr><tr><td><p font-size="18pt"><span text-color="accent"><b>Low field efficiency</b></span></p></td><td><p font-size="18pt">Turning and refill waiting</p></td><td background-color="surface"><p font-size="18pt">Time each loss; redesign routes and stage inputs, then remeasure working time.</p></td></tr><tr><td><p font-size="18pt"><b>Low capacity</b></p></td><td><p font-size="18pt">Width, speed or power mismatch</p></td><td background-color="surface"><p font-size="18pt">Verify actual width and speed against tractor power without sacrificing work quality.</p></td></tr><tr><td><p font-size="18pt"><b>High cost/ha</b></p></td><td><p font-size="18pt">Idle time, fuel, repairs or low annual use</p></td><td background-color="surface"><p font-size="18pt">Separate hourly-cost drivers and utilization; target the largest controllable cause.</p></td></tr><tr><td><p font-size="18pt"><b>Poor quality</b></p></td><td><p font-size="18pt">Overlap, misses or incorrect depth</p></td><td background-color="surface"><p font-size="18pt">Measure the defect and recalibrate before increasing speed.</p></td></tr></tbody></table><grid spacing="none" vertical-sizing="hug"><grid-item id="1wijUcCQr5" background-color="palette-2" padding="10pt 16pt"><p font-size="18pt" align="center"><b>Track together:</b> ha/hour · field efficiency · cost/ha · fuel/ha · downtime · work quality</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="aIrDqNexJJ" vertical-align="center"><grid spacing="none" vertical-sizing="fill"><grid-item id="SdCjukH-lM" vertical-align="center"><p role="eyebrow">ILLUSTRATIVE SCENARIO</p><h2 class="lh-monumental">Case study: remove waiting before adding power</h2><p font-size="18pt">Better headland routing and staged inputs raise assumed efficiency from 0.70 to 0.82; width and speed remain unchanged. Hourly cost stays at $54, and any added staging cost is excluded.</p><table col-widths="[36,32,32]" header-row="true" borders="rows" striped="false" class="comparison-table two-column-compare" style="--table-cell-padding: 5pt 12pt;"><tbody><tr><td><p>Measure</p></td><td><p>Before</p></td><td background-color="surface"><p>After</p></td></tr><tr><td><p><b>Field efficiency</b></p></td><td><p>0.70</p></td><td background-color="surface"><p>0.82</p></td></tr><tr><td><p><b>Effective capacity</b></p></td><td><p>0.70 ha/hour</p></td><td background-color="surface"><p>0.82 ha/hour</p></td></tr><tr><td><p><b>Required time · 12 ha</b></p></td><td><p>17.14 hours</p></td><td background-color="surface"><p>14.63 hours</p></td></tr><tr><td><p><b>Cost/ha</b></p></td><td><p>$77.14/ha</p></td><td background-color="surface"><p>$65.85/ha</p></td></tr><tr><td><p><b>Total cost</b></p></td><td><p>$925.71</p></td><td background-color="surface"><p>$790.24</p></td></tr></tbody></table><grid divider="sm neutral-border" spacing="none"><grid-item id="NwUtUZuvNN" align="center" vertical-align="center" colspan="20"><display size="md" font-size="43pt" class="lh-monumental">2.51</display><p role="caption" align="center">hours saved</p></grid-item><grid-item id="ELsCK_92kd" align="center" vertical-align="center" colspan="20"><display size="md" font-size="43pt" class="lh-monumental">$135.47</display><p role="caption" align="center">saved</p></grid-item><grid-item id="C_IOyW19V2" align="center" vertical-align="center" colspan="20"><display size="md" font-size="43pt" class="lh-monumental"><span text-color="accent">14.6%</span></display><p role="caption" align="center">less time and cost</p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="yzaxIBeIcS" vertical-align="center"><grid divider="sm neutral-border" spacing="none" vertical-sizing="fill"><grid-item id="Q6sGgrz8Cu" class="lh-chalk-field" padding-right="30pt" colspan="25"><p role="eyebrow">THE FIELD RULE</p><h2 class="lh-monumental">Measure.<br>Diagnose.<br>Improve.</h2><display size="md" font-size="44pt" class="lh-monumental">MAKE THE LOSS <span text-color="accent">VISIBLE</span></display><spacer mode="fill"></spacer><h3>Which lost minute can we eliminate more cheaply than buying capacity?</h3></grid-item><grid-item id="XCxANL95g4" padding-left="30pt" colspan="35"><p role="eyebrow">THE OPERATING LOOP</p><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="TjHEtUdDsB" colspan="20"><h4>Measure</h4><p font-size="sm">Capacity, field efficiency, and work quality in real conditions.</p></grid-item><grid-item id="D-4nMg3uiH" colspan="20"><h4>Diagnose</h4><p font-size="sm">Separate turning, waiting, adjustment, and stoppage. Compare viable systems and cost/ha.</p></grid-item><grid-item id="2MR065xAjg" colspan="20"><h4><span text-color="accent">Improve</span></h4><p font-size="sm">Change routing, logistics, calibration, or maintenance; then remeasure.</p></grid-item></grid><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="2NH6Wb7r5T" background-color="surface" padding="12pt 16pt"><p align="center"><b>Buy added capacity only when the loop shows the loss cannot be removed more cheaply.</b></p></grid-item></grid></grid-item></grid></section>