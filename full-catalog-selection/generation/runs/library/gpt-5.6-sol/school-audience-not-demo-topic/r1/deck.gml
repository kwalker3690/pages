<HEAD><style>/* Weather Watchers — page treatment sheet.
   A primary-school weather station: white grounds, navy ink, rounded tint tiles, flat
   sticker symbols beside chunky type, worksheet dotted rules, dashed sample tags, and
   one sunshine highlight per card. Palette-var only — the dusk skin flips every voice
   and the sheet follows. Cells own their paint natively (background-color attr); this
   sheet supplies corners, rhythm, the dotted rule, the pill shapes and the chip colours. */

.gml-card {
  --sun: var(--palette-1);
  --ink: var(--palette-2);
  --sky: var(--palette-3);
  --wind: var(--palette-4);
  --warm: var(--palette-5);
  --rain: var(--palette-6);
  --cloud: var(--palette-7);
  --tile-radius: 18pt;
  --rule-weight: 2pt;
}

/* Type voice: the rounded display face announces (display, h1, h2, metric numerals);
   the literacy face carries everything a child reads, including h3/h4 panel titles. */
h3.gml-heading,
h4.gml-heading {
  font-family: var(--body-font);
}

/* Move 1 — sticker cargo: a flat symbol hugs the word it names (tile tops, rails, floods). */
.sticker.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 8pt;
}
.sticker .gml-figure__img {
  object-fit: contain;
}
/* Stat cells: the figure and its caption read as one unit (a 4pt hug), while the sticker
   above keeps a full beat of clear air so the number never crowds the picture. */
.ledger.gml-grid .sticker.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 4pt;
}
.ledger.gml-grid .sticker.gml-grid-cell .gml-figure {
  margin-block-end: 14pt;
}

/* Move 2 — tint tiles: rounded, borderless, shadowless pale cells whose tint follows the
   symbol or category they hold; copy inside stays the card ink. The renderer paints a cell
   radius only on a boxy cell-style, so every plate is a `subtle` cell (solid-boxes recipe)
   carrying its own tint through the background-color attr. */
.plate.gml-grid-cell {
  --cell-radius: var(--tile-radius);
  --cell-shadow: none;
}
.plate.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 6pt;
  --subheading-gap-below: 6pt;
}
/* Photo tiles: a background photograph clipped to the tile radius, with an opaque caption
   plate riding its foot so the word stays readable over any picture. */
.photo.gml-grid-cell {
  clip-path: inset(0 round var(--tile-radius));
}

/* Move 3 — symbol chips: round solid chips holding a white pictogram. The grid class sets
   the house chip; the per-item classes give one chip its semantic colour. */
.tick.gml-grid {
  --marker-bg: var(--sky);
  --marker-color: var(--palette-3-contrast-text);
  --marker-radius: 999px;
  --marker-border-width: 0;
}
.tick-sky.gml-grid-cell {
  --marker-bg: var(--sky);
  --marker-color: var(--palette-3-contrast-text);
}
.tick-wind.gml-grid-cell {
  --marker-bg: var(--wind);
  --marker-color: var(--palette-4-contrast-text);
}
.tick-warm.gml-grid-cell {
  --marker-bg: var(--warm);
  --marker-color: var(--palette-5-contrast-text);
}
.tick-ink.gml-grid-cell {
  --marker-bg: var(--ink);
  --marker-color: var(--palette-2-contrast-text);
}

/* Move 4 — sample tag: a dashed rounded pill on every card carrying illustrative data. */
.note .gml-label[data-variant="outline"] {
  outline: var(--rule-weight) dashed var(--ink);
  outline-offset: calc(-1 * var(--rule-weight));
  border-radius: 999px;
  --label-text: var(--ink);
  --label-pad-inline: 0.9em;
  --label-pad-block: 0.4em;
}

/* Move 5 — sky flood: display type top-left on a deep-sky field; the flood cell keeps a
   looser gap between the title and its one supporting line. */
