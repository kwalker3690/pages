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
<section image-layout="blank" id="d9kcGDtd-9" background-overlay="tint" background-overlay-intensity="0.24" card-margin-hidden="true"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/KgUuCf2zaL8SFB-6Vq0J_.png" saved-media-id="mj1jssj90ujomc2" source="image.ai-generated" background="true" image-style="long-exposure-documentary" alt="Long-exposure documentary photography from the deck of a small ocean-going research vessel at night, dark sea horizon low in frame beneath broad physically plausible star trails, a faint warm olive-amber threshold at the horizon, restrained cyan instrument light and pale-gold practical light, deep separated shadows with a quiet dark lower-left field for copy, precise optical texture, no fantasy space art, no visible logos, no legible text" meta="{&quot;width&quot;:1920,&quot;height&quot;:1088}"><grid spacing="none"><grid-item id="Nm0Gk6UIqR" colspan="43"><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug" class="image-ink image-ink-plate"><grid-item id="6f2iwF01iz" padding="18pt 20pt 30pt"><display size="md">How the Whole Sea Got Made: The Big Bang, for Sailing Folk</display><hr color="accent" thickness="sm" width="xxs"><h3 role="subheading">Three soundings from the sky, read by dead reckoning.</h3><p role="caption">EXPANSION / LIGHT ELEMENTS / OLDEST LIGHT</p></grid-item></grid></grid-item><spacer span="17"></spacer></grid></section>
<section image-layout="blank" id="A-xASFg42w"><grid spacing="large" class="exposure-ledger"><grid-item id="vkhLS4mkMe" colspan="20"><h2>You already know the method: it's dead reckoning on the whole sky</h2><p>Known speed, heading, and time tell you where you were without taking you there again.</p><spacer mode="fill"></spacer><p role="caption">ONE METHOD<br>THREE INDEPENDENT SOUNDINGS</p></grid-item><grid-item id="4a_XGQpbUn" vertical-align="center" colspan="40"><smart-layout variant="timeline" orientation="vertical" two-sided="false" cell-size="15"><smart-layout-item><h4>Fix the present</h4><p>Measure how distant galaxies move apart now.</p></smart-layout-item><smart-layout-item><h4>Run the log backward</h4><p>Reverse that measured expansion to estimate an age.</p></smart-layout-item><smart-layout-item><h4>Check the soundings</h4><p>Stretched light, light elements, and a glow across the whole sky.</p></smart-layout-item></smart-layout></grid-item></grid></section>
<section image-layout="blank" id="A3bT03lVcj"><grid spacing="none"><grid-item id="WkahmxKb72"><h2>Light from distant galaxies arrives stretched</h2><custom-code><style>.redshift-trace { font-family: var(--body-font); color: var(--body-color); padding: 0.4em 0; } .redshift-trace svg { display: block; width: 100%; height: 13em; } .redshift-trace text { font-family: var(--body-font); font-size: 0.78em; fill: var(--body-color); } .redshift-trace .meta { font-family: var(--body-font); font-size: 0.66em; letter-spacing: 0.08em; fill: var(--accent-color); } .redshift-trace .base { stroke: var(--neutral-border-color); stroke-width: 1; } .redshift-trace .wave-a { fill: none; stroke: var(--heading-color); stroke-width: 3; } .redshift-trace .wave-b { fill: none; stroke: var(--palette-2); stroke-width: 3; } .redshift-trace .arrow { stroke: var(--accent-color); stroke-width: 2; }</style><div class="redshift-trace"><svg viewBox="0 0 820 190" width="820" height="190" role="img" aria-label="Light waves leave a distant galaxy with short wavelengths and arrive with longer wavelengths after space grows during the crossing"><text class="meta" x="42" y="28">AT EMISSION</text><text class="meta" x="560" y="28">AT ARRIVAL</text><line class="base" x1="42" y1="92" x2="778" y2="92"></line><path class="wave-a" d="M42 92 C52 58 62 58 72 92 S92 126 102 92 S122 58 132 92 S152 126 162 92 S182 58 192 92 S212 126 222 92 S242 58 252 92 S272 126 282 92"></path><line class="arrow" x1="316" y1="92" x2="500" y2="92"></line><path class="wave-b" d="M536 92 C556 58 576 58 596 92 S636 126 656 92 S696 58 716 92 S756 126 776 92"></path><text x="302" y="128">space grows during the crossing</text><text x="42" y="164">shorter waves</text><text x="778" y="164" text-anchor="end">Longer waves · redshift</text></svg></div></custom-code><grid divider="sm neutral-border" class="exposure-ledger"><grid-item id="ut7GLiYncn" colspan="20"><h4>Longer crossing</h4><p>Farther light spends longer travelling while space grows.</p></grid-item><grid-item id="WC5aYC2J6L" colspan="20"><h4>Greater stretch</h4><p>Its waves arrive longer. That is the first sounding.</p></grid-item><grid-item id="P5ffmVz8SR" colspan="20"><h4>Close neighbors differ</h4><p>Gravity holds nearby systems together, and Andromeda approaches us.</p></grid-item></grid><p role="caption"><a href="https://science.nasa.gov/mission/hubble/science/science-behind-the-discoveries/hubble-big-bang/">NASA / HUBBLE SCIENCE</a></p></grid-item></grid></section>
<section image-layout="blank" id="QGqIgjww08"><grid spacing="none"><grid-item id="5X-zjTjtix"><h2>It was not a blast, and it has no center</h2><custom-code>
        <style>
          .expansion-field { display: flex; align-items: center; gap: 1.2em; font-family: var(--body-font); color: var(--body-color); padding: 0.5em 0; }
          .expansion-field .state { flex: 1; border: 1px solid var(--neutral-border-color); padding: 0.8em; }
          .expansion-field .state-title { margin-bottom: 0.4em; font-family: var(--body-font); font-size: 0.68em; letter-spacing: 0.08em; color: var(--accent-color); }
          .expansion-field .between { flex: 0 0 7em; text-align: center; color: var(--palette-2); font-size: 0.78em; }
          .expansion-field svg { display: block; width: 100%; height: 11em; }
          .expansion-field .gridline { stroke: var(--neutral-border-color); stroke-width: 1; opacity: 0.65; }
          .expansion-field .link { stroke: var(--palette-3); stroke-width: 1.5; opacity: 0.8; }
          .expansion-field .galaxy { fill: var(--heading-color); }
          .expansion-field .observer { fill: var(--accent-color); }
        </style>
        <div class="expansion-field">
          <div class="state">
            <div class="state-title">EARLIER · CLOSER TOGETHER</div>
            <svg viewBox="0 0 330 180" width="330" height="180" role="img" aria-label="Earlier galaxies shown closer together">
              <line class="gridline" x1="30" y1="45" x2="300" y2="45"></line><line class="gridline" x1="30" y1="90" x2="300" y2="90"></line><line class="gridline" x1="30" y1="135" x2="300" y2="135"></line>
              <line class="gridline" x1="75" y1="20" x2="75" y2="160"></line><line class="gridline" x1="165" y1="20" x2="165" y2="160"></line><line class="gridline" x1="255" y1="20" x2="255" y2="160"></line>
              <line class="link" x1="110" y1="70" x2="165" y2="108"></line><line class="link" x1="165" y1="108" x2="218" y2="60"></line><line class="link" x1="110" y1="70" x2="218" y2="60"></line>
              <circle class="observer" cx="110" cy="70" r="8"></circle><circle class="galaxy" cx="165" cy="108" r="7"></circle><circle class="galaxy" cx="218" cy="60" r="7"></circle>
            </svg>
          </div>
          <div class="between">DISTANCES<br>GROW<br>EVERYWHERE</div>
          <div class="state">
            <div class="state-title">LATER · FARTHER APART</div>
            <svg viewBox="0 0 330 180" width="330" height="180" role="img" aria-label="Later galaxies shown farther apart with no central origin">
              <line class="gridline" x1="15" y1="30" x2="315" y2="30"></line><line class="gridline" x1="15" y1="90" x2="315" y2="90"></line><line class="gridline" x1="15" y1="150" x2="315" y2="150"></line>
              <line class="gridline" x1="35" y1="10" x2="35" y2="170"></line><line class="gridline" x1="165" y1="10" x2="165" y2="170"></line><line class="gridline" x1="295" y1="10" x2="295" y2="170"></line>
              <line class="link" x1="55" y1="145" x2="165" y2="65"></line><line class="link" x1="165" y1="65" x2="290" y2="145"></line><line class="link" x1="55" y1="145" x2="290" y2="145"></line>
              <circle class="observer" cx="55" cy="145" r="8"></circle><circle class="galaxy" cx="165" cy="65" r="7"></circle><circle class="galaxy" cx="290" cy="145" r="7"></circle>
            </svg>
          </div>
        </div>
      </custom-code><grid divider="1pt palette-4" class="airglow-seam"><grid-item id="pjs43d5i6M" padding-right="24pt" colspan="30"><h4>Every observer sees spreading</h4><p>Distances between distant galaxies grow in every direction. Nothing exploded into empty space.</p></grid-item><grid-item id="ID7KB4YLZL" padding-left="24pt" colspan="30"><h4>No port marks the origin</h4><p>It happened everywhere, including here. The model needs no physical edge or outside.</p></grid-item></grid><p role="caption"><a href="https://science.nasa.gov/mission/hubble/science/science-behind-the-discoveries/hubble-big-bang/">NASA / HUBBLE SCIENCE</a></p></grid-item></grid></section>
