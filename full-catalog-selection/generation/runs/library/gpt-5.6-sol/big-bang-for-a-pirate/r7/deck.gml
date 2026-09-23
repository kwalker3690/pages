<HEAD><style>/* Star Trails treatment sheet: one luminous mechanism per card, never wallpaper. */
.gml-card {
  --trail-cyan: var(--accent-color);
  --trail-gold: var(--palette-2);
  --trail-violet: var(--palette-3);
  --trail-airglow: var(--palette-4);
  --image-scrim: var(--palette-8);
}

/* Recorded-light field: imagery or a single rule supplies the trail; this class keeps it crisp and square. */
.trail-field .gml-figure,
.trail-field.gml-figure { --figure-radius: 0; }
.trail-field .gml-divider,
.trail-field.gml-divider { --divider-color: var(--trail-gold); --divider-thickness: 1pt; }

/* Airglow seam: one warm threshold line between real information planes. */
.airglow-seam { --grid-divider-color: var(--trail-airglow); --grid-divider-width: 1pt; }
.airglow-seam .gml-grid-cell__seam {
  border-color: var(--trail-airglow);
  box-shadow: 0 0 3pt color-mix(in srgb, var(--trail-airglow) 12%, transparent);
}

/* Exposure ledger: aligned peers, native numbering, and continuous cool seams. */
.exposure-ledger {
  --grid-divider-color: var(--neutral-border-color);
  --grid-seam-inset: 14pt;
  --marker-inline-size: 34pt;
  --marker-gap: 14pt;
}
.exposure-ledger .gml-grid-cell__seam {
  border-color: var(--neutral-border-color);
  box-shadow: none;
}
.exposure-ledger .gml-grid-cell {
  --marker-color: var(--trail-cyan);
  --marker-font-size: calc(11 * var(--type-anchor, 1pt));
  --marker-font-weight: 500;
  --marker-gap: 14pt;
}
.exposure-ledger .gml-grid-cell__marker {
  font-family: var(--label-font, var(--body-font));
  letter-spacing: 0.08em;
}
.exposure-ledger.marker-left .gml-cell-label {
  float: left;
  margin: 0 var(--marker-gap) 0 0;
}
.exposure-ledger.marker-left .gml-cell-label + .gml-heading {
  padding-top: 2pt;
}

/* Orbit stage: native smart layouts keep recurrence editable and on-theme. */
.orbit-stage.gml-smart-layout,
.orbit-stage .gml-smart-layout { margin-block-start: var(--heading-gap-above); }

/* Signal trace: Graphy stays a scientific plot, not a dashboard. */
.signal-chart.gml-chart,
.signal-chart .gml-chart {
  --gamma-chart-figure-background: transparent;
  --gamma-chart-background: transparent;
  --gamma-chart-grid-color: color-mix(in srgb, var(--body-color) 14%, transparent);
  --gamma-chart-grid-dasharray: 2 5;
  --gamma-chart-border-color: transparent;
  --gamma-chart-axis-line-color: transparent;
  --gamma-chart-origin-line-color: color-mix(in srgb, var(--body-color) 38%, transparent);
  --gamma-chart-text-color: var(--body-color-muted);
  --gamma-chart-secondary-text-color: var(--body-color-muted);
  --gamma-chart-legend-background: transparent;
  --gamma-chart-legend-border-color: transparent;
  --gamma-chart-legend-item-background: transparent;
  --gamma-chart-legend-item-border: none;
  --gamma-chart-legend-item-shadow: none;
  --gamma-chart-legend-text-color: var(--heading-color);
  --gamma-chart-line-width: 2px;
  --gamma-chart-line-cap: round;
  --gamma-chart-area-opacity: 0.1;
  --gamma-chart-bar-rx: 1px;
  --gamma-chart-bar-ry: 1px;
  --gamma-chart-pie-stroke: var(--card-color);
  --gamma-chart-pie-stroke-width: 2px;
}

/* Night evidence plate: a square crop with one physical baseline, no ornamental frame. */
.night-plate .gml-figure,
.night-plate.gml-figure { --figure-radius: 0; margin: 0; }
.night-plate .gml-figure + .gml-paragraph,
.night-plate .gml-figure + .gml-heading,
.night-plate.gml-figure + .gml-paragraph,
.night-plate.gml-figure + .gml-heading {
  border-top: 1pt solid var(--neutral-border-color);
  padding-top: 8pt;
}