.hero.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 14pt;
}
.hero .gml-display,
.hero h1.gml-title {
  letter-spacing: -0.01em;
}
/* The rounded display face rises above its 1.0 line box; a little top padding keeps the
   numeral or title ink clear of the pill above it and of the flood's top trim. */
.hero .gml-display {
  padding-top: 8pt;
}
.hero .gml-labels + .gml-display,
.hero .gml-display:not(:first-child) {
  margin-top: 10pt;
}

/* Move 6 — worksheet ledger: a filled header row and dotted exercise-book rules between rows,
   on tables and on ruled row grids alike. */
.ledger.gml-table {
  --table-header-bg: var(--sky);
  --table-header-color: var(--palette-3-contrast-text);
  --table-border-color: var(--cloud);
  --table-border-width: var(--rule-weight);
  --table-cell-padding-block: 3pt;
  --table-cell-padding-inline: 12pt;
  --table-radius: 14pt;
  --table-icon-size: 1.2em;
}
.ledger.gml-table .gml-table__cell {
  border-bottom-style: dotted;
  vertical-align: middle;
}
/* Projection rows: the cell's own inset carries the row height; paragraph margins would double it. */
.ledger.gml-table .gml-table__cell p.gml-paragraph {
  margin: 0;
  line-height: 1.25;
}
.ledger.gml-table .gml-table__row:last-child .gml-table__cell {
  border-bottom: var(--table-border-width) dotted var(--table-border-color);
}
.ledger.gml-table .gml-table__cell:not([data-col='0']) {
  text-align: center;
}
.ledger.gml-grid .gml-grid-cell__seam[data-axis="row"] {
  border-top-style: dotted;
}
.ledger.gml-grid {
  --grid-divider-color: var(--cloud);
  --grid-divider-width: var(--rule-weight);
}

/* Move 7 — question bubble: a subtle tint cell with a small tail below its right third,
   painted in the cell's own fill; one big question each. The tail is a pseudo-element on the
   cell that holds the copy (the native `cell-decor="tail"` box is read as internal overflow by
   the geometry measurer — recorded platform gap). */
.quote.gml-grid-cell {
  --cell-radius: var(--tile-radius);
  --cell-shadow: none;
  position: relative;
}
.quote.gml-grid-cell::after {
  content: "";
  position: absolute;
  right: 44pt;
  bottom: -6.5pt;
  width: 13pt;
  height: 13pt;
  background: var(--cell-bg, var(--surface-color));
  transform: rotate(45deg);
}
.quote.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 4pt;
}

/* Move 8 — sun highlight: the accent as a rounded pill or tile marking "your turn". */
.claim .gml-label[data-variant="solid"] {
  --label-fill: var(--sun);
  --label-text: var(--palette-1-contrast-text);
  border-radius: 999px;
  --label-pad-inline: 1em;
  --label-pad-block: 0.45em;
}
.claim.gml-grid-cell {
  --cell-radius: var(--tile-radius);
  --cell-shadow: none;
}

/* Bleed: a root cell painted to the trim squares its corners. */
.bleed.gml-grid-cell {
  --cell-radius: 0;
}
/* Chip row at observation scale — the floating chip grid wears tick and tick-big together.
   Sized in em so the chips follow the projection body size (24pt → ~80pt chips). */
.tick-big.gml-grid {
  --marker-size: 3em;
  --marker-glyph-size: 1.45em;
}

/* Registers */
.metric.gml-paragraph,
.metric p.gml-paragraph {
  font-family: var(--heading-font);
  font-weight: 800;
  line-height: 1;
  letter-spacing: -0.01em;
  font-variant-numeric: tabular-nums;
}
.toc.gml-grid {
  --marker-bg: var(--sky);
  --marker-color: var(--palette-3-contrast-text);
  --marker-radius: 999px;
  --marker-border-width: 0;
  --marker-font-weight: 800;
}
.toc.gml-grid .gml-grid-cell__marker {
  font-family: var(--heading-font);
}
.prose.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 9pt;
}
.evidence.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 10pt;
}
.panel.gml-box {
  border-radius: var(--tile-radius);
}