<section image-layout="blank" id="S2aurlR_Da"><grid spacing="none"><grid-item id="CtzfJgtjGe"><h2>Run the log back and you get about 13.8 billion years</h2><grid divider="1pt palette-4" vertical-sizing="fill" class="airglow-seam"><grid-item id="0S3KEAm-Hy" background-color="surface" align="center" vertical-align="center" padding="34pt" colspan="24"><display size="xl" class="metric" style="text-align: center;">13.8</display><h3 align="center">billion years</h3><p role="caption" align="center">AGE FROM THE SKY'S OWN LOG</p></grid-item><grid-item id="IFP4rWGMLb" vertical-align="center" padding-left="34pt" colspan="36"><p font-size="lg">Distances are growing now. Earlier matter was packed tighter, and the farther back you reckon, the hotter it was.</p><hr color="palette-2" thickness="sm" width="sm" class="trail-field"><p>Run the measured expansion backward and the histories converge on about 13.8 billion years.</p><p role="caption">Planck mission fit: 13.797 billion years, give or take 23 million. · <a href="https://www.aanda.org/articles/aa/full_html/2020/09/aa33910-18/T1.html">PLANCK 2018 RESULTS</a></p></grid-item></grid></grid-item></grid></section>
<section image-layout="blank" id="lDPtWv6PjG"><grid spacing="none"><grid-item id="otcro0KK1h"><h2>The first minutes forged helium, not hydrogen</h2><p>Most ordinary hydrogen nuclei are primordial protons that never fused. The early forge built heavier nuclei from some of them.</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="LU5WcMb6N8" colspan="15"><h4>One second in</h4><p>A soup of light and particles near ten billion degrees Celsius.</p></grid-item><grid-item id="r6_imzcjAN" colspan="15"><h4>Protons remain</h4><p>Most become the single-proton nuclei of ordinary hydrogen.</p></grid-item><grid-item id="r0RzcQgXs2" colspan="15"><h4>Fusion proceeds</h4><p>Neutrons and protons make deuterium, then helium.</p></grid-item><grid-item id="7HBmWU5scA" colspan="15"><h4>About five minutes</h4><p>Cooling stops the forge. Measured deuterium and helium match.</p></grid-item></grid><spacer mode="fill"></spacer><p role="caption"><a href="https://science.nasa.gov/universe/overview/">NASA / UNIVERSE OVERVIEW</a> · <a href="https://pdg.lbl.gov/2025/reviews/rpp2025-rev-bbang-nucleosynthesis.pdf">PDG / BIG-BANG NUCLEOSYNTHESIS</a></p></grid-item></grid></section>
<section image-layout="blank" id="WmpFiwdpyk"><grid spacing="none"><grid-item id="xm5MD8ZI0h"><h2>380,000 years on, the fog lifted and light ran free</h2><custom-code>
        <style>
          .recombination-view { display: grid; grid-template-columns: 1fr 1fr; gap: 1em; font-family: var(--body-font); padding: 0.3em 0 0.6em; }
          .recombination-view .scene { border: 1px solid var(--neutral-border-color); padding: 0.7em; }
          .recombination-view .scene-label { font-size: 0.68em; letter-spacing: 0.08em; color: var(--accent-color); margin-bottom: 0.25em; }
          .recombination-view svg { display: block; width: 100%; height: 7.5em; }
          .recombination-view .particle { fill: var(--palette-3); opacity: 0.85; }
          .recombination-view .nucleus { fill: var(--palette-2); }
          .recombination-view .shell { fill: none; stroke: var(--accent-color); stroke-width: 2; }
          .recombination-view .photon { fill: none; stroke: var(--heading-color); stroke-width: 3; }
        </style>
        <div class="recombination-view">
          <div class="scene">
            <div class="scene-label">BEFORE · GLOWING FOG</div>
            <svg viewBox="0 0 360 120" width="360" height="120" role="img" aria-label="Light scattering among loose electrons">
              <circle class="particle" cx="70" cy="25" r="6"></circle><circle class="particle" cx="145" cy="80" r="6"></circle><circle class="particle" cx="245" cy="35" r="6"></circle><circle class="particle" cx="300" cy="90" r="6"></circle>
              <circle class="nucleus" cx="110" cy="58" r="8"></circle><circle class="nucleus" cx="270" cy="68" r="8"></circle>
              <path class="photon" d="M20 94 L82 72 L132 95 L183 52 L232 82 L340 38"></path>
            </svg>
          </div>
          <div class="scene">
            <div class="scene-label">AFTER · NEUTRAL ATOMS</div>
            <svg viewBox="0 0 360 120" width="360" height="120" role="img" aria-label="Light travelling freely after neutral atoms form">
              <circle class="nucleus" cx="95" cy="35" r="7"></circle><circle class="shell" cx="95" cy="35" r="16"></circle>
              <circle class="nucleus" cx="180" cy="87" r="7"></circle><circle class="shell" cx="180" cy="87" r="16"></circle>
              <circle class="nucleus" cx="275" cy="42" r="7"></circle><circle class="shell" cx="275" cy="42" r="16"></circle>
              <path class="photon" d="M18 65 C95 55 165 72 238 62 S310 58 342 62"></path>
            </svg>
          </div>
        </div>
      </custom-code><grid divider="1pt palette-4" class="airglow-seam"><grid-item id="5miq1gnC_6" padding-right="24pt" colspan="30"><h3>The fog</h3><p>Nuclei could not hold electrons. Loose electrons scattered light constantly.</p></grid-item><grid-item id="P8U-xrthhP" padding-left="24pt" colspan="30"><h3>The clearing</h3><p>Nuclei captured electrons and formed neutral atoms. Light has travelled freely since. Earlier than this oldest light, the record is fog.</p></grid-item></grid><p role="caption"><a href="https://astro.uchicago.edu/~frieman/Courses/A182-2015/Lectures/Lecture11.pdf">UNIVERSITY OF CHICAGO / COSMOLOGY</a> · <a href="https://science.nasa.gov/mission/hubble/science/science-behind-the-discoveries/hubble-big-bang/">NASA / HUBBLE SCIENCE</a></p></grid-item></grid></section>
