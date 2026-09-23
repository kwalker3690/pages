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
<section image-layout="blank" id="dzxTP-cRXB"><grid spacing="none"><grid-item id="39oYUex2UQ" padding="44pt 20pt 40pt 44pt" colspan="19"><p role="eyebrow">TEACHING ANALOGY</p><h2>Stretch the chart, not the ships</h2><p><b>Chart test:</b> mark three galaxies on a flexible grid, then enlarge the grid. Every pair separates; from any marker, the others recede. No marker becomes the privileged center.</p><spacer mode="fill"></spacer><p role="caption">GRID = CHANGING DISTANCES<br>MARKERS ≠ SHIPS CROSSING AN OUTER OCEAN</p></grid-item><grid-item id="M4NXghZ9yE" vertical-align="center" padding="34pt 30pt 34pt 18pt" colspan="41"><custom-code>
        <style>
          .expansion-board { font-family: var(--body-font); color: var(--body-color); }
          .expansion-board svg { display: block; }
          .expansion-board .panel { fill: color-mix(in srgb, var(--card-color) 82%, var(--accent-color)); stroke: var(--neutral-border-color); stroke-width: 1; }
          .expansion-board .gridline { stroke: var(--neutral-border-color); stroke-width: 1; }
          .expansion-board .pair { fill: none; stroke: var(--accent-color); stroke-width: 2; stroke-dasharray: 5 5; }
          .expansion-board .marker { fill: var(--palette-2); stroke: var(--card-color); stroke-width: 3; }
          .expansion-board .arrow { stroke: var(--palette-4); stroke-width: 2; }
          .expansion-board text { fill: var(--body-color); font-family: var(--body-font); }
          .expansion-board .label { font-family: var(--heading-font); fill: var(--heading-color); font-size: 0.85em; font-weight: 600; }
          .expansion-board .meta { font-size: 0.62em; letter-spacing: 0.08em; }
        </style>
        <div class="expansion-board">
          <svg width="610" height="330" viewBox="0 0 620 330" role="img" aria-label="The same three galaxy markers on a grid before and after the grid expands">
            <text class="label" x="20" y="28">Before</text>
            <text class="meta" x="20" y="46">SAME THREE MARKERS</text>
            <rect class="panel" x="20" y="58" width="220" height="220"></rect>
            <line class="gridline" x1="75" y1="58" x2="75" y2="278"></line>
            <line class="gridline" x1="130" y1="58" x2="130" y2="278"></line>
            <line class="gridline" x1="185" y1="58" x2="185" y2="278"></line>
            <line class="gridline" x1="20" y1="113" x2="240" y2="113"></line>
            <line class="gridline" x1="20" y1="168" x2="240" y2="168"></line>
            <line class="gridline" x1="20" y1="223" x2="240" y2="223"></line>
            <polyline class="pair" points="75,113 185,168 130,223 75,113"></polyline>
            <circle class="marker" cx="75" cy="113" r="8"></circle>
            <circle class="marker" cx="185" cy="168" r="8"></circle>
            <circle class="marker" cx="130" cy="223" r="8"></circle>

            <line class="arrow" x1="260" y1="168" x2="316" y2="168"></line>
            <polygon points="316,168 304,161 304,175" fill="var(--palette-4)"></polygon>
            <text class="meta" x="258" y="151">ENLARGE GRID</text>

            <text class="label" x="340" y="28">After</text>
            <text class="meta" x="340" y="46">EVERY PAIR IS FARTHER APART</text>
            <rect class="panel" x="340" y="58" width="260" height="220"></rect>
            <line class="gridline" x1="405" y1="58" x2="405" y2="278"></line>
            <line class="gridline" x1="470" y1="58" x2="470" y2="278"></line>
            <line class="gridline" x1="535" y1="58" x2="535" y2="278"></line>
            <line class="gridline" x1="340" y1="113" x2="600" y2="113"></line>
            <line class="gridline" x1="340" y1="168" x2="600" y2="168"></line>
            <line class="gridline" x1="340" y1="223" x2="600" y2="223"></line>
            <polyline class="pair" points="405,113 535,168 470,223 405,113"></polyline>
            <circle class="marker" cx="405" cy="113" r="8"></circle>
            <circle class="marker" cx="535" cy="168" r="8"></circle>
            <circle class="marker" cx="470" cy="223" r="8"></circle>
            <text class="meta" x="340" y="312">NO PRIVILEGED CENTER / NO OUTER SHORE</text>
          </svg>
        </div>
      </custom-code></grid-item></grid></section>
<section image-layout="blank" id="iOscfeuV6O"><grid spacing="none"><grid-item id="5828DU81Ob"><h2>Expansion cools the cosmos</h2><p font-size="lg"><b>As the universe expands, it cools—and what matter and light can do changes.</b> The course runs through three distinct conditions.</p><spacer mode="fill"></spacer><smart-layout variant="timeline" orientation="horizontal" two-sided="false" cell-size="15"><smart-layout-item><h4>Early</h4><p>Atomic nuclei form in the hot young universe.</p></smart-layout-item><smart-layout-item><h4>About 380,000 years</h4><p>Neutral atoms form, and light can travel freely.</p></smart-layout-item><smart-layout-item><h4>Later</h4><p>Stars and galaxies emerge as conditions continue to change.</p></smart-layout-item></smart-layout><spacer mode="fill"></spacer><p role="caption">SEQUENCE / EXPANSION → COOLING → NEW STRUCTURES</p></grid-item></grid></section>
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
<section image-layout="blank" id="3YyKHOOw_k"><grid spacing="none"><grid-item id="pPoF6AipIn" padding="42pt 18pt 38pt 44pt" colspan="22"><p role="eyebrow">OBSERVATIONAL EVIDENCE</p><h2>Relic light on every horizon</h2><p>About 380,000 years after the hot beginning, the universe became transparent enough for light to travel freely. Expansion has since cooled that light into microwaves.</p><ul><li><b>Cosmic microwave background:</b> relic light from the early universe.</li><li>It does not identify a central blast point.</li></ul><spacer mode="fill"></spacer><p role="caption">ALL-SKY SIGNAL / OBSERVER ≠ COSMIC CENTER</p></grid-item><grid-item id="j7DdfZQZWY" class="orbit-stage" vertical-align="center" padding="38pt 34pt 38pt 20pt" colspan="38"><diagram template-key="orbit" align="center" width="520pt" height="350pt" data-meta="{&quot;step&quot;:[{&quot;text&quot;:&quot;<h4>Early Relic Light</h4><p>Radiation released ~380,000 years after Big Bang</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/galaxy.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:512},&quot;query&quot;:&quot;cosmic background&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}},{&quot;text&quot;:&quot;<h4>Expansion Cools</h4><p>Universe expansion redshifts and cools the photons</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/expand.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:448},&quot;query&quot;:&quot;expand&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}},{&quot;text&quot;:&quot;<h4>Microwaves Today</h4><p>All-sky microwave photons arrive at the observer</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/microwave.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:576},&quot;query&quot;:&quot;microwave&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}},{&quot;text&quot;:&quot;<h4>No Central Blast</h4><p>No unique center; signal from every direction</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/note-sticky.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:448},&quot;query&quot;:&quot;no entry&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}}],&quot;general&quot;:[{&quot;text&quot;:&quot;<h4>Observer Now</h4><p>Viewpoint receiving all-sky relic radiation</p>&quot;,&quot;icon&quot;:{&quot;src&quot;:&quot;https://cdn-staging.gamma.app/_app_static/icons/v0/server.svg&quot;,&quot;tempUrl&quot;:&quot;&quot;,&quot;meta&quot;:{&quot;height&quot;:512,&quot;width&quot;:512},&quot;query&quot;:&quot;observer&quot;,&quot;source&quot;:&quot;image.icon&quot;,&quot;loadImageStatus&quot;:&quot;done&quot;,&quot;uploadStatus&quot;:3}}],&quot;colorScheme&quot;:&quot;monochrome&quot;}"></diagram></grid-item></grid></section>
<section image-layout="blank" id="Nc2PJj0t4J"><grid spacing="none"><grid-item id="tVUsaT_JeX"><h2>A good chart marks its limits</h2><p font-size="lg"><b>The model charts evolution, not every origin question.</b></p><grid divider="1pt neutral-border" spacing="none" vertical-sizing="fill"><grid-item id="mEtaZYhhGG" vertical-align="center" padding="22pt 28pt 18pt 0" colspan="30"><p role="eyebrow">WHAT THE MODEL CHARTS</p><h3>Observable cosmic history</h3><p>The observable universe develops from a hot, dense early phase through expansion and cooling. The model requires neither a privileged center nor a navigable edge.</p></grid-item><grid-item id="3KcBT4O7ji" vertical-align="center" padding="22pt 0 18pt 28pt" colspan="30"><p role="eyebrow">WHERE THE CHART ENDS</p><h3>The earliest described phase</h3><p>The model does not settle every origin question. What preceded the earliest phase it describes remains uncertain.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="QCm4kRFeSz" background-color="palette-4" padding="13pt 18pt"><h3>Honest navigators mark the limit of the chart.</h3></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="eBsB_OpgEi"><grid spacing="none"><grid-item id="iyHNAQdoVB"><h1>Three bearings bring us home</h1><grid direction="vertical" spacing="none" vertical-sizing="fill"><grid-item id="D5w7ewLQFX" padding="0" rowspan="41"><grid divider="sm neutral-border" marker="icon" marker-size="large" marker-style="subtle" marker-shape="circle" marker-position="above" marker-align="start" spacing="none" vertical-sizing="fill" padding="22pt 24pt" class="exposure-ledger"><grid-item id="9wdbfoS6Rd" vertical-align="center" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/liSFBNn5c6cmyoTD4ajN.svg?stroke=45" source="image.pictographic.icon" alt="expanding coordinate grid" meta="{&quot;description&quot;:&quot;A grid of intersecting horizontal and vertical lines, forming a pattern of squares, symbolizing organization, structure, and layout.&quot;}"></icon></grid-item-label><h3>Expansion</h3><p>Space stretches; distances between unbound galaxies grow. There is no privileged cosmic port.</p></grid-item><grid-item id="sG0C17RHZS" vertical-align="center" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/2gAzxjhwqLUh7GHBxrrJ.svg?stroke=45" source="image.pictographic.icon" alt="cooling atoms and stars" meta="{&quot;description&quot;:&quot;A black circle, symbolizing the concept of an atom, consisting of a central nucleus.&quot;}"></icon></grid-item-label><h3>Cooling</h3><p>Changing conditions allow nuclei, neutral atoms, stars, and galaxies to form in sequence.</p></grid-item><grid-item id="xMIFsupTEt" vertical-align="center" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/haeiKVXiokADxeUKtjLaRm.svg?stroke=45" source="image.pictographic.icon" alt="redshift wave and microwave signal" meta="{&quot;description&quot;:&quot;The wave-square concept features a solid black square with a curved wave-like cutout or indentation on one of its sides, set against a clean white background. This design embodies the idea of a wave pattern integrated into a geometric square shape, suggesting a fusion of fluidity and structure. The wave element could symbolize movement, oscillation, or the dynamic nature of certain phenomena, while the square provides a sense of stability and formality. Together, they create a visually striking and thought-provoking icon that could represent concepts related to signal processing, sound waves, or the blending of natural and geometric forms.&quot;}"></icon></grid-item-label><h3>Evidence</h3><p>Cosmological redshift and relic microwave light fit the same history of expansion and cooling.</p></grid-item></grid></grid-item><grid-item id="ABwxIprtwq" vertical-align="start" padding="14pt 0 0" rowspan="19"><grid spacing="none" vertical-sizing="hug"><grid-item id="USUJT3CIDs" background-color="surface" cell-decor="side-line" padding="14pt 18pt"><p role="eyebrow">THE PLAIN ANSWER</p><h3>If asked where it happened: not at one cosmic port—the change belongs to the universe itself.</h3></grid-item></grid></grid-item></grid></grid-item></grid></section>