/* Icon ledger at projection scale: bare pictograms in the gutter grow with the row text. */
.toolrow.gml-grid {
  --marker-glyph-size: 1.35em;
}</style></HEAD>
<section image-layout="blank" id="8nHCT4753b" card-margin-hidden="true"><grid spacing="none"><grid-item id="v4nAfOdaIU" class="hero bleed" background-color="palette-3" colspan="36"><labels class="claim"><label variant="solid">Invisible Shield Club</label></labels><display size="md">The sky has an invisible shield</display><p font-size="lg">Sunlight brings light and warmth. Some ultraviolet, or UV, can harm living things. High above us, ozone absorbs much of it.</p><spacer mode="fill"></spacer><p role="caption">Source: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP ozone assessment</a></p></grid-item><grid-item id="rs2PoKUJ_i" class="sticker bleed" background-color="palette-3" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/31XgHa6NXtt0q5cEb9R6k.png" saved-media-id="e40wcclhbm26vn2" source="image.ai-generated" background="true" image-style="weather-sticker" alt="Flat vector sticker illustration of one curved sky-blue protective shield above a small Earth globe while sunshine-yellow rays meet its outer edge, thick uniform deep-navy outline with rounded joins, solid flat fills in sunshine yellow, sky blue, wind teal and warm coral, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background, oversized composition cropping at the lower-right edge" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>Welcome the class to the Invisible Shield Club. Explain that sunlight is useful, while one part of it—UV—can be harmful. Today the class will predict, reveal and teach back how ozone helps.</p></notes></section>
<section image-layout="blank" id="3v6oMZY7im"><grid spacing="none"><grid-item id="iKFkIx_JDU"><h2>Meet ozone: three oxygen atoms</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="0bNGG4GDGh" align="center" vertical-align="center" colspan="26"><freeform-block w="340" h="285"><shape preset="line" x="93" y="112" w="74" h="40" stroke="palette-2" stroke-width="5"></shape><shape preset="line" x="173" y="112" w="74" h="40" stroke="palette-2" stroke-width="5" flip-v="true"></shape><shape preset="ellipse" x="28" y="58" w="104" h="104" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="118" y="112" w="104" h="104" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="208" y="58" w="104" h="104" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><box type="content" x="48" y="83" w="64" h="54" vertical-align="center" sizing="fixed"><h3 align="center">O</h3></box><box type="content" x="138" y="137" w="64" h="54" vertical-align="center" sizing="fixed"><h3 align="center">O</h3></box><box type="content" x="228" y="83" w="64" h="54" vertical-align="center" sizing="fixed"><h3 align="center">O</h3></box><box type="content" x="45" y="232" w="250"><p align="center"><b>Ozone = O₃</b><br>a gas made of three oxygen atoms</p></box></freeform-block></grid-item><grid-item id="nLCqo9bQqh" colspan="34"><grid direction="vertical" spacing="small" vertical-sizing="fill"><grid-item id="B9kwlDxli_" class="plate" background-color="palette-8" vertical-align="center" cell-style="subtle" padding="14pt 20pt"><h4>High above the weather</h4><p>Most protective ozone is in the <b>stratosphere</b>: the region of air above our weather.</p></grid-item><grid-item id="W3ApquDkxB" class="plate" background-color="palette-9" vertical-align="center" cell-style="subtle" padding="14pt 20pt"><h4>A region, not a shell</h4><p>Ozone is spread through that air.</p></grid-item><grid-item id="eB0JmvokEb" class="plate" background-color="palette-11" vertical-align="center" cell-style="subtle" padding="14pt 20pt"><h4>Different near the ground</h4><p>Ground-level ozone is pollution.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>Point to each oxygen atom, then say O-three together. Stress that protective ozone is spread through a high region of air. It is not a hard roof, and ozone near the ground is a separate pollution problem.</p></notes></section>
<section image-layout="blank" id="PhVksl7GQG"><grid spacing="none"><grid-item id="1RbiCA1OCg" class="evidence"><h2>Predict the UV path</h2><p>Two identical Earths receive the same harmful UV. Which one gets less UV at the ground?</p><labels class="claim"><label variant="solid">Point, vote and explain your reason</label></labels><spacer mode="fill"></spacer><custom-code>
        <style>
          .uv-path { font-family: var(--body-font); color: var(--body-color); }
          .uv-path svg { display: block; width: 100%; height: auto; }
          .uv-path .lane { fill: color-mix(in srgb, var(--palette-3) 8%, var(--card-color)); stroke: var(--neutral-border-color); stroke-width: 2; }
          .uv-path .sun { fill: var(--accent-color); stroke: var(--heading-color); stroke-width: 4; }
          .uv-path .earth { fill: var(--palette-3); stroke: var(--heading-color); stroke-width: 4; }
          .uv-path .ozone-more { stroke: var(--palette-4); stroke-width: 16; stroke-linecap: round; }
          .uv-path .ozone-less { stroke: var(--palette-5); stroke-width: 6; stroke-linecap: round; }
          .uv-path .uv { stroke: var(--accent-color); stroke-width: 5; stroke-linecap: round; }
          .uv-path .unknown { stroke: var(--heading-color); stroke-width: 3; stroke-dasharray: 8 8; }
          .uv-path text { font-family: var(--body-font); fill: var(--heading-color); font-weight: 700; }
          .uv-path .small { font-size: 18px; }
          .uv-path .big { font-family: var(--heading-font); font-size: 28px; font-weight: 800; }
        </style>
        <div class="uv-path">
          <svg viewBox="0 0 820 250" width="820" height="250" role="img" aria-labelledby="uv-title">
            <title id="uv-title">Prediction diagram comparing the path of equal incoming UV toward an Earth with more ozone and an Earth with less ozone</title>
            <defs>
              <marker id="uv-arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
                <path d="M 0 0 L 10 5 L 0 10 z" fill="var(--accent-color)"></path>
              </marker>
            </defs>
            <rect class="lane" x="145" y="18" width="650" height="96" rx="24"></rect>
            <rect class="lane" x="145" y="136" width="650" height="96" rx="24"></rect>
            <circle class="sun" cx="70" cy="125" r="43"></circle>
            <text class="small" x="70" y="130" text-anchor="middle">SUN</text>
            <text class="small" x="165" y="49">EARTH A · MORE OZONE</text>
            <text class="small" x="165" y="167">EARTH B · LESS OZONE</text>
            <line class="uv" x1="125" y1="69" x2="470" y2="69" marker-end="url(#uv-arrow)"></line>
            <line class="uv" x1="125" y1="187" x2="470" y2="187" marker-end="url(#uv-arrow)"></line>
            <line class="ozone-more" x1="505" y1="43" x2="505" y2="95"></line>
            <line class="ozone-less" x1="505" y1="161" x2="505" y2="213"></line>
            <text class="small" x="505" y="31" text-anchor="middle">ozone</text>
            <text class="small" x="505" y="149" text-anchor="middle">ozone</text>
            <line class="unknown" x1="530" y1="69" x2="683" y2="69"></line>
            <line class="unknown" x1="530" y1="187" x2="683" y2="187"></line>
            <text class="big" x="607" y="61" text-anchor="middle">?</text>
            <text class="big" x="607" y="179" text-anchor="middle">?</text>
            <circle class="earth" cx="735" cy="69" r="34"></circle>
            <circle class="earth" cx="735" cy="187" r="34"></circle>
          </svg>
        </div>
      </custom-code><spacer mode="fill"></spacer></grid-item></grid><notes><p>Do not reveal the answer yet. Ask children to point to Earth A or Earth B, then take two reasons. The same amount of UV starts each path; the only changed feature is the amount of stratospheric ozone.</p></notes></section>