<section image-layout="blank" id="pSUqfBAcZh"><grid divider="1pt palette-4" class="airglow-seam"><grid-item id="-IMmQqQJ8C" colspan="32"><h2>Two engineers found that light in 1965 while chasing a hiss</h2><p>Arno Penzias and Robert Wilson measured about 3.5 K more antenna noise than expected at Holmdel, New Jersey.</p><p>They checked their equipment and surroundings. The hiss stayed the same in every direction, unpolarized, and unchanged through the seasons.</p><p>It was the fog-lifting light, cooled by expansion to a few degrees above absolute zero. Third sounding. Nobody was hunting it.</p><spacer mode="fill"></spacer><p role="caption"><a href="https://doi.org/10.1086/148307">PENZIAS &amp; WILSON / 1965</a></p></grid-item><grid-item id="OKQhLG-ape" background-overlay="tint" background-overlay-intensity="0.2" padding="24pt" colspan="28"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/cz6sLc7yzm3FmE2zrHMVl.png" saved-media-id="t2qdbjuv72zj6ig" source="image.ai-generated" background="true" image-style="long-exposure-documentary" alt="Long-exposure documentary photography of a large horn radio antenna at Holmdel, New Jersey at night, the flared metal instrument rising off-center beneath restrained physically plausible star trails, precise riveted hardware and waveguide texture, near-black blue field, neutral cool-white highlights, pale-gold practical light, faint violet context, deep separated shadows, quiet dark lower field for a caption, no people, no visible logos, no legible text" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><spacer mode="fill"></spacer><p role="caption" class="capture-meta image-ink">HOLMDEL / HORN ANTENNA / 1965</p></grid-item></grid></section>
<section image-layout="blank" id="KIiskkOvV5"><grid spacing="none"><grid-item id="xeopxAUw-0"><h2>Three soundings agree, which is why the model holds</h2><p>Each was measured independently. A rival account has to explain all three.</p><grid marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-rule="true" marker-position="above" marker-align="center" marker-straddle="true" vertical-sizing="fill"><grid-item id="h0u_TuS8tq" cell-style="outline" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/NCr61ewXcttGPJN3DH8E.svg?stroke=45" source="image.pictographic.icon" alt="stretched light wavelength from distant galaxy" meta="{&quot;description&quot;:&quot;A spiral shape resembling a pinwheel, symbolizing the concept of a galaxy.&quot;}"></icon></grid-item-label><h3>Stretched light</h3><p>Distant galaxies' light arrives longer because distances between them are growing.</p></grid-item><grid-item id="PTmXH9IhLu" cell-style="outline" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/XcfgNReFA7fakYiX5MW7t3.svg?stroke=45" source="image.pictographic.icon" alt="deuterium and helium atomic nuclei" meta="{&quot;description&quot;:&quot;A single, solid black sphere, symbolizing the concept of an atom, the fundamental building block of matter.&quot;}"></icon></grid-item-label><h3>The early forge</h3><p>Measured deuterium and helium sit close to the predicted amounts.</p></grid-item><grid-item id="qw5-SzKqxY" cell-style="outline" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/jUPPybJ0OdTsNMDVdJHH.svg?stroke=45" source="image.pictographic.icon" alt="all sky microwave background glow" meta="{&quot;description&quot;:&quot;A black circle with no illumination details, centered in a white background, symbolizing the concept of glow.&quot;}"></icon></grid-item-label><h3>The whole-sky glow</h3><p>Ancient light fills every direction, and its faint ripples give the age.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="0aaJiDgWod" background-color="palette-2" padding="12pt 18pt"><h4>One model explains expansion, the light elements, and the oldest light together.</h4></grid-item></grid><p role="caption"><a href="https://science.nasa.gov/mission/hubble/science/science-behind-the-discoveries/hubble-big-bang/">NASA</a> · <a href="https://pdg.lbl.gov/2025/reviews/rpp2025-rev-bbang-nucleosynthesis.pdf">PDG</a> · <a href="https://www.aanda.org/articles/aa/full_html/2020/09/aa33910-18/T1.html">PLANCK 2018 RESULTS</a></p></grid-item></grid></section>
<section image-layout="blank" id="LvLkqgS98B"><grid divider="1pt palette-4" class="airglow-seam"><grid-item id="XI7XxzBUFm" padding-bottom="60pt" colspan="35"><h2>Where the chart runs blank</h2><grid divider="sm neutral-border" vertical-sizing="hug" class="exposure-ledger"><grid-item id="V2WHjO2zdp" padding="14pt 18pt 14pt 0" colspan="30"><p role="eyebrow">EARLIEST REACH</p><h3>What set it off?</h3><p>The model runs from a fraction of a second onward. What began it, and whether “before” makes sense, lies beyond the evidence.</p></grid-item><grid-item id="HgTOADutEY" padding="14pt 0 14pt 18pt" colspan="30"><p role="eyebrow">OPEN SOUNDING</p><h3>The lithium gap</h3><p>The early forge predicts roughly three times more lithium than astronomers find in the oldest stars. Nobody has settled why.</p></grid-item></grid><spacer mode="fill"></spacer><p>An honest chart leaves unsounded water blank.</p><p role="caption"><a href="https://science.nasa.gov/universe/overview/">NASA / UNIVERSE OVERVIEW</a> · <a href="https://pdg.lbl.gov/2025/reviews/rpp2025-rev-bbang-nucleosynthesis.pdf">PDG / BIG-BANG NUCLEOSYNTHESIS</a></p></grid-item><grid-item id="mBgH5Coxkd" background-overlay="tint" background-overlay-intensity="0.28" padding="24pt 24pt 60pt" colspan="25"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/bOHkR3smRAlYceZIK9FrN.png" saved-media-id="fpx0v7t8uo0neg3" source="image.ai-generated" background="true" image-style="long-exposure-documentary" alt="Long-exposure documentary photography from the dark deck of a small research vessel at sea, a simple antenna mast and rail low in frame beneath an immense near-black sky with physically plausible star trails, faint cool-white horizon glow, one narrow warm olive-amber atmospheric threshold, restrained cyan instrument reflection, deep separated shadow detail and quiet upper field, no people, no fantasy space art, no visible logos, no legible text" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug" class="image-ink image-ink-plate"><grid-item id="HWl87RhDDj" background-color="surface" padding="16pt 18pt"><h3>The ancient glow keeps arriving from every direction while you stand on deck.</h3><p role="caption">THE RECORD CONTINUES</p></grid-item></grid></grid-item></grid></section>