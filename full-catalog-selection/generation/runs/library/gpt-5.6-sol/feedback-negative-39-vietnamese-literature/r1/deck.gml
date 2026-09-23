<HEAD><style>/* Marginalia — page treatment sheet.
   The annotated reading copy: cream paper, warm ink, a calligraphic serif for quotations
   and a humanist sans for the reader's notes, hairline rules, two inks that each mean one
   work, one highlighter. Palette-var only — the dark swap skin flips every value through
   the theme and this sheet follows. */

.gml-card {
  --work-a: var(--palette-1);
  --work-b: var(--palette-2);
  --hairline: var(--palette-8);
  --line: 1pt;
  /* Move 8 — hairline ledger: every seam, rule, table line and cell edge is one warm hairline. */
  --grid-divider-color: var(--hairline);
  --grid-divider-width: var(--line);
  --divider-color: var(--hairline);
  --divider-thickness: var(--line);
  --cell-radius: 0;
  --cell-border-color: var(--hairline);
  --table-border-color: var(--hairline);
  --table-border-width: var(--line);
  --table-radius: 0;
  --figure-radius: 0;
  /* Numbered markers count in graphite: the two work inks never number anything. */
  --marker-color: var(--palette-7);
  /* A caption hugging a drawing keeps a line of air from its crop. */
  --caption-hug-gap: 16pt;
}

/* ─── Move 1 — quotation ────────────────────────────────────────────────────────────────── */
/* A real <blockquote> whose accent bar is retired: the serif italic IS the signal. The inner
   <p> carries the size as an attr (hero 33–36pt, paired 30pt, epigraph 30pt; never below 27pt —
   the deck is sized for projection in a classroom). */
.quote.gml-blockquote {
  padding-inline-start: 0;
  margin-inline-start: 0;
  font-style: italic;
}
.quote.gml-blockquote > .gml-blockquote__bar {
  display: none;
}
.quote.gml-blockquote p.gml-paragraph {
  font-family: var(--display-font);
  font-style: italic;
  font-weight: 400;
  line-height: 1.1;
  letter-spacing: -0.005em;
}

/* ─── Move 2 — gloss ────────────────────────────────────────────────────────────────────── */
/* The translated line in the serif roman, set tight under its quotation so quote + gloss read
   as one object. Author it as <p class="gloss" font-size="lg">. */
.gloss.gml-paragraph {
  font-family: var(--display-font);
  font-style: normal;
  line-height: 1.22;
  margin-block-start: 4pt;
}

/* ─── Move 3 — source line ──────────────────────────────────────────────────────────────── */
/* One quiet micro line under every quotation — author · work · translator · edition · page —
   separated by middle dots. Author it as <p role="caption" class="source">. */
.source.gml-paragraph {
  text-transform: uppercase;
  letter-spacing: 0.06em;
  font-weight: 500;
}

/* ─── Move 4 — work ink tags ────────────────────────────────────────────────────────────── */
/* The only chromatic ink on the deck besides the highlighter. A 15pt uppercase eyebrow with a
   2pt rule down its leading edge: <p role="eyebrow" class="work-a"><span text-color="accent">…
   and <p role="eyebrow" class="work-b"><span text-color="palette-2">… . */
.work-a.gml-paragraph,
.work-b.gml-paragraph {
  border-inline-start: 2pt solid var(--work-a);
  padding-inline-start: 9pt;
  margin-block-end: 6pt;
}
.work-b.gml-paragraph {
  border-inline-start-color: var(--work-b);
}

/* ─── Move 5 — margin note ──────────────────────────────────────────────────────────────── */
/* The reader's analysis: a narrower sans column beside the quotation, hung from the grid's
   hairline seam, each note led by a bold keyword. Class on the note cell. */
.note.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 10pt;
}

/* ─── Move 7 — line numbers ─────────────────────────────────────────────────────────────── */
/* A borderless two-column table: muted cited line numbers in a narrow gutter, the quotation
   line in the serif italic beside them. Class on the <table>. The number cell carries a <p> at
   the quotation's size with a small span inside, so both columns share one baseline. */