<section image-layout="blank" id="ZJy5ksXqjL"><grid spacing="none"><grid-item id="pg_TTNP0fe"><h2>Reveal: what the shield changes</h2><grid spacing="medium" vertical-sizing="fill"><grid-item id="xOfsELy_tQ" class="plate" background-color="palette-10" align="center" vertical-align="center" cell-style="subtle" padding="24pt" colspan="30"><h3 align="center">More ozone</h3><display size="md" style="text-align: center;">LESS UV</display><p align="center">More harmful UV is absorbed high above Earth.</p></grid-item><grid-item id="iIqjU9Ksc2" class="plate" background-color="palette-11" align="center" vertical-align="center" cell-style="subtle" padding="24pt" colspan="30"><h3 align="center">Less ozone</h3><display size="md" style="text-align: center;">MORE UV</display><p align="center">Less is absorbed, so more can pass through.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="9meLSGkCeh" class="claim" background-color="accent" cell-style="subtle" padding="14pt 22pt"><h3 align="center">Ozone changes the amount. It does not block every ray.</h3></grid-item></grid></grid-item></grid><notes><p>Reveal Earth A as the answer. Trace each path again. More ozone means more harmful UV is absorbed before reaching the ground, but the shield is not perfect and does not stop every ray.</p></notes></section>
<section image-layout="blank" id="CiSwLw5xXT"><grid spacing="none"><grid-item id="QKSU9rzadj" class="evidence"><h2>How people thinned the shield</h2><p><b>Ozone-depleting substances</b> are long-lived human-made chemicals that reduce protective ozone.</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" spacing="medium" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="-VmsdV4Trg" colspan="15"><h4>Long-lived chemicals</h4><p font-size="sm">Some chemicals from older cooling products lasted for years.</p></grid-item><grid-item id="yUV6P6aiq8" colspan="15"><h4>They rose high</h4><p font-size="sm">They reached the stratosphere, above the weather.</p></grid-item><grid-item id="bTpc9rhHUn" colspan="15"><h4>Sunlight split them</h4><p font-size="sm">This released atoms that could destroy ozone.</p></grid-item><grid-item id="4PwzTG_HFa" colspan="15"><h4>Atoms worked again</h4><p font-size="sm">The same atoms could destroy ozone repeatedly.</p></grid-item></grid><spacer mode="fill"></spacer><p><b>The result was thinning—not a neat, visible hole.</b></p><p role="caption">Source: <a href="https://ozone.unep.org/treaties/montreal-protocol">UNEP, Montreal Protocol</a></p></grid-item></grid><notes><p>Follow the numbered chain from left to right. Keep the tone calm: people discovered the problem and changed course. Clarify that “the ozone hole” describes severe thinning, not an opening someone could see through.</p></notes></section>
<section image-layout="blank" id="444WXoCmDJ"><grid spacing="none"><grid-item id="R5CJu01YZz" class="evidence"><h2>The comeback has a clock</h2><p>Countries agreed to phase out ozone-depleting substances. A 2023 assessment projected recovery toward 1980 ozone levels.</p><labels class="claim"><label variant="solid">If current policies remain</label></labels><spacer mode="fill"></spacer><smart-layout variant="timeline" orientation="horizontal" cell-size="15"><smart-layout-item><h4>Around 2040</h4><p>Global ozone</p></smart-layout-item><smart-layout-item><h4>Around 2045</h4><p>Arctic ozone</p></smart-layout-item><smart-layout-item><h4>Around 2066</h4><p>Antarctic ozone</p></smart-layout-item></smart-layout><spacer mode="fill"></spacer><p role="caption">Conditional projections, not guaranteed dates. Source: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP, 2023 assessment</a></p></grid-item></grid><notes><p>Read the dates from left to right. Emphasize that these are projections: they depend on countries keeping the current policies. Different regions recover on different clocks, and the Antarctic region takes longest.</p></notes></section>
<section image-layout="blank" id="EVvoyabDxl"><grid spacing="none"><grid-item id="ZdAuouvyCf" class="evidence"><h2>Different actions do different jobs</h2><labels class="claim"><label variant="solid">Sort each action by its real job</label></labels><grid spacing="small" vertical-sizing="fill"><grid-item id="zT0LrSBWbe" class="plate sticker" background-color="palette-10" align="center" cell-style="subtle" padding="18pt 16pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/BSPN1ECe50JBHJa0D-DKK.png" saved-media-id="zu2q7fmf10yh3jr" source="image.ai-generated" height="92pt" image-style="weather-sticker" alt="Flat vector sticker illustration of one sealed cooling unit with a small safety shield and service wrench beside it, thick uniform deep-navy outline with rounded joins, solid flat fills in sky blue, wind teal and soft cloud grey, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><h3 align="center">Ozone recovery</h3><p font-size="sm" align="center">Phase out ozone-depleting substances. Trained adults safely service old cooling equipment.</p></grid-item><grid-item id="S7ERpIYMum" class="plate sticker" background-color="palette-9" align="center" cell-style="subtle" padding="18pt 16pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/_B0xv4c7PGGIwEM3JKikS.png" saved-media-id="vchw96x04wdlpeq" source="image.ai-generated" height="92pt" image-style="weather-sticker" alt="Flat vector sticker illustration of one open sunshine-yellow shade umbrella blocking a few sky-blue sun rays, thick uniform deep-navy outline with rounded joins, solid flat fills, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><h3 align="center">Sun safety</h3><p font-size="sm" align="center">Shade, clothing and sunscreen protect skin now.</p></grid-item><grid-item id="Fvtk-3QVli" class="plate sticker" background-color="palette-11" align="center" cell-style="subtle" padding="18pt 16pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/1yJbq70BFU6tV9S1HC7m6.png" saved-media-id="d6mugdqvmynmex8" source="image.ai-generated" height="92pt" image-style="weather-sticker" alt="Flat vector sticker illustration of one small Earth globe combined with an upright warm-coral thermometer, thick uniform deep-navy outline with rounded joins, solid flat fills in sky blue, wind teal and warm coral, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><h3 align="center">Climate</h3><p font-size="sm" align="center">HFCs do not deplete ozone, but they can warm the climate.</p></grid-item></grid><p role="caption">Source: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP</a></p></grid-item></grid><notes><p>Read one action at a time and ask which job it belongs to. Keep the three columns separate: repairing the ozone layer, protecting skin today and limiting climate warming are related choices, but they are not the same job.</p></notes></section>
<section image-layout="blank" id="QqAA8Vl64w"><grid spacing="none"><grid-item id="RdQkCZJSxh"><h2>Your 20-second shield story</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="tdpUTGYM0W" colspan="38"><grid divider="2pt palette-7" marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-position="inline" direction="vertical" vertical-sizing="fill" class="toc ledger" style="--marker-inline-size: 42pt; --marker-gap: 16pt;"><grid-item id="CCpIXyvWwZ" vertical-align="center" padding-bottom="12pt"><p>Where is protective ozone?</p></grid-item><grid-item id="OZ7S9mVn2J" vertical-align="center" padding-top="12pt" padding-bottom="12pt"><p>What does it do to harmful UV?</p></grid-item><grid-item id="eaqXcuh9Id" vertical-align="center" padding-top="12pt" padding-bottom="12pt"><p>What thinned it?</p></grid-item><grid-item id="m-BPuYxccQ" vertical-align="center" padding-top="12pt"><p>What global plan is helping?</p></grid-item></grid></grid-item><grid-item id="zSdTkodo4v" class="claim plate sticker" background-color="accent" align="center" vertical-align="center" cell-style="subtle" padding="22pt 20pt" colspan="22"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/Zmnn9E6rXz8kehKCOeM0P.png" saved-media-id="somjyr13gwzm435" source="image.ai-generated" height="108pt" image-style="weather-sticker" alt="Flat vector sticker illustration of one round stopwatch beside a small curved protective shield, thick uniform deep-navy outline with rounded joins, solid flat fills in sunshine yellow, sky blue and wind teal, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><h3 align="center">Teach it back</h3><p align="center">Finish with one accurate action—and one thing people often mix up.</p></grid-item></grid></grid-item></grid><notes><p>Give pairs twenty seconds each. Listen for four ideas: ozone is high in the stratosphere, it absorbs much harmful UV, certain long-lived chemicals thinned it, and the Montreal Protocol phases those chemicals out. Invite one final mix-up correction.</p></notes></section>