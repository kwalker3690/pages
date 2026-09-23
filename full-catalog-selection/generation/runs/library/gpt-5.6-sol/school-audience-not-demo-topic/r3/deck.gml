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
<section image-layout="blank" id="8nHCT4753b" card-margin-hidden="true"><grid spacing="none"><grid-item id="v4nAfOdaIU" class="hero bleed" background-color="palette-3" colspan="36"><labels class="claim"><label variant="solid">Invisible Shield Club</label></labels><display size="md">The sky has an invisible shield</display><p font-size="lg">Some ultraviolet, or UV, can harm living things. High above our weather, ozone absorbs much of the harmful UV.</p><spacer mode="fill"></spacer><p role="caption">Source: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP ozone assessment</a></p></grid-item><grid-item id="rs2PoKUJ_i" class="sticker bleed" background-color="palette-3" padding="0" colspan="24"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/OuSu7HqrCBVQEXg-FZO_B.png" saved-media-id="x8xoryl4pc5n73t" source="image.ai-generated" fill="true" alt="Opaque flat vector classroom poster on a clean pale sky-blue background, a small Earth beneath a loose high atmospheric region made of many separate blue ozone dots, sunshine-yellow ultraviolet rays arriving from above with many rays ending among the dots and fewer continuing toward Earth, thick rounded deep-navy outlines, solid sky blue, teal, yellow and coral fills, no gradients, no texture, no transparency, no checkerboard, no continuous shell, no literal hole, no faces, no text" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"></grid-item></grid><notes><p>Welcome the class to the Invisible Shield Club. Explain that sunlight is useful, while one part of it—UV—can be harmful. Today the class will predict, reveal and teach back how ozone helps.</p></notes></section>
<section image-layout="blank" id="3v6oMZY7im"><grid spacing="none"><grid-item id="iKFkIx_JDU"><h2>Meet ozone: three oxygen atoms</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="0bNGG4GDGh" align="center" vertical-align="center" colspan="24"><freeform-block w="300" h="250"><shape preset="line" x="75" y="72" w="62" h="38" stroke="palette-2" stroke-width="5"></shape><shape preset="line" x="163" y="72" w="62" h="38" stroke="palette-2" stroke-width="5" flip-v="true"></shape><shape preset="ellipse" x="24" y="38" w="82" h="82" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="109" y="88" w="82" h="82" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="194" y="38" w="82" h="82" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><box type="content" x="39" y="53" w="52" h="52" vertical-align="center" sizing="fixed"><h3 align="center">O</h3></box><box type="content" x="124" y="103" w="52" h="52" vertical-align="center" sizing="fixed"><h3 align="center">O</h3></box><box type="content" x="209" y="53" w="52" h="52" vertical-align="center" sizing="fixed"><h3 align="center">O</h3></box><box type="content" x="20" y="188" w="260"><p align="center"><b>Ozone = O₃</b><br><span font-size="22pt">a gas made of three oxygen atoms</span></p></box></freeform-block></grid-item><grid-item id="nLCqo9bQqh" colspan="36"><freeform-block w="430" h="250"><box type="content" w="430" h="125" sizing="fixed" background-color="palette-9" style="border-radius: 18pt;"><p></p></box><shape preset="ellipse" x="326" y="24" w="16" h="16" fill="palette-3" stroke="palette-2" stroke-width="2"></shape><shape preset="ellipse" x="360" y="48" w="13" h="13" fill="palette-3" stroke="palette-2" stroke-width="2"></shape><shape preset="ellipse" x="391" y="25" w="17" h="17" fill="palette-3" stroke="palette-2" stroke-width="2"></shape><shape preset="ellipse" x="337" y="82" w="12" h="12" fill="palette-3" stroke="palette-2" stroke-width="2"></shape><shape preset="ellipse" x="389" y="88" w="14" h="14" fill="palette-3" stroke="palette-2" stroke-width="2"></shape><box type="content" x="18" y="12" w="290"><h4>Stratosphere</h4><p font-size="sm">Protective ozone is spread through this high region of air.</p></box><box type="content" y="133" w="430" h="75" sizing="fixed" background-color="palette-8" style="border-radius: 18pt;"><p></p></box><box type="content" x="18" y="139" w="390"><h4>Weather happens below</h4><p font-size="sm">Clouds and rain form here.</p></box><box type="content" y="216" w="430" h="34" vertical-align="center" sizing="fixed" background-color="palette-10" style="border-radius: 17pt;"><p font-size="sm" align="center"><b>At ground level, ozone is pollution.</b></p></box></freeform-block></grid-item></grid></grid-item></grid><notes><p>Point to each oxygen atom, then say O-three together. Use the cross-section to stress that protective ozone is dispersed through a high region of air, not arranged as a hard roof. Ozone near the ground is a separate pollution problem.</p></notes></section>
<section image-layout="blank" id="PhVksl7GQG"><grid spacing="none"><grid-item id="1RbiCA1OCg" class="evidence"><h2>Predict the UV path</h2><p>Both Earths receive the same three harmful UV rays. Which one gets less UV at the ground?</p><labels class="claim"><label variant="solid">Point, vote and explain your reason</label></labels><freeform-block w="840" h="210"><box type="content" w="840" h="95" sizing="fixed" background-color="palette-8" style="border-radius: 18pt;"><p></p></box><box type="content" y="115" w="840" h="95" sizing="fixed" background-color="palette-8" style="border-radius: 18pt;"><p></p></box><shape preset="ellipse" x="18" y="18" w="60" h="60" fill="accent" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="18" y="133" w="60" h="60" fill="accent" stroke="palette-2" stroke-width="4"></shape><box type="content" x="22" y="31" w="52" h="34" vertical-align="center" sizing="fixed"><p font-size="sm" align="center"><b>SUN</b></p></box><box type="content" x="22" y="146" w="52" h="34" vertical-align="center" sizing="fixed"><p font-size="sm" align="center"><b>SUN</b></p></box><box type="content" x="95" y="8" w="260"><h4>A · MORE OZONE</h4></box><box type="content" x="95" y="123" w="260"><h4>B · LESS OZONE</h4></box><shape preset="line" x="100" y="45" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="60" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="75" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="160" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="175" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="190" w="365" h="1" stroke="accent" stroke-width="5"></shape><box type="content" x="470" y="22" w="20" h="58" sizing="fixed" background-color="palette-4" style="border-radius: 10pt;"><p></p></box><box type="content" x="476" y="137" w="8" h="58" sizing="fixed" background-color="palette-5" style="border-radius: 4pt;"><p></p></box><box type="content" x="430" y="4" w="100"><p font-size="sm" align="center"><b>ozone</b></p></box><box type="content" x="430" y="119" w="100"><p font-size="sm" align="center"><b>ozone</b></p></box><box type="content" x="510" y="42" w="210" h="20" sizing="fixed" style="border-bottom: 3pt dashed var(--neutral-border-color);"><p></p></box><box type="content" x="510" y="157" w="210" h="20" sizing="fixed" style="border-bottom: 3pt dashed var(--neutral-border-color);"><p></p></box><box type="content" x="596" y="24" w="44" h="48" vertical-align="center" sizing="fixed"><h3 align="center">?</h3></box><box type="content" x="596" y="139" w="44" h="48" vertical-align="center" sizing="fixed"><h3 align="center">?</h3></box><shape preset="ellipse" x="750" y="18" w="60" h="60" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="750" y="133" w="60" h="60" fill="palette-3" stroke="palette-2" stroke-width="4"></shape></freeform-block></grid-item></grid><notes><p>Do not reveal the answer yet. Ask children to point to Earth A or Earth B, then take two reasons. The same three incoming rays are shown in each lane; only the amount of stratospheric ozone changes.</p></notes></section>
<section image-layout="blank" id="ZJy5ksXqjL"><grid spacing="none"><grid-item id="pg_TTNP0fe" padding-bottom="36pt"><h2>Reveal: what the shield changes</h2><p>Same incoming UV. A different amount continues toward the ground.</p><freeform-block w="840" h="210"><box type="content" w="840" h="95" sizing="fixed" background-color="palette-10" style="border-radius: 18pt;"><p></p></box><box type="content" y="115" w="840" h="95" sizing="fixed" background-color="palette-11" style="border-radius: 18pt;"><p></p></box><box type="content" x="18" y="8" w="300"><h4>A · MORE OZONE → LESS UV</h4></box><box type="content" x="18" y="123" w="300"><h4>B · LESS OZONE → MORE UV</h4></box><shape preset="line" x="100" y="45" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="60" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="75" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="160" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="175" w="365" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="100" y="190" w="365" h="1" stroke="accent" stroke-width="5"></shape><box type="content" x="470" y="22" w="20" h="58" sizing="fixed" background-color="palette-4" style="border-radius: 10pt;"><p></p></box><box type="content" x="476" y="137" w="8" h="58" sizing="fixed" background-color="palette-5" style="border-radius: 4pt;"><p></p></box><box type="content" x="430" y="4" w="100"><p font-size="sm" align="center"><b>ozone</b></p></box><box type="content" x="430" y="119" w="100"><p font-size="sm" align="center"><b>ozone</b></p></box><shape preset="line" x="490" y="60" w="250" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="484" y="160" w="256" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="484" y="175" w="256" h="1" stroke="accent" stroke-width="5"></shape><shape preset="line" x="484" y="190" w="256" h="1" stroke="accent" stroke-width="5"></shape><shape preset="ellipse" x="750" y="18" w="60" h="60" fill="palette-3" stroke="palette-2" stroke-width="4"></shape><shape preset="ellipse" x="750" y="133" w="60" h="60" fill="palette-3" stroke="palette-2" stroke-width="4"></shape></freeform-block><grid spacing="none" vertical-sizing="hug"><grid-item id="9meLSGkCeh" class="claim" background-color="accent" cell-style="subtle" padding="10pt 18pt"><h3 align="center">More ozone means less harmful UV reaches the ground.</h3></grid-item></grid></grid-item></grid><notes><p>Trace the three equal incoming rays in each lane. In the upper lane, two rays stop in the thicker ozone region and one continues. In the lower lane, more rays pass through. Ozone changes the amount; it does not block every ray.</p></notes></section>
<section image-layout="blank" id="CiSwLw5xXT"><grid spacing="none"><grid-item id="QKSU9rzadj" class="evidence"><h2 font-size="38pt">How people thinned the shield</h2><p font-size="18pt">Long-lived human-made chemicals reached the stratosphere and began a repeating chain.</p><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" spacing="small" vertical-sizing="hug" style="--marker-font-size: 18pt; --marker-gap: 0.35em;"><grid-item id="-VmsdV4Trg" colspan="15"><h4 font-size="22pt">They lasted</h4><p font-size="17pt">Cooling chemicals remained in the air for years.</p></grid-item><grid-item id="yUV6P6aiq8" colspan="15"><h4 font-size="22pt">They rose high</h4><p font-size="17pt">They reached the stratosphere, above the weather.</p></grid-item><grid-item id="bTpc9rhHUn" colspan="15"><h4 font-size="22pt">Sunlight split them</h4><p font-size="17pt">Sunlight released atoms that destroy ozone.</p></grid-item><grid-item id="4PwzTG_HFa" colspan="15"><h4 font-size="22pt">Atoms acted again ↻</h4><p font-size="17pt">The same atoms kept destroying ozone.</p></grid-item></grid><grid spacing="small" vertical-sizing="hug"><grid-item id="FcPyjkI6wd" class="plate" background-color="palette-11" cell-style="subtle" padding="10pt 14pt" colspan="27"><h4 font-size="21pt">Result: ozone thinning</h4><p font-size="17pt">Not a neat, visible hole.</p></grid-item><grid-item id="6JblcPJG2p" class="claim plate" background-color="accent" cell-style="subtle" padding="10pt 14pt" colspan="33"><h4 font-size="21pt">Response: Montreal Protocol</h4><p font-size="17pt">Countries agreed to phase out ozone-depleting substances.</p></grid-item></grid><p font-size="14pt" role="caption">Source: <a href="https://ozone.unep.org/treaties/montreal-protocol">UNEP, Montreal Protocol</a></p></grid-item></grid><notes><p>Follow the chain from left to right. The curved arrow reminds students that the released atoms could act repeatedly. Clarify that the “ozone hole” means severe thinning. Then name the Montreal Protocol as the global agreement that phases out ozone-depleting substances.</p></notes></section>
<section image-layout="blank" id="444WXoCmDJ"><grid spacing="none"><grid-item id="R5CJu01YZz" class="evidence"><h2>The comeback has a clock</h2><p>A 2023 assessment projected a return toward 1980 ozone levels on three different regional clocks.</p><labels class="claim"><label variant="solid">If current policies remain</label></labels><grid marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-rule="true" marker-position="above" spacing="medium" vertical-sizing="hug" class="toc"><grid-item id="SnDrD7w59I" class="plate" background-color="palette-8" cell-style="subtle" padding="16pt 18pt" colspan="20"><h3>Around 2040</h3><p>Global ozone</p></grid-item><grid-item id="Jt5KUYfZng" class="plate" background-color="palette-10" cell-style="subtle" padding="16pt 18pt" colspan="20"><h3>Around 2045</h3><p>Arctic ozone</p></grid-item><grid-item id="8y9Vz2G0mE" class="plate" background-color="palette-11" cell-style="subtle" padding="16pt 18pt" colspan="20"><h3>Around 2066</h3><p>Antarctic ozone</p></grid-item></grid><p role="caption">Conditional projections, not guaranteed dates. Source: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP, 2023 assessment</a></p></grid-item></grid><notes><p>Read the dates from left to right. Emphasize that these are projections, not promises: they depend on countries keeping current policies. Different regions recover on different clocks, and Antarctic ozone takes longest.</p></notes></section>
<section image-layout="blank" id="EVvoyabDxl"><grid spacing="none"><grid-item id="ZdAuouvyCf" class="evidence" padding="24pt 48pt 24pt"><h2 font-size="36pt">Different actions do different jobs</h2><labels class="claim"><label variant="solid">Point each action to its real job</label></labels><p role="eyebrow">THREE JOBS</p><grid marker="icon" marker-size="small" marker-position="inline" spacing="medium" vertical-sizing="hug"><grid-item id="wir1JJCuiu" class="plate" background-color="palette-10" cell-style="subtle" padding="10pt 12pt" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/lUDa8b1HZo9XxTJF6jlt.svg?stroke=45" source="image.pictographic.icon" alt="cooling equipment service shield"></icon></grid-item-label><h4 font-size="20pt">Ozone recovery</h4></grid-item><grid-item id="1hHegDPRR9" class="plate" background-color="palette-9" cell-style="subtle" padding="10pt 12pt" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/8EUwl7YByZ2vqg6ULzJB.svg?stroke=45" source="image.pictographic.icon" alt="sun shade umbrella protection"></icon></grid-item-label><h4 font-size="20pt">Sun safety</h4></grid-item><grid-item id="KCJBCIHY54" class="plate" background-color="palette-11" cell-style="subtle" padding="10pt 12pt" colspan="20"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/4lBQZ6ews6XH2R6Ov5BV.svg?stroke=45" source="image.pictographic.icon" alt="earth thermometer climate"></icon></grid-item-label><h4 font-size="20pt">Climate</h4></grid-item></grid><p role="eyebrow">ACTION BANK</p><table col-widths="[7,93]" borders="none" striped="false" style="--table-cell-padding: 8pt 12pt; --table-gap-y: 8pt; --table-gap-x: 0pt;"><tbody><tr><td background-color="accent" valign="middle"><p font-size="18pt"><b>A</b></p></td><td background-color="surface" valign="middle"><p font-size="18pt">Wear a hat, use shade and apply sunscreen.</p></td></tr><tr><td background-color="accent" valign="middle"><p font-size="18pt"><b>B</b></p></td><td background-color="surface" valign="middle"><p font-size="18pt">A trained adult safely recovers old refrigerant during service.</p></td></tr><tr><td background-color="accent" valign="middle"><p font-size="18pt"><b>C</b></p></td><td background-color="surface" valign="middle"><p font-size="18pt">Choose a lower-warming refrigerant. HFCs do not deplete ozone but can warm climate.</p></td></tr></tbody></table><p role="caption">Source: <a href="https://www.unep.org/news-and-stories/press-release/ozone-layer-recovery-track-helping-avoid-global-warming-05degc">UNEP</a></p></grid-item></grid><notes><p>Answers: A is sun safety, B is ozone recovery, and C is climate. Keep the jobs separate: skin protection works now; qualified servicing helps prevent harmful releases; and many HFCs warm climate even though they do not deplete ozone. Children should not handle refrigerants.</p></notes></section>
<section image-layout="blank" id="QqAA8Vl64w"><grid spacing="none"><grid-item id="RdQkCZJSxh" padding-bottom="35pt"><h2>Your 20-second shield story</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="tdpUTGYM0W" colspan="38"><grid divider="2pt palette-7" marker="number" marker-size="large" marker-style="solid" marker-shape="circle" marker-position="inline" direction="vertical" vertical-sizing="fill" class="toc ledger" style="--marker-inline-size: 42pt; --marker-gap: 16pt;"><grid-item id="CCpIXyvWwZ" vertical-align="center" padding-bottom="12pt"><p>Where is protective ozone?</p></grid-item><grid-item id="OZ7S9mVn2J" vertical-align="center" padding-top="12pt" padding-bottom="12pt"><p>What does it do to harmful UV?</p></grid-item><grid-item id="eaqXcuh9Id" vertical-align="center" padding-top="12pt" padding-bottom="12pt"><p>What thinned it?</p></grid-item><grid-item id="m-BPuYxccQ" vertical-align="center" padding-top="12pt"><p>How is the Montreal Protocol helping?</p></grid-item></grid></grid-item><grid-item id="zSdTkodo4v" class="claim plate sticker" background-color="accent" align="center" vertical-align="center" cell-style="subtle" padding="18pt 18pt" colspan="22"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/Zmnn9E6rXz8kehKCOeM0P.png" saved-media-id="somjyr13gwzm435" source="image.ai-generated" height="82pt" image-style="weather-sticker" alt="Flat vector sticker illustration of one round stopwatch beside a small curved protective shield, thick uniform deep-navy outline with rounded joins, solid flat fills in sunshine yellow, sky blue and wind teal, no gradients, no shading, no texture, no faces or eyes, no text, isolated on a fully transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><h3 align="center">Teach it back</h3><p align="center">End with one accurate action.</p><p font-size="sm" align="center"><b>Do not mix up the jobs:</b><br>the protocol helps ozone recover; sun safety protects skin today.</p></grid-item></grid></grid-item></grid><notes><p>Give pairs twenty seconds each. Listen for four ideas: protective ozone is in the stratosphere, it absorbs much harmful UV, long-lived ozone-depleting substances thinned it, and the Montreal Protocol phases those substances out. Invite one final correction of a common mix-up.</p></notes></section>