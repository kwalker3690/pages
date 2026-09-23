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
<section image-layout="blank" id="BohMC9Kglj" card-margin-hidden="true"><grid spacing="none"><grid-item id="GLb86hIjSU" class="hero bleed" background-color="palette-3" colspan="36"><labels class="claim"><label variant="solid">A true science mystery</label></labels><spacer mode="fill"></spacer><h1>The Invisible Shield: How Earth Fixed a Hole in the Sky</h1><p font-size="lg">A protective layer was breaking. Scientists found the culprit, and the world changed course.</p></grid-item><grid-item id="vtFQAbM0rt" class="sticker bleed" background-color="palette-3" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/Jz38SJ4cAEnIsiosHeJxz.png" saved-media-id="15gtf5y1h5up9f1" source="image.ai-generated" background="true" image-style="weather-sticker" alt="Flat vector sticker illustration of planet Earth partly wrapped by a large curved transparent-looking shield, one small gap in the shield above the planet, thick uniform deep-navy outline with rounded joins, solid flat fills in sky blue, wind teal, sunshine yellow and soft cloud grey, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background, oversized composition cropping at the right and bottom edges" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>Ask what an invisible shield might protect Earth from. Explain that this is a true story involving a mystery, a harmful chemical journey and a worldwide repair job.</p></notes></section>
<section image-layout="blank" id="s7ohXbUaVc"><grid spacing="none"><grid-item id="41IayEs0KO" padding-bottom="40pt"><h2>Mystery at the Bottom of the World</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="8hfJh4Z2LW" colspan="38"><grid divider="2pt palette-7" marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-position="inline" direction="vertical" vertical-sizing="fill" class="toc ledger" style="--marker-inline-size: 42pt; --marker-gap: 16pt;"><grid-item id="WQohRo0j5P" vertical-align="center" padding="14pt 0"><p>Every Antarctic spring, ozone readings <b>dropped sharply</b>.</p></grid-item><grid-item id="e26izvhLMW" vertical-align="center" padding="14pt 0"><p>Three scientists checked the instrument and the records. The strange low numbers kept returning.</p></grid-item><grid-item id="5iaHXnPgL0" vertical-align="center" padding="14pt 0"><p>In May 1985, Joe Farman, Brian Gardiner and Jon Shanklin reported the repeating loss.</p></grid-item></grid></grid-item><grid-item id="d87tCk1TLK" vertical-align="center" colspan="22"><grid spacing="none" vertical-sizing="hug"><grid-item id="UhoeejyHVC" class="claim plate" background-color="accent" cell-style="subtle" padding="22pt 24pt"><h3>Class prediction</h3><p>If a protective layer high above Earth became thinner, what might reach the ground?</p></grid-item></grid><p role="caption"><a href="https://www.bas.ac.uk/news/marking-40-years-since-the-discovery-of-the-ozone-hole/">British Antarctic Survey</a></p></grid-item></grid></grid-item></grid><notes><p>Pause after each clue. Let the class guess what the scientists suspected before revealing that the same pattern returned every spring.</p></notes></section>
<section image-layout="blank" id="UEtRHz2In3"><grid spacing="none"><grid-item id="R24Hx6dtAA"><h2 font-size="40pt">Earth’s Sunscreen: Ozone 15–40 km Above Us</h2><grid spacing="medium" vertical-sizing="hug"><grid-item id="95d3YEnYOQ" class="prose" vertical-align="center" colspan="24"><grid spacing="small" vertical-sizing="hug"><grid-item id="xBy24pzMSy" class="plate" background-color="palette-12" cell-style="subtle" padding="14pt" colspan="30"><p font-size="36pt" class="metric">O₂</p><p font-size="18pt">Ordinary oxygen we breathe</p></grid-item><grid-item id="4EUB7UH2FB" class="plate" background-color="palette-9" cell-style="subtle" padding="14pt" colspan="30"><p font-size="36pt" class="metric">O₃</p><p font-size="18pt">Ozone: three oxygen atoms</p></grid-item></grid><p font-size="18pt">The ozone layer is a wide region of air, not a solid roof. It absorbs most UVB and all UVC radiation.</p></grid-item><grid-item id="eh-LuOl4U_" style="min-height: 300pt;" colspan="36"><grid direction="vertical" spacing="none" vertical-sizing="fill"><grid-item id="VPgFaW4WhG" background-color="palette-2" vertical-align="center" padding="8pt 16pt" rowspan="10"><p font-size="18pt" align="center"><b>Sunlight and ultraviolet radiation</b></p></grid-item><grid-item id="xJ6UmUk62x" class="plate" background-color="palette-8" vertical-align="center" padding="12pt 20pt" rowspan="32"><p font-size="36pt" align="center" class="metric">15–40 km</p><h3 font-size="24pt" align="center">Ozone-rich stratosphere</h3><p font-size="18pt" align="center">Extra ozone molecules are mixed through this band of air.</p></grid-item><grid-item id="2RNxu8Ao8y" background-color="palette-12" vertical-align="center" padding="10pt 20pt" rowspan="18"><p font-size="18pt" align="center"><b>Earth’s surface and lower atmosphere</b></p></grid-item></grid></grid-item></grid><p font-size="15pt" role="caption">Source: <a href="https://www.epa.gov/ozone-layer-protection/basic-ozone-layer-science">US EPA</a></p></grid-item></grid><notes><p>Say O-two and O-three aloud. Point out that the shield is a region with extra ozone molecules, spread through the stratosphere.</p></notes></section>
<section image-layout="blank" id="c-B9rzxYUT"><grid spacing="none"><grid-item id="WcJrHhjS32"><h2 font-size="34pt">UV Is Invisible, but Its Damage Is Not</h2><grid spacing="small" vertical-sizing="hug"><grid-item id="mZq5k_tI49" class="plate" marker="icon" marker-size="small" marker-position="above" background-color="palette-11" cell-style="subtle" padding="14pt 16pt" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/HqRnqTOMvbrtWfZHXPTo.svg?stroke=45" source="image.pictographic.icon" alt="human skin sun protection"></icon></grid-item-label><h3 font-size="22pt">People</h3><p font-size="17pt">Extra UVB causes sunburn and raises the risk of skin cancer and cataracts.</p></grid-item><grid-item id="UXzwIKLG-N" class="plate" marker="icon" marker-size="small" marker-position="above" background-color="palette-10" cell-style="subtle" padding="14pt 16pt" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/2t4nJlsKtKOFH7nkXh6B.svg?stroke=45" source="image.pictographic.icon" alt="crop plant leaf sunlight"></icon></grid-item-label><h3 font-size="22pt">Crops</h3><p font-size="17pt">Too much ultraviolet energy can damage growing plants and their cells.</p></grid-item><grid-item id="lZ_zUuISgE" class="plate" marker="icon" marker-size="small" marker-position="above" background-color="palette-8" cell-style="subtle" padding="14pt 16pt" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/Bip9bi8L9AmTV56VzZvh.svg?stroke=45" source="image.pictographic.icon" alt="tiny ocean plankton organism"></icon></grid-item-label><h3 font-size="22pt">Ocean life</h3><p font-size="17pt">Small organisms near the ocean surface can also be harmed.</p></grid-item><grid-item id="IkL8t_bTqs" class="plate" background-color="palette-12" cell-style="subtle" padding="14pt 16pt" colspan="36"><h3 font-size="22pt">Make the invisible visible</h3><p font-size="17pt">Shine a UV torch on UV-sensitive beads. Cover half with UV-blocking material. Compare the colour change.</p></grid-item><grid-item id="QcA7NQTrtH" class="claim" background-color="accent" cell-style="subtle" padding="14pt 16pt" colspan="24"><p font-size="17pt"><b>Sunscreen protects one person.</b> Ozone helps protect life across the planet.</p></grid-item></grid><p font-size="13pt" role="caption">Source: <a href="https://www.epa.gov/ozone-layer-protection/basic-ozone-layer-science">US EPA</a></p></grid-item></grid><notes><p>Explain that ultraviolet means beyond violet. We cannot see these rays, but the bead demonstration reveals where their energy lands.</p></notes></section>
<section image-layout="blank" id="fP_jjyHXfm" card-margin-hidden="true"><grid spacing="none"><grid-item id="kHDeFgfo8M" class="hero bleed" background-color="palette-3" colspan="36"><spacer mode="fill"></spacer><p role="eyebrow">The culprit</p><display size="md">So What Punched the Hole?</display><p font-size="lg">The trail begins with a gas that once looked unusually safe.</p></grid-item><grid-item id="CXUm2ULhAc" class="sticker bleed" background-color="palette-3" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/Yg8eINYsCDGOJdeaN0Y4y.png" saved-media-id="vlpsq1ay5hy6whl" source="image.ai-generated" background="true" image-style="weather-sticker" alt="Flat vector sticker illustration of a large upright refrigerator beside a curved protective shield with one jagged gap punched through it, thick uniform deep-navy outline with rounded joins, solid flat fills in sky blue, soft cloud grey, warm coral and sunshine yellow, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background, oversized composition cropping at the right and bottom edges" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>Invite quick guesses. Then reveal that the culprit was connected to useful products such as refrigerators, air conditioners, foams and sprays.</p></notes></section>
<section image-layout="blank" id="KslhxrKhKQ"><grid spacing="none"><grid-item id="Ktu5NuQyw0" class="evidence"><h2>A “Safe” Fridge Gas Had a Hidden Journey</h2><p font-size="18pt">CFCs, or chlorofluorocarbons, behaved very differently near the ground and high in the sky.</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" spacing="medium" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="BEef48nKMI" colspan="15"><h3 font-size="22pt">Used</h3><p font-size="17pt">Refrigerators, air conditioners, foams and aerosol sprays used CFCs.</p></grid-item><grid-item id="I3_Ij966a7" colspan="15"><h3 font-size="22pt">Seemed safe</h3><p font-size="17pt">They were stable, nonflammable and not very toxic near the ground.</p></grid-item><grid-item id="Ot4p77JhGk" colspan="15"><h3 font-size="22pt">Drifted upward</h3><p font-size="17pt">Their stability let them travel for years without breaking apart.</p></grid-item><grid-item id="4WFF8y_D54" colspan="15"><h3 font-size="22pt">Split open</h3><p font-size="17pt">Strong UV light finally broke them and released chlorine atoms.</p></grid-item></grid><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="5tZzFa9DeF" class="claim" background-color="accent" cell-style="subtle" padding="10pt 18pt"><p font-size="17pt" align="center"><b>The danger was not where CFCs were used. It was where they eventually travelled.</b></p></grid-item></grid><p font-size="14pt" role="caption">Source: <a href="https://ozone.unep.org/how-have-humans-affected-ozone-layer">UNEP Ozone Secretariat</a></p></grid-item></grid><notes><p>Trace the journey from a household product to the stratosphere. Stress that the useful stability of CFCs also allowed them to survive the long trip upward.</p></notes></section>
<section image-layout="blank" id="jeK4mp-B2y"><grid spacing="none"><grid-item id="UYfw5lOjRM"><h2 font-size="34pt">One Chlorine Atom Can Wreck Ozone Again and Again</h2><grid spacing="large" vertical-sizing="hug"><grid-item id="YrGsAYWfiF" colspan="42"><p font-size="14pt" role="eyebrow">THE CHLORINE LOOP</p><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" spacing="medium" vertical-sizing="hug" style="--marker-gap: 0.5em;"><grid-item id="_QDlHLsEHn" colspan="20"><h4 font-size="21pt">Snatch</h4><p font-size="18pt">Chlorine steals one oxygen atom from ozone, turning O₃ into O₂.</p></grid-item><grid-item id="pFwdxo0Vdm" colspan="20"><h4 font-size="21pt">Reset</h4><p font-size="18pt">Another reaction makes chlorine let go of that oxygen.</p></grid-item><grid-item id="fEsvXZ3Omb" colspan="20"><h4 font-size="21pt">Repeat</h4><p font-size="18pt">The same chlorine atom attacks another ozone molecule, and the loop starts again.</p></grid-item></grid></grid-item><grid-item id="E37d3Dv0Nl" colspan="18"><grid spacing="none" vertical-sizing="hug"><grid-item id="-T2BDTXQQN" class="claim" background-color="accent" cell-style="subtle" padding="18pt"><p font-size="44pt" align="center" class="metric">100,000</p><p font-size="18pt" align="center">Up to this many ozone molecules can be destroyed by one chlorine atom.</p></grid-item></grid></grid-item></grid><blockquote><p font-size="17pt">Picture a tiny robot that keeps swinging, not a hammer that breaks once.</p></blockquote><p font-size="14pt" role="caption">Source: <a href="https://ozone.unep.org/how-have-humans-affected-ozone-layer">UNEP Ozone Secretariat</a></p></grid-item></grid><notes><p>Trace the cycle more than once. Chlorine is recycled, so removing one ozone molecule does not use the chlorine atom up.</p></notes></section>
<section image-layout="blank" id="dOWCO37Ve4"><grid spacing="none"><grid-item id="uaN65RsCNk" class="evidence" padding-bottom="18pt"><h2>Why Antarctica Gets a “Hole” Every Spring</h2><grid spacing="medium" vertical-sizing="hug"><grid-item id="hokWd2y6wI" colspan="35"><grid marker="number" marker-position="inline" marker-align="start" marker-numbering-format="decimal-leading-zero" direction="vertical" spacing="small" vertical-sizing="hug" style="--marker-inline-size: 32pt; --marker-gap: 12pt;"><grid-item id="Z_c1QiIuIN" padding="4pt 0"><h4>Dark winter</h4><p font-size="18pt">Extreme stratospheric cold forms special polar clouds.</p></grid-item><grid-item id="gdjTukxM8A" padding="4pt 0"><h4>Chlorine gets ready</h4><p font-size="18pt">Cloud-surface reactions prepare chlorine to attack ozone.</p></grid-item><grid-item id="k7q9rjiXoM" padding="4pt 0"><h4>Sunlight returns</h4><p font-size="18pt">Spring sunlight speeds the reactions, rapidly destroying ozone.</p></grid-item></grid></grid-item><grid-item id="HsEwBCYEWf" colspan="25"><grid direction="vertical" spacing="small" vertical-sizing="hug"><grid-item id="HqLl2EbaZu" class="plate" background-color="palette-9" cell-style="subtle" padding="12pt 16pt"><p font-size="36pt" class="metric"><b>Below 220 DU</b></p><p font-size="20pt">The “hole” is a vast low-ozone region—not an empty tunnel. DU means Dobson units.</p></grid-item><grid-item id="1NQIEEi_WE" class="plate" background-color="palette-12" cell-style="subtle" padding="12pt 16pt"><h4>Why the size wiggles</h4><p font-size="20pt">Winds and temperatures vary each year, even as long-term recovery continues.</p></grid-item></grid></grid-item></grid><p role="caption">Sources: <a href="https://ozone.unep.org/how-have-humans-affected-ozone-layer">UNEP</a> · <a href="https://science.nasa.gov/earth/nasa-noaa-rank-2025-ozone-hole-as-5th-smallest-since-1992/">NASA</a></p></grid-item></grid><notes><p>Explain that darkness and cold prepare the chemistry. Sunlight starts the rapid destruction, which is why the dramatic drop appears each spring.</p></notes></section>
<section image-layout="blank" id="2qQ2E2okrQ"><grid spacing="none"><grid-item id="pE8cx73jwv"><h2 font-size="38pt">The World Made a Planet-Sized Team Decision</h2><spacer mode="fill"></spacer><grid divider="2pt palette-7" vertical-sizing="hug" class="ledger"><grid-item id="d1dN8Ddtsb" class="sticker" align="center" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/p_iYJx6wCI2V6Zz_VNrjf.png" saved-media-id="gqpydtub6vfsmac" source="image.ai-generated" height="84pt" image-style="weather-sticker" alt="Flat vector sticker illustration of a rolled international agreement document tied with a sky-blue ribbon beside a simple pen, thick uniform deep-navy outline with rounded joins, solid flat fills in sunshine yellow, sky blue and soft cloud grey, no gradients, no shading, no texture, no faces or eyes, no readable text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><p font-size="38pt" align="center" class="metric">1987</p><p font-size="18pt" align="center">Countries agreed to the Montreal Protocol.</p></grid-item><grid-item id="XbQaoGoj2U" class="sticker" align="center" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/_EJCCuPgjYdXAI9XlvS71.png" saved-media-id="rzfs2qfgdiscf9d" source="image.ai-generated" height="84pt" image-style="weather-sticker" alt="Flat vector sticker illustration of a globe surrounded by a complete ring of small linked hands shown as simple symbols with no people or faces, thick uniform deep-navy outline with rounded joins, solid flat fills in sky blue, wind teal, warm coral and sunshine yellow, no gradients, no shading, no texture, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><p font-size="38pt" align="center" class="metric">Every country</p><p font-size="18pt" align="center">Eventually ratified the treaty.</p></grid-item><grid-item id="Ma9BEzZpEe" class="sticker" align="center" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/I1r7BzuVEb927nWaJcjog.png" saved-media-id="ktvtu0hujcs3knx" source="image.ai-generated" height="84pt" image-style="weather-sticker" alt="Flat vector sticker illustration of an almost empty chemical bottle with a bold downward arrow beside it, thick uniform deep-navy outline with rounded joins, solid flat fills in sunshine yellow, warm coral, sky blue and soft cloud grey, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><p font-size="38pt" align="center" class="metric">Nearly 99%</p><p font-size="18pt" align="center">Of banned ozone-depleting substances have been phased out.</p></grid-item></grid><spacer mode="fill"></spacer><p font-size="18pt" align="center">Scientists, citizens, engineers, businesses and governments all carried part of the solution.</p><p font-size="14pt" role="caption" align="center">Sources: <a href="https://www.bas.ac.uk/about/history/ozone-hole-discovery/">British Antarctic Survey</a> · <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP</a></p></grid-item></grid><notes><p>Point out that companies redesigned cooling equipment, sprays and foams while governments strengthened the rules as evidence improved.</p></notes></section>
<section image-layout="blank" id="YYPkP_VaQH"><grid spacing="none"><grid-item id="IDfTKClgzX" class="evidence"><h2>The Repair Is Working — Slowly</h2><p font-size="22pt">Old CFCs last for decades, so their chlorine does not disappear overnight.</p><table col-widths="[22,78]" header-col="true" borders="rows" striped="false" style="font-size: 18pt; --table-cell-padding: 6pt 10pt;"><tbody><tr><td valign="middle"><p>2025</p></td><td valign="middle"><p>The Antarctic hole averaged 18.71 million km² at peak season, the fifth smallest since 1992.</p></td></tr><tr><td valign="middle"><p>Around 2040</p></td><td valign="middle"><p>Expected return to 1980 ozone levels across most of the world.</p></td></tr><tr><td valign="middle"><p>Around 2045</p></td><td valign="middle"><p>Expected return over the Arctic.</p></td></tr><tr><td valign="middle"><p>Around 2066</p></td><td valign="middle"><p>Expected return over Antarctica.</p></td></tr></tbody></table><spacer mode="fill"></spacer><labels class="claim"><label variant="solid">The rules must stay in place</label></labels><p role="caption">Sources: <a href="https://science.nasa.gov/earth/nasa-noaa-rank-2025-ozone-hole-as-5th-smallest-since-1992/">NASA and NOAA</a> · <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP</a></p></grid-item></grid><notes><p>Compare the recovery dates with the children’s own ages. Healing is measurable, but the chemicals remain in the atmosphere for a very long time.</p></notes></section>
<section image-layout="blank" id="pjsh_L14qj"><grid spacing="none"><grid-item id="n-_Sh-Qc6M"><h2>Scientists Still Have to Watch the Sky</h2><grid spacing="large" vertical-sizing="hug"><grid-item id="u1x1iBpbV-" colspan="40"><grid divider="2pt palette-7" marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-position="inline" direction="vertical" vertical-sizing="hug" class="toc ledger" style="--marker-inline-size: 42pt; --marker-gap: 12pt;"><grid-item id="PFD6Te8gKd" padding="8pt 0"><p font-size="18pt"><b>2018:</b> Measurements showed CFC-11 declining only half as fast after 2012. New emissions were suspected.</p></grid-item><grid-item id="fFwGPnE30O" padding="8pt 0"><p font-size="18pt">More observations traced much of the rise to eastern China.</p></grid-item><grid-item id="rpiXVuyt0r" padding="8pt 0"><p font-size="18pt"><b>2019:</b> Regional emissions had fallen back to pre-2013 levels.</p></grid-item></grid></grid-item><grid-item id="ePRA6_Djfa" colspan="20"><grid spacing="none" vertical-sizing="hug"><grid-item id="BHxvJBGnkP" class="plate sticker" background-color="palette-9" align="center" cell-style="subtle" padding="14pt"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/5gP4a4ZPYq2-qO_mtQGCO.png" saved-media-id="fljf55tf449uhun" source="image.ai-generated" height="70pt" image-style="weather-sticker" alt="Flat vector sticker illustration of a large magnifying glass examining a small air sample flask beneath a simple satellite signal symbol, thick uniform deep-navy outline with rounded joins, solid flat fills in sky blue, sunshine yellow, wind teal and soft cloud grey, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><h3 font-size="22pt" align="center">Ozone detective kit</h3><p font-size="17pt" align="center">Satellites, weather balloons, ground stations and air samples.</p></grid-item></grid><p font-size="12pt" role="caption">Sources: <a href="https://www.nature.com/articles/s41586-018-0106-2">Nature, 2018</a> · <a href="https://www.nature.com/articles/s41586-021-03277-w">Nature, 2021</a></p></grid-item></grid><p font-size="18pt">A treaty is not finished when it is signed. The atmosphere must be measured, clues investigated and rules enforced.</p></grid-item></grid><notes><p>Ask which tool could cover the largest area and which could collect a real air sample. Explain how different measurements combine into one investigation.</p></notes></section>
<section image-layout="blank" id="2OYRC8S42K" card-margin-hidden="true"><grid spacing="none"><grid-item id="XCXVVzUP8T" class="hero bleed" background-color="palette-3" colspan="36"><spacer mode="fill"></spacer><p role="eyebrow">The comeback needs guardians</p><display size="md">Your Mission: Protect the Comeback</display><p font-size="lg">Keep the harmful gases contained, make smart choices and protect yourself while the shield heals.</p></grid-item><grid-item id="NJcatixuPG" class="sticker bleed" background-color="palette-3" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/jVAgU2lcieqS0TPzXDR5p.png" saved-media-id="kmejo7kaedb20p5" source="image.ai-generated" background="true" image-style="weather-sticker" alt="Flat vector sticker illustration of a large toolbox containing a refrigerant recovery cylinder, protective sun hat and checklist, thick uniform deep-navy outline with rounded joins, solid flat fills in sunshine yellow, sky blue, wind teal, warm coral and soft cloud grey, no gradients, no shading, no texture, no faces or eyes, no readable text, isolated on a fully transparent background, oversized composition cropping at the right and bottom edges" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>Shift from the global story to practical choices. Children are not expected to service equipment themselves, but they can understand what responsible handling looks like.</p></notes></section>
<section image-layout="blank" id="_ttqtJj20k"><grid spacing="none"><grid-item id="i1Qq7BqoUz"><h2>3 Smart Moves Beat 100 Tiny Gestures</h2><grid marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-position="above" marker-align="start" spacing="small" vertical-sizing="hug"><grid-item id="JexXupHyAt" class="plate" background-color="palette-8" cell-style="subtle" padding="14pt" colspan="20"><h3 font-size="24pt">Contain cooling gases</h3><p font-size="18pt">Leave servicing to trained technicians; old refrigerators and air conditioners need proper recovery and disposal.</p></grid-item><grid-item id="HbcUpJBzqP" class="plate" background-color="palette-10" cell-style="subtle" padding="14pt" colspan="20"><h3 font-size="24pt">Choose responsibly</h3><p font-size="18pt">When adults buy cooling equipment or insulation, ask for ozone-safe, climate-friendly options.</p></grid-item><grid-item id="Kciad9QXhH" class="plate" background-color="palette-11" cell-style="subtle" padding="14pt" colspan="20"><h3 font-size="24pt">Protect yourself now</h3><p font-size="18pt">Check the UV Index; seek shade, cover up and use sunscreen while recovery continues.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="i0SkspmLah" class="claim" background-color="accent" cell-style="subtle" padding="11pt 18pt"><p font-size="18pt" align="center"><b>Share the success story:</b> science found the problem, cooperation changed products, and patient monitoring is repairing the shield.</p></grid-item></grid></grid-item></grid><notes><p>Make clear that children should never open or repair cooling equipment. Their role is to recognise responsible choices, use sun protection and tell the story accurately.</p></notes></section>
<section image-layout="blank" id="dVDWJpx-he"><grid spacing="none"><grid-item id="QGLMIBWbfn" class="evidence"><h2 font-size="36pt">Final Challenge: Build the Ozone Rescue Chain</h2><p font-size="20pt">In teams, arrange six cards into the true cause-and-effect chain.</p><grid marker="number" marker-size="small" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" spacing="small" vertical-sizing="hug" style="--marker-gap: 0.5em;"><grid-item id="rAVWzaeS_a" colspan="20"><p font-size="18pt"><b>CFCs escape</b> from products.</p></grid-item><grid-item id="b8Kuo95f2P" colspan="20"><p font-size="18pt">CFCs drift into the <b>stratosphere</b>.</p></grid-item><grid-item id="d8MZExU9_T" colspan="20"><p font-size="18pt">UV light releases <b>chlorine</b>.</p></grid-item><grid-item id="btw6xME9Jh" colspan="20"><p font-size="18pt">Chlorine destroys ozone <b>repeatedly</b>.</p></grid-item><grid-item id="e1w3CqGCvS" colspan="20"><p font-size="18pt">More harmful UV can reach <b>Earth</b>.</p></grid-item><grid-item id="mfRtphWE7B" colspan="20"><p font-size="18pt">Countries phase out CFCs, and the layer <b>slowly heals</b>.</p></grid-item></grid><grid spacing="medium" vertical-sizing="hug"><grid-item id="mO87uxKsbE" class="plate" background-color="palette-12" cell-style="subtle" padding="12pt 18pt" colspan="35"><p font-size="18pt">Remove one card. Explain what breaks in the chain.</p></grid-item><grid-item id="AaOMBVuMG0" class="claim" background-color="accent" cell-style="subtle" padding="12pt 18pt" colspan="25"><p font-size="18pt"><b>Finish:</b> “The ozone story proves that…”</p></grid-item></grid></grid-item></grid><notes><p>Print or copy the six stages onto separate cards. Ask teams to defend their order, then remove a stage and describe the missing cause or effect.</p></notes></section>
<section image-layout="blank" id="A4k6J0AimR" card-margin-hidden="true"><grid spacing="none"><grid-item id="3AXNBF55Ar" class="hero bleed" background-color="palette-3" colspan="30"><spacer mode="fill"></spacer><h1 font-size="48pt">A Hole in the Sky Proved We Can Repair Harm</h1><p font-size="sm">The comeback began with careful measurements and continued through shared rules, redesigned products and patient watching.</p><spacer mode="fill"></spacer></grid-item><grid-item id="BwabJKJTU2" class="prose" padding="24pt" colspan="30"><grid spacing="small" vertical-sizing="hug"><grid-item id="26MVfUhYVW" class="plate" background-color="palette-8" cell-style="subtle" padding="10pt 14pt" colspan="30"><p font-size="20pt"><b>Shield</b> · Ozone in the stratosphere blocks dangerous UV.</p></grid-item><grid-item id="QTNnxhR7A9" class="plate" background-color="palette-11" cell-style="subtle" padding="10pt 14pt" colspan="30"><p font-size="20pt"><b>Damage</b> · Chlorine from CFCs attacks ozone again and again.</p></grid-item><grid-item id="w1AY_fLyoa" class="plate" background-color="palette-10" cell-style="subtle" padding="10pt 14pt" colspan="30"><p font-size="20pt"><b>Teamwork</b> · The world changed chemicals, products and rules.</p></grid-item><grid-item id="ZdmA55DqKH" class="plate" background-color="palette-9" cell-style="subtle" padding="10pt 14pt" colspan="30"><p font-size="20pt"><b>Healing</b> · The worst chemicals are nearly gone; recovery is on track.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="i1-NKb-KoV" class="claim" background-color="accent" cell-style="subtle" padding="12pt 16pt"><h3 font-size="24pt">Exit ticket</h3><p font-size="20pt">Draw four panels: <b>shield → damage → teamwork → healing</b>.</p></grid-item></grid></grid-item></grid><notes><p>End by having pupils say the four-part chain aloud. Collect the four-panel drawings to check whether they can connect the shield, the damage, the response and the recovery.</p></notes></section>