/* Image-safe ink: full-bleed night photography stays dark under either theme skin. */
.image-ink {
  --heading-color: var(--palette-7);
  --body-color: var(--palette-7);
  --body-color-muted: var(--palette-7);
  --divider-color: var(--palette-7);
}
.image-ink .gml-display,
.image-ink.gml-display { color: var(--palette-7); }
.image-ink-plate {
  background-color: color-mix(in srgb, var(--image-scrim) 84%, transparent);
  --heading-color: var(--palette-7);
  --body-color: var(--palette-7);
  --body-color-muted: var(--palette-7);
  --divider-color: var(--palette-7);
}
.image-ink-plate .gml-display,
.image-ink-plate.gml-display { color: var(--palette-7); }

/* Capture metadata: sparse mono provenance that earns its place. */
p.gml-paragraph.capture-meta {
  border-top: 1pt solid var(--neutral-border-color);
  padding-top: 10pt;
  color: var(--body-color-muted);
}

/* Supporting families used by dense evidence, figures, and the final ask. */
.metric .gml-display,
.metric.gml-display { color: var(--heading-color); }
.evidence .gml-table,
.evidence.gml-table { --table-border-color: var(--neutral-border-color); --table-cell-padding: 10pt 14pt; }
.evidence .gml-table__row[data-header] .gml-table__cell,
.evidence.gml-table .gml-table__row[data-header] .gml-table__cell {
  font-family: var(--label-font, var(--body-font));
  letter-spacing: 0.08em;
  text-transform: uppercase;
  font-size: calc(11 * var(--type-anchor, 1pt));
}
.prose .gml-grid-cell__content { --block-gap: 12pt; --heading-gap-above: 12pt; }
.prose p.gml-paragraph { line-height: 1.5; }
.recommendation { --grid-divider-color: var(--neutral-border-color); --grid-seam-inset: 15pt; }
.panel .gml-paragraph { line-height: 1.4; }

/* Running folios remain precise but quiet. */
.gml-card__footer {
  font-family: var(--caption-font, var(--body-font));
  letter-spacing: 0.08em;
  font-size: calc(10.5 * var(--type-anchor, 1pt));
  color: var(--body-color-muted);
}</style></HEAD>
<section image-layout="blank" id="3306EtxL4q" background-overlay="tint" background-overlay-intensity="0.2" card-margin-hidden="true"><img class="trail-field night-plate" src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/LgWWD95EQ7b0ziPdf6Wea.png" saved-media-id="z9j8a0pu6hsz9m3" source="image.ai-generated" background="true" image-style="long-exposure-documentary" alt="Long-exposure documentary photography of a precision telescope at a dark coastal observatory, its aperture aimed above a low ocean horizon beneath physically plausible curved star trails, broad near-black sky and quiet shadow across the left half, restrained cyan-white instrument highlights, pale-gold practical light, a narrow warm olive-amber atmospheric threshold, deep separated shadow detail, no neon cyberpunk, no fantasy space art, no visible logos, no legible text" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"><grid spacing="none"><grid-item id="tVGJINaqfG" colspan="42"><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug" class="image-ink image-ink-plate"><grid-item id="S0ACWebHW-" padding="18pt 22pt 26pt"><display size="md">Captain, reverse the telescope</display><hr color="accent" thickness="sm" width="xxs"><h3 role="subheading">No shore, no center—a pirate’s guide to the Big Bang</h3><p><b>Across distant galaxies, a shared clue appears:</b> the universe is not debris racing from one blast point. Space itself has been stretching for about 13.8 billion years.</p><p role="caption">COURSE / EXPANSION / COOLING / EVIDENCE</p></grid-item></grid></grid-item><spacer span="18"></spacer></grid></section>
<section image-layout="blank" id="wA-AshrKqe"><grid divider="1pt palette-4" spacing="none" class="airglow-seam"><grid-item id="7ya31SHFIi" align="center" vertical-align="center" padding="48pt 24pt 48pt 44pt" colspan="22"><p role="eyebrow" align="center">COSMIC HISTORY</p><display size="xl" class="metric">13.8</display><p font-size="lg" align="center">billion years</p><p role="caption" align="center">APPROXIMATE AGE</p></grid-item><grid-item id="iIS3F1uvmQ" vertical-align="center" padding="48pt 44pt 48pt 30pt" colspan="38"><h2>The log begins hot and dense</h2><p>The Big Bang model begins with the observable universe in an extremely hot, dense early state. As space expanded, the universe cooled.</p><p>The age dates this cosmic history; it is not a bomb’s launch time in a pre-existing void. That distinction is the first entry in the log.</p><p role="caption" class="capture-meta">SOURCE / <a href="https://science.nasa.gov/universe/overview/">NASA UNIVERSE OVERVIEW</a></p></grid-item></grid></section>
<section image-layout="blank" id="dzxTP-cRXB"><grid spacing="none"><grid-item id="39oYUex2UQ" padding="42pt 18pt 50pt 44pt" colspan="17"><p role="eyebrow">TEACHING ANALOGY</p><h2 font-size="30pt">Stretch the chart—not the ships</h2><p font-size="18pt"><b>Chart test:</b> mark three widely separated galaxies on a flexible grid, then enlarge the grid. Every pair grows farther apart; no marker becomes the privileged center.</p><spacer mode="fill"></spacer><p role="caption">LARGE-SCALE, GRAVITATIONALLY UNBOUND GALAXIES<br>BOUND SYSTEMS SUCH AS GALAXIES ARE NOT SIMPLY STRETCHED</p></grid-item><grid-item id="M4NXghZ9yE" vertical-align="center" padding="32pt 30pt 30pt 12pt" colspan="43"><custom-code><style>.expansion-board{font-family:var(--body-font);font-size:1.125em;color:var(--body-color)}.expansion-board svg{display:block;width:100%;height:auto}.expansion-board .panel{fill:color-mix(in srgb,var(--surface-color) 88%,var(--accent-color));stroke:var(--neutral-border-color);stroke-width:1}.expansion-board .gridline{stroke:color-mix(in srgb,var(--neutral-border-color) 55%,var(--body-color));stroke-width:1.2;opacity:.75}.expansion-board .pair{fill:none;stroke:var(--accent-color);stroke-width:2;stroke-dasharray:5 5}.expansion-board .marker{fill:var(--palette-2);stroke:var(--card-color);stroke-width:3}.expansion-board .arrow{stroke:var(--palette-4);stroke-width:2}.expansion-board text{fill:var(--body-color);font-family:var(--body-font)}.expansion-board .label{font-family:var(--heading-font);fill:var(--heading-color);font-size:1em;font-weight:600}.expansion-board .meta{font-size:.67em;letter-spacing:.07em}.expansion-board .id{font-size:.75em;font-weight:700;fill:var(--card-color)}</style><div class="expansion-board"><svg width="680" height="300" viewBox="0 0 680 300" role="img" aria-label="The same three galaxy markers on a coordinate grid before and after both grid axes expand uniformly"><text class="label" x="20" y="23">Before</text><text class="meta" x="20" y="44">SAME MARKERS</text><text class="meta" x="20" y="58">SMALLER GRID INTERVALS</text><rect class="panel" x="20" y="72" width="240" height="210"></rect><line class="gridline" x1="60" y1="72" x2="60" y2="282"></line><line class="gridline" x1="100" y1="72" x2="100" y2="282"></line><line class="gridline" x1="140" y1="72" x2="140" y2="282"></line><line class="gridline" x1="180" y1="72" x2="180" y2="282"></line><line class="gridline" x1="220" y1="72" x2="220" y2="282"></line><line class="gridline" x1="20" y1="112" x2="260" y2="112"></line><line class="gridline" x1="20" y1="152" x2="260" y2="152"></line><line class="gridline" x1="20" y1="192" x2="260" y2="192"></line><line class="gridline" x1="20" y1="232" x2="260" y2="232"></line><line class="gridline" x1="20" y1="272" x2="260" y2="272"></line><polyline class="pair" points="60,112 140,152 100,192 60,112"></polyline><circle class="marker" cx="60" cy="112" r="9"></circle><circle class="marker" cx="140" cy="152" r="9"></circle><circle class="marker" cx="100" cy="192" r="9"></circle><text class="id" x="56" y="116">A</text><text class="id" x="136" y="156">B</text><text class="id" x="96" y="196">C</text><text class="meta" x="340" y="137" text-anchor="middle">UNIFORM SCALE</text><text class="meta" x="340" y="152" text-anchor="middle">BOTH AXES</text><text class="meta" x="340" y="167" text-anchor="middle">NO MARKED ORIGIN</text><line class="arrow" x1="285" y1="181" x2="390" y2="181"></line><polygon points="400,181 386,173 386,189" fill="var(--palette-4)"></polygon><text class="label" x="420" y="23">After</text><text class="meta" x="420" y="44">SAME MARKERS</text><text class="meta" x="420" y="58">LARGER GRID INTERVALS</text><rect class="panel" x="420" y="72" width="240" height="210"></rect><line class="gridline" x1="480" y1="72" x2="480" y2="282"></line><line class="gridline" x1="540" y1="72" x2="540" y2="282"></line><line class="gridline" x1="600" y1="72" x2="600" y2="282"></line><line class="gridline" x1="420" y1="132" x2="660" y2="132"></line><line class="gridline" x1="420" y1="192" x2="660" y2="192"></line><line class="gridline" x1="420" y1="252" x2="660" y2="252"></line><polyline class="pair" points="480,132 600,192 540,252 480,132"></polyline><circle class="marker" cx="480" cy="132" r="9"></circle><circle class="marker" cx="600" cy="192" r="9"></circle><circle class="marker" cx="540" cy="252" r="9"></circle><text class="id" x="476" y="136">A</text><text class="id" x="596" y="196">B</text><text class="id" x="536" y="256">C</text></svg></div></custom-code><p role="caption">SCHEMATIC, NOT TO SCALE / BOTH AXES EXPAND TOGETHER / DISTANCES CHANGE; NO SHIPS CROSS AN OUTER OCEAN</p></grid-item></grid></section>
<section image-layout="blank" id="iOscfeuV6O"><grid spacing="none"><grid-item id="5828DU81Ob"><h2>Expansion cools the cosmos</h2><p font-size="19pt"><b>As the universe expands, it cools—and what matter and light can do changes.</b> Three waypoints mark the course.</p><spacer mode="fill"></spacer><smart-layout variant="timeline" orientation="horizontal" two-sided="false" cell-size="15"><smart-layout-item><h4>First few minutes</h4><p font-size="18pt">Atomic nuclei form in the hot young universe.</p></smart-layout-item><smart-layout-item><h4>≈380,000 years</h4><p font-size="18pt">Neutral atoms form, and light can travel freely.</p></smart-layout-item><smart-layout-item><h4>Hundreds of millions of years</h4><p font-size="18pt">Stars and galaxies emerge after further cooling and structure growth.</p></smart-layout-item></smart-layout><spacer mode="fill"></spacer><p role="caption">SCHEMATIC COURSE, NOT TO SCALE / EXPANSION → COOLING → NEW STRUCTURES / SOURCE: <a href="https://science.nasa.gov/universe/overview/">NASA UNIVERSE OVERVIEW</a></p></grid-item></grid></section>
<section image-layout="blank" id="IsfZ-h4pWf"><grid spacing="none"><grid-item id="RMkbOlsq8w"><h2>Redshift: light keeps the wake</h2><p>During a galaxy’s light voyage, expanding space stretches the light’s wavelength toward longer, redder bands. This is <b>cosmological redshift</b>.</p><custom-code>
        <style>
          .redshift-mech { font-family: var(--body-font); color: var(--body-color); }
          .redshift-mech svg { display: block; }
          .redshift-mech .rail { stroke: var(--neutral-border-color); stroke-width: 1; }
          .redshift-mech .wave-a { fill: none; stroke: var(--accent-color); stroke-width: 3; stroke-linejoin: round; }
          .redshift-mech .wave-b { fill: none; stroke: var(--palette-2); stroke-width: 3; stroke-linejoin: round; }
          .redshift-mech .travel { stroke: var(--palette-4); stroke-width: 2; }
          .redshift-mech text { fill: var(--body-color); font-family: var(--body-font); }
          .redshift-mech .label { fill: var(--heading-color); font-family: var(--heading-font); font-size: 0.85em; font-weight: 600; }
          .redshift-mech .meta { font-size: 0.62em; letter-spacing: 0.08em; }
        </style>
        <div class="redshift-mech">
          <svg width="820" height="220" viewBox="0 0 820 220" role="img" aria-label="A light wave shown with a shorter wavelength at emission and a longer wavelength after traveling through expanding space">
            <text class="label" x="18" y="46">Emitted</text>
            <text class="meta" x="18" y="65">SHORTER WAVELENGTH</text>
            <line class="rail" x1="160" y1="66" x2="800" y2="66"></line>
            <polyline class="wave-a" points="160,66 180,46 200,66 220,86 240,66 260,46 280,66 300,86 320,66 340,46 360,66 380,86 400,66 420,46 440,66 460,86 480,66 500,46 520,66 540,86 560,66 580,46 600,66 620,86 640,66 660,46 680,66 700,86 720,66 740,46 760,66 780,86 800,66"></polyline>

            <line class="travel" x1="250" y1="111" x2="690" y2="111"></line>
            <polygon points="690,111 676,103 676,119" fill="var(--palette-4)"></polygon>
            <text class="meta" x="365" y="101">SPACE EXPANDS DURING TRAVEL</text>

            <text class="label" x="18" y="166">Observed</text>
            <text class="meta" x="18" y="185">LONGER / REDDER</text>
            <line class="rail" x1="160" y1="176" x2="800" y2="176"></line>
            <polyline class="wave-b" points="160,176 210,146 260,176 310,206 360,176 410,146 460,176 510,206 560,176 610,146 660,176 710,206 760,176 800,152"></polyline>
          </svg>
        </div>
      </custom-code><p>Across distant galaxies, this shared pattern is evidence that space expanded while their light traveled. It is a stretched signal—not dye, smoke, or a red sail.</p><p role="caption" class="capture-meta">SOURCE / <a href="https://science.nasa.gov/mission/hubble/science/science-behind-the-discoveries/hubble-big-bang/">NASA / HUBBLE BIG BANG SCIENCE</a></p></grid-item></grid></section>
<section image-layout="blank" id="3YyKHOOw_k"><grid spacing="none"><grid-item id="pPoF6AipIn" padding="40pt 18pt 36pt 44pt" colspan="25"><p role="eyebrow">OBSERVATIONAL EVIDENCE</p><h2>Relic light on every horizon</h2><p font-size="18pt">About 380,000 years after the hot beginning, atoms became neutral and relic light traveled freely. Expansion stretched it into microwaves.</p><h3>What observers measure</h3><p font-size="18pt">The cosmic microwave background reaches us from every direction. Other observers detect relic light too, but not the identical detailed sky pattern.</p><p role="caption" class="capture-meta">SOURCE / <a href="https://science.nasa.gov/universe/overview/">NASA UNIVERSE OVERVIEW</a></p></grid-item><grid-item id="j7DdfZQZWY" vertical-align="center" padding="40pt 34pt 34pt 18pt" colspan="35"><custom-code><style>.cmb-field{font-family:var(--body-font);font-size:1.125em;color:var(--body-color)}.cmb-field svg{display:block;width:100%;height:auto}.cmb-field .plate{fill:color-mix(in srgb,var(--surface-color) 90%,var(--accent-color));stroke:var(--neutral-border-color);stroke-width:1}.cmb-field .sky{fill:none;stroke:var(--accent-color);stroke-width:2}.cmb-field .ray{stroke:var(--palette-2);stroke-width:2}.cmb-field .observer{fill:var(--accent-color);stroke:var(--card-color);stroke-width:3}.cmb-field .label{fill:var(--heading-color);font-family:var(--heading-font);font-size:1em;font-weight:600}.cmb-field .id{fill:var(--card-color);font-size:1.05em;font-weight:700}.cmb-field .meta{fill:var(--body-color);font-size:.72em;letter-spacing:.08em}</style><div class="cmb-field"><svg width="600" height="292" viewBox="0 0 600 292" role="img" aria-label="Three equivalent observers each receiving cosmic microwave background radiation from every direction"><defs><marker id="cmb-arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"><path d="M 0 0 L 10 5 L 0 10 z" fill="var(--palette-2)"></path></marker></defs><rect class="plate" x="10" y="10" width="580" height="252"></rect><text class="label" x="30" y="42">Different locations, same all-sky evidence</text><text class="meta" x="30" y="63">RELIC RADIATION ARRIVES FROM EVERY DIRECTION</text><circle class="sky" cx="112" cy="156" r="62"></circle><line class="ray" x1="112" y1="91" x2="112" y2="132" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="112" y1="221" x2="112" y2="180" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="47" y1="156" x2="88" y2="156" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="177" y1="156" x2="136" y2="156" marker-end="url(#cmb-arrow)"></line><circle class="observer" cx="112" cy="156" r="16"></circle><text class="id" x="105" y="162">A</text><circle class="sky" cx="300" cy="156" r="62"></circle><line class="ray" x1="300" y1="91" x2="300" y2="132" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="300" y1="221" x2="300" y2="180" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="235" y1="156" x2="276" y2="156" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="365" y1="156" x2="324" y2="156" marker-end="url(#cmb-arrow)"></line><circle class="observer" cx="300" cy="156" r="16"></circle><text class="id" x="293" y="162">B</text><circle class="sky" cx="488" cy="156" r="62"></circle><line class="ray" x1="488" y1="91" x2="488" y2="132" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="488" y1="221" x2="488" y2="180" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="423" y1="156" x2="464" y2="156" marker-end="url(#cmb-arrow)"></line><line class="ray" x1="553" y1="156" x2="512" y2="156" marker-end="url(#cmb-arrow)"></line><circle class="observer" cx="488" cy="156" r="16"></circle><text class="id" x="481" y="162">C</text></svg></div></custom-code><p role="caption">CONCEPTUAL ALL-SKY MEASUREMENTS / THE RINGS ARE LOCAL VIEWING DIRECTIONS, NOT AN OUTER COSMIC SHELL</p></grid-item></grid></section>
<section image-layout="blank" id="Nc2PJj0t4J"><grid spacing="none"><grid-item id="tVUsaT_JeX"><h2>A good chart marks its limits</h2><p font-size="19pt"><b>The model charts evolution, not every origin question.</b></p><grid divider="1pt neutral-border" spacing="none" vertical-sizing="fill"><grid-item id="mEtaZYhhGG" vertical-align="center" padding="20pt 30pt 18pt 0" colspan="30"><p role="eyebrow">WHAT THE MODEL CHARTS</p><h3>Observable cosmic history</h3><p font-size="18pt">The observable universe develops from a hot, dense early phase through expansion and cooling. The model requires neither a privileged center nor a navigable edge.</p></grid-item><grid-item id="3KcBT4O7ji" vertical-align="center" padding="20pt 0 18pt 30pt" colspan="30"><p role="eyebrow">WHERE THE CHART ENDS</p><h3>The earliest described phase</h3><p font-size="18pt">The model does not settle every origin question. What, if anything, preceded the earliest phase it describes remains uncertain.</p></grid-item></grid><hr color="palette-2" thickness="md"><p font-size="18pt"><b>Navigator’s rule:</b> separate evidence-supported history from the waters the model does not yet chart.</p></grid-item></grid></section>
<section image-layout="blank" id="eBsB_OpgEi"><grid spacing="none"><grid-item id="iyHNAQdoVB"><h1>Three bearings fix the position</h1><grid spacing="large" vertical-sizing="fill"><grid-item id="dk0QxT5csx" vertical-align="center" colspan="37"><diagram template-key="inputs" align="center" width="500pt" height="290pt" data-meta="{&quot;step&quot;:[{&quot;text&quot;:&quot;<h4>Redshift</h4><p>Distant light arrives stretched to longer wavelengths.</p>&quot;},{&quot;text&quot;:&quot;<h4>Relic light</h4><p>The cosmic microwave background is cooled early-universe light.</p>&quot;},{&quot;text&quot;:&quot;<h4>No privileged center</h4><p>All-sky evidence singles out no unique cosmic port.</p>&quot;}],&quot;general&quot;:[{&quot;text&quot;:&quot;<h4>Big Bang model</h4>&quot;}],&quot;colorScheme&quot;:&quot;monochrome&quot;}"></diagram><p role="caption">THREE EVIDENCE BEARINGS CONVERGE / THIS IS A REASONING MAP, NOT A LITERAL COMPASS</p></grid-item><grid-item id="-9qB335rI0" background-color="surface" vertical-align="center" cell-decor="side-line" padding="24pt 24pt" colspan="23"><p role="eyebrow">CAPTAIN’S ANSWER</p><h3>No single blast port</h3><p font-size="18pt">The early hot, dense state filled the observable universe. Space then expanded and cooled; it did not explode from one point into an outer void.</p><hr color="accent" thickness="sm" width="sm"><p font-size="18pt"><b>In one breath:</b> expansion, cooling, redshift, and relic light all belong to the same cosmic history.</p></grid-item></grid></grid-item></grid></section>