.lineno {
  --table-cell-padding: 2pt 16pt 2pt 0;
  --table-border-width: 0;
}
.lineno .gml-table__cell[data-col='0'] {
  text-align: end;
  font-variant-numeric: tabular-nums;
}
.lineno .gml-table__cell[data-col='1'] p.gml-paragraph {
  font-family: var(--display-font);
  font-style: italic;
  font-weight: 400;
  line-height: 1.2;
  letter-spacing: -0.005em;
}

/* ─── Move 8 — hairline ledger (tables) ────────────────────────────────────────────────── */
/* References, comparison matrices, glossaries: one hairline per seam, a heavier ink rule
   under the head row only, closed by a hairline under the last row. Class on the <table>. */
.ledger {
  --table-cell-padding: 9pt 12pt;
  --table-header-color: var(--heading-color);
}
.ledger .gml-table__row[data-header] .gml-table__cell {
  border-bottom: 1.5pt solid var(--heading-color);
}
.ledger .gml-table__row:last-child .gml-table__cell {
  border-bottom: var(--table-border-width) solid var(--table-border-color);
}

/* ─── claim — the thesis voice ──────────────────────────────────────────────────────────── */
/* A <display> in the serif ROMAN at medium weight: quotations are italic, the student's own
   claim is upright. Class on the <display>. */
.claim.gml-title,
.claim.gml-display {
  font-style: normal;
  font-weight: 500;
  letter-spacing: -0.01em;
}

/* ─── prose — a measured reading column ───────────────────────────────────────────────── */
/* Running analysis paragraphs get a slightly wider beat than the note rail. */
.prose.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 14pt;
}

/* ─── spot — the drawing's cell ───────────────────────────────────────────────────────── */
/* The cell that holds a transparent spot drawing beside type (margin spot, foot plate, act-break
   plane). It is a slot: the theme figure radius is already 0 so the cutout sits straight on the
   paper; the class marks the role so a fill writer keeps the drawing in its own cell. */
.spot.gml-grid-cell .gml-figure__img {
  border-radius: 0;
}

/* ─── voice — a tagged name cell ──────────────────────────────────────────────────────── */
/* Work tag, name and one clause hug as a single entry inside a hairline quadrant, so four
   voices fit the frame at reading size. Class on the cell. */
.voice.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 6pt;
}</style></HEAD>
<section image-layout="blank" id="WiglEr34-7"><grid spacing="none"><grid-item id="EdUzh2bsyO" colspan="40"><p role="eyebrow">Nguyễn Du · <i>Truyện Kiều</i></p><display size="lg">A poem carried by its rhythm</display><spacer mode="fill"></spacer><p font-size="lg"><b><i>Truyện Kiều</i> turns a life under pressure into a test of how we judge choice.</b></p><p>Its alternating six- and eight-syllable lines move forward with Thúy Kiều—from vow to sacrifice, exploitation, resistance, and return. Narrative, ethics, and poetic form operate here as one achievement.</p></grid-item><grid-item id="XsPQWpWmda" class="spot" align="right" vertical-align="end" padding="0" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/xcLfCK1qr1dpWzhb8lI02.png" saved-media-id="qfiigmpbb8p5vzb" source="image.ai-generated" fill="contain" image-style="spot-line" alt="Fine pen-and-ink book engraving of a traditional Vietnamese moon lute drawn whole, its long neck and round wooden body rendered with delicate cross-hatching, one muted teal silk tassel tied near the tuning pegs, clear paper around it, no person, no text, transparent background" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"></grid-item></grid><notes><p>Introduce the poem through its movement. The argument of the deck is that Kiều’s pressured choices and the forward pull of lục bát should be read together.</p></notes></section>
<section image-layout="blank" id="C1MKquXKKO"><grid spacing="none"><grid-item id="UtlNnFOUtG"><h2>Nguyễn Du and the work</h2><p>Nguyễn Du created a defining work of Vietnamese literature: <i>Truyện Kiều</i>, or <i>The Tale of Kiều</i>. Its long narrative is sustained through voice, rhyme, cadence, and ethical tension.</p><spacer mode="fill"></spacer><grid spacing="medium" vertical-sizing="hug" padding-top="16pt"><grid-item id="9FE4Az00fj" border="sm solid palette-8" border-sides="top" colspan="20"><p role="eyebrow">Author</p><display size="md">1765–1820</display><p>Nguyễn Du’s lifetime</p></grid-item><grid-item id="jGdNv11rrt" border="sm solid palette-8" border-sides="top" colspan="20"><p role="eyebrow">Scale</p><display size="lg">3,254</display><p>lines written in chữ Nôm</p></grid-item><grid-item id="Pb5rRdhvSr" border="sm solid palette-8" border-sides="top" colspan="20"><p role="eyebrow">Form</p><display size="md">6 / 8</display><p>the lục bát alternation</p></grid-item></grid><spacer mode="fill"></spacer><p role="caption" class="source">Sources: <a href="https://baotangvanhoc.vn/hien-vat-hinh-anh/hien-vat-len-tieng/truyen-kieu-mot-kiet-tac-van-hoc/">Vietnamese Literature Museum</a> · <a href="https://www.nomfoundation.org/nom-project/Tale-of-Kieu?uiLang=vn">Vietnamese Nôm Preservation Foundation</a></p></grid-item></grid><notes><p>Use the three figures to establish authorship, scale, script, and form. Emphasize that formal control is central to sustaining the poem’s long ethical narrative.</p></notes></section>
<section image-layout="blank" id="7B1Mc2Mryb"><grid spacing="none"><grid-item id="RqpWBUOhH8"><h2>A life redirected by obligation</h2><p>Kiều’s story advances through choices made under increasing pressure.</p><grid divider="sm palette-8" marker="number" marker-position="inline" marker-numbering-format="decimal-leading-zero" direction="vertical" vertical-sizing="fill" padding="3pt 0" style="--marker-inline-size: 34pt; --marker-gap: 15pt;"><grid-item id="T1BU7s-Oas" vertical-align="center"><p><b>Love</b> — She exchanges vows with Kim Trọng.</p></grid-item><grid-item id="JAtOYw4bB1" vertical-align="center"><p><b>Sacrifice</b> — She sells herself to rescue her family.</p></grid-item><grid-item id="4MA4I6K8ki" vertical-align="center"><p><b>Exploitation</b> — Mã Giám Sinh and Tú Bà traffic her; Thúc Sinh and Hoạn Thư bring unstable refuge and persecution.</p></grid-item><grid-item id="f_ymethYXx" vertical-align="center"><p><b>Reversal</b> — Từ Hải offers power, then falls through Hồ Tôn Hiến’s deception.</p></grid-item><grid-item id="O9ZqLgvgZt" vertical-align="center"><p><b>Return</b> — Giác Duyên rescues Kiều before a transformed reunion.</p></grid-item></grid></grid-item></grid><notes><p>Walk the sequence as a chain of redirected futures. Each stage changes the terms on which the next choice becomes possible; the reunion is therefore a return after transformation, not restoration of the beginning.</p></notes></section>
<section image-layout="blank" id="6FDZ_g81ry"><grid spacing="none"><grid-item id="icNrzrxsZO"><h2>Thúy Kiều: gifted, ethical, constrained</h2><p>Kiều is artistically gifted, emotionally perceptive, and capable of decisive action. Yet every decision is made inside narrowing social and material limits.</p><spacer mode="fill"></spacer><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="rNGMgDvr44" colspan="20"><p role="eyebrow">Love</p><h4>A future she values</h4><p>Her vow with Kim Trọng establishes desire, commitment, and a chosen future.</p></grid-item><grid-item id="KiHkoLrSCE" colspan="20"><p role="eyebrow">Filial duty</p><h4>An unequal exchange</h4><p>She gives up that future to secure her family’s safety.</p></grid-item><grid-item id="a1IMK3X_QW" colspan="20"><p role="eyebrow">Survival</p><h4>Action within limits</h4><p>Compromise, trust, resistance, and flight become necessary choices.</p></grid-item></grid><spacer mode="fill"></spacer><p font-size="lg"><b>Her agency is real</b>—but it is never exercised on equal terms.</p></grid-item></grid><notes><p>Avoid reducing Kiều either to a passive victim or an idealized saint. Her moral intelligence and capacity for action remain visible, while the conditions governing each decision become progressively less equal.</p></notes></section>
<section image-layout="blank" id="NktXW2Xoel"><grid spacing="none"><grid-item id="tP0Kow7GMx"><h2>Realism: a social world closes in</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="DqNu77B_Gt" class="prose" vertical-align="center" colspan="23"><p role="eyebrow">Interpretive claim</p><display size="md" class="claim">The poem exposes a system, not merely a sequence of private misfortunes.</display><p>Repeated reversals make injustice appear structural rather than accidental.</p></grid-item><grid-item id="3kEyGmEbG5" vertical-align="center" colspan="37"><diagram template-key="inputs" align="center" width="470pt" height="310pt" data-meta="{&quot;general&quot;:[{&quot;text&quot;:&quot;<h4>A social system closes in</h4>&quot;}],&quot;step&quot;:[{&quot;text&quot;:&quot;<h4>Commodification of poverty</h4><p>Money turns crisis into market</p>&quot;},{&quot;text&quot;:&quot;<h4>Bureaucratic language</h4><p>Official terms hide coercion</p>&quot;},{&quot;text&quot;:&quot;<h4>Gendered reputation</h4><p>Women judged harsher than men</p>&quot;},{&quot;text&quot;:&quot;<h4>Structural reversals</h4><p>Repeated setbacks reveal injustice</p>&quot;}]}"></diagram></grid-item></grid></grid-item></grid><notes><p>Frame this explicitly as an interpretive claim. The realistic value lies not only in recognizable suffering but in the poem’s repeated exposure of markets, institutions, language, and gendered judgment working together.</p></notes></section>
<section image-layout="blank" id="V9tUyI692a"><grid spacing="none"><grid-item id="c83WLpRkGO"><h2>Humanitarian value: dignity under pressure</h2><grid divider="sm palette-8" vertical-sizing="fill"><grid-item id="2YiynsA0WU" vertical-align="center" colspan="24"><p role="eyebrow">A humanitarian reading</p><display size="md" class="claim">Constrained choice is not the same as moral failure.</display></grid-item><grid-item id="rE1rlzKX5J" colspan="36"><grid divider="sm palette-8" direction="vertical" vertical-sizing="fill"><grid-item id="j2VCHKiW1G" vertical-align="center"><p><b>Attention</b> — The poem sustains Kiều’s intelligence, feeling, talent, and pain.</p></grid-item><grid-item id="Ov_jvyaKgr" vertical-align="center"><p><b>Sacrifice</b> — Compassion does not excuse the conditions that demand it.</p></grid-item><grid-item id="Q9ukQXOXCg" vertical-align="center"><p><b>Talent</b> — Artistic distinction offers no protection from exploitation.</p></grid-item><grid-item id="xFOnR-1rPr" vertical-align="center"><p><b>Aftermath</b> — Survival and reunion do not erase accumulated harm.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>The humanitarian reading begins with judgment: the poem asks readers to see the unequal conditions around a decision before assigning blame. Its compassion preserves Kiều’s complexity rather than making her suffering morally decorative.</p></notes></section>
<section image-layout="blank" id="2Hh4V0ie_9"><grid spacing="none"><grid-item id="0WaY122HYM"><h2>How lục bát moves</h2><p role="eyebrow">Six syllables</p><grid spacing="small" vertical-sizing="hug"><spacer span="3"></spacer><grid-item id="yDMN3wRBQP" background-color="surface" padding="6pt" colspan="9"><p role="caption">1</p><h4>Trăm</h4></grid-item><grid-item id="BJPXUpDPUA" background-color="surface" padding="6pt" colspan="9"><p role="caption">2</p><h4>năm</h4></grid-item><grid-item id="Y50TCWHT6a" background-color="surface" padding="6pt" colspan="9"><p role="caption">3</p><h4>trong</h4></grid-item><grid-item id="EZGZXCNU2U" background-color="surface" padding="6pt" colspan="9"><p role="caption">4</p><h4>cõi</h4></grid-item><grid-item id="vfG1ZwhX-b" background-color="surface" padding="6pt" colspan="9"><p role="caption">5</p><h4>người</h4></grid-item><grid-item id="QXBN2T-UX5" background-color="palette-3" padding="6pt" colspan="9"><p role="caption">6 · rhyme</p><h4>ta</h4></grid-item><spacer span="3"></spacer></grid><p role="eyebrow">Eight syllables</p><grid spacing="small" vertical-sizing="hug"><spacer span="2"></spacer><grid-item id="t9oi6bl23u" background-color="surface" padding="6pt" colspan="7"><p role="caption">1</p><h4>Chữ</h4></grid-item><grid-item id="tgRvkP7cbP" background-color="surface" padding="6pt" colspan="7"><p role="caption">2</p><h4>tài</h4></grid-item><grid-item id="v5g3g7cDoL" background-color="surface" padding="6pt" colspan="7"><p role="caption">3</p><h4>chữ</h4></grid-item><grid-item id="9RKP4lYO-L" background-color="surface" padding="6pt" colspan="7"><p role="caption">4</p><h4>mệnh</h4></grid-item><grid-item id="hVwhZs-cIp" background-color="surface" padding="6pt" colspan="7"><p role="caption">5</p><h4>khéo</h4></grid-item><grid-item id="yr4y5Idbqb" background-color="palette-3" padding="6pt" colspan="7"><p role="caption">6 · rhyme</p><h4>là</h4></grid-item><grid-item id="xzKZM7yuu_" background-color="surface" padding="6pt" colspan="7"><p role="caption">7</p><h4>ghét</h4></grid-item><grid-item id="C-rYuYnIpR" background-color="surface" padding="6pt" colspan="7"><p role="caption">8</p><h4>nhau</h4></grid-item><spacer span="2"></spacer></grid><grid spacing="medium" vertical-sizing="hug" padding-top="12pt"><grid-item id="JUraBCN9hJ" border="sm solid palette-8" border-sides="top" colspan="20"><p font-size="sm"><b>Rhyme bridge</b> — <i>ta</i> at position six rhymes with <i>là</i> at position six.</p></grid-item><grid-item id="8ICs5SXTjX" border="sm solid palette-8" border-sides="top" colspan="20"><p font-size="sm"><b>Forward link</b> — The eight-syllable line’s final rhyme can connect to position six of the next six-syllable line.</p></grid-item><grid-item id="zJgiuWXBr_" border="sm solid palette-8" border-sides="top" colspan="20"><p font-size="sm"><b>Cadence</b> — Vietnamese tone and recurring rhyme shape the movement; English paraphrase cannot prove the original meter.</p></grid-item></grid><p role="caption" class="source">Text source: <a href="https://www.nomfoundation.org/nom-project/Tale-of-Kieu?uiLang=vn">Vietnamese Nôm Preservation Foundation</a></p></grid-item></grid><notes><p>Read both Vietnamese lines aloud if appropriate, counting the syllables visually. The ochre cells show the immediate rhyme bridge. Stress that the diagram analyzes the original Vietnamese, not an English paraphrase.</p></notes></section>
<section image-layout="blank" id="jzAqGOUsK1"><grid spacing="none"><grid-item id="IUgKG-Vr69"><h2>Rhythm becomes an ethical argument</h2><p>Form and meaning cannot be separated. Six/eight alternation repeatedly opens and closes space; rhyme carries one line into the next; Kiều’s choices likewise carry consequences forward.</p><spacer mode="fill"></spacer><display size="lg" class="claim">Dignity survives what justice does not repair.</display><spacer mode="fill"></spacer><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="CFAoL2SHdp" colspan="30"><p role="eyebrow">Form</p><p>Rhythm sustains motion without pretending that movement erases what came before.</p></grid-item><grid-item id="aWqPg4PIcI" colspan="30"><p role="eyebrow">Ethics</p><p>The ending offers survival and reunion—not a simple reset.</p></grid-item></grid></grid-item></grid><notes><p>Close by joining form and ethics. The poem’s linked lines carry sound forward, while Kiều’s history carries consequence forward. Reunion matters, but the distinction between survival and repair is the source of the ending’s humanity.</p></notes></section>