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
<section image-layout="blank" id="WiglEr34-7"><grid spacing="none"><grid-item id="EdUzh2bsyO" colspan="40"><p role="eyebrow">Nguyễn Du · <i>Truyện Kiều</i></p><display size="md">A poem carried by its rhythm</display><p font-size="lg"><b>How should we judge a choice made without equal freedom?</b></p><p>In 3,254 lines of lục bát, Nguyễn Du follows Thúy Kiều from vow through sacrifice, exploitation, resistance, and altered return.</p></grid-item><grid-item id="XsPQWpWmda" class="spot" align="right" vertical-align="center" padding="0" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/xcLfCK1qr1dpWzhb8lI02.png" saved-media-id="qfiigmpbb8p5vzb" source="image.ai-generated" width="260pt" height="260pt" image-style="spot-line" alt="Fine pen-and-ink book engraving of a traditional Vietnamese moon lute drawn whole, with a muted teal tassel and clear paper around it" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"><p role="caption" align="right">Interpretive illustration · the moon lute cues Kiều’s musical artistry.</p></grid-item></grid><notes><p>Open with the question of judgment under unequal conditions. The moon lute refers to Kiều’s artistic talent; it is an interpretive illustration, not a documentary artifact.</p></notes></section>
<section image-layout="blank" id="C1MKquXKKO"><grid spacing="none"><grid-item id="UtlNnFOUtG"><h2>Nguyễn Du and the work</h2><p>Nguyễn Du created a defining work of Vietnamese literature. Its long narrative is sustained through voice, rhyme, cadence, and ethical tension.</p><grid spacing="medium" vertical-sizing="hug" padding-top="12pt"><grid-item id="9FE4Az00fj" border="sm solid palette-8" border-sides="top" colspan="20"><p role="eyebrow">Author</p><display size="md">1765–1820</display><p font-size="sm">Nguyễn Du’s lifetime</p></grid-item><grid-item id="jGdNv11rrt" border="sm solid palette-8" border-sides="top" colspan="20"><p role="eyebrow">Scale</p><display size="md">3,254</display><p font-size="sm">lines written in chữ Nôm</p></grid-item><grid-item id="Pb5rRdhvSr" border="sm solid palette-8" border-sides="top" colspan="20"><p role="eyebrow">Form</p><display size="md">6 / 8</display><p font-size="sm">the lục bát alternation</p></grid-item></grid><spacer mode="fill"></spacer><p role="caption" class="source">Dates and work facts: <a href="https://baotangvanhoc.vn/hien-vat-hinh-anh/hien-vat-len-tieng/truyen-kieu-mot-kiet-tac-van-hoc/">Vietnamese Literature Museum, “Truyện Kiều—một kiệt tác văn học”</a> · Text and form: <a href="https://www.nomfoundation.org/nom-project/Tale-of-Kieu?uiLang=vn">Vietnamese Nôm Preservation Foundation, digital text</a></p></grid-item></grid><notes><p>Establish authorship, scale, script, and form. The linked institutional pages support the visible factual claims; no unsupported edition metadata has been added.</p></notes></section>
<section image-layout="blank" id="7B1Mc2Mryb"><grid spacing="none"><grid-item id="RqpWBUOhH8"><h2>A life redirected by obligation</h2><p>Each stage changes the conditions under which Kiều can choose what comes next.</p><grid marker="number" marker-rule="true" marker-position="above" marker-numbering-format="decimal-leading-zero" spacing="medium" vertical-sizing="hug" style="--marker-gap: 8pt;"><grid-item id="T1BU7s-Oas" colspan="12"><h4>Love</h4><p font-size="18pt">She chooses a future with Kim Trọng.</p></grid-item><grid-item id="JAtOYw4bB1" colspan="12"><h4>Sacrifice</h4><p font-size="18pt">She sells herself to save her family.</p></grid-item><grid-item id="4MA4I6K8ki" colspan="12"><h4>Exploitation</h4><p font-size="18pt">Trafficking turns refuge into persecution.</p></grid-item><grid-item id="f_ymethYXx" colspan="12"><h4>Reversal</h4><p font-size="18pt">Từ Hải brings power, then falls.</p></grid-item><grid-item id="O9ZqLgvgZt" colspan="12"><h4>Return</h4><p font-size="18pt">Rescue leads to an altered reunion.</p></grid-item></grid><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="3qROY4BwQZ" background-color="surface" colspan="18"><p role="eyebrow">Pressure arc</p><h4>Room to choose narrows</h4></grid-item><grid-item id="EJHPn575vw" colspan="42"><p font-size="18pt">Love is chosen; later actions are increasingly shaped by sale, coercion, betrayal, and accumulated consequence.</p></grid-item></grid></grid-item></grid><notes><p>Read the sequence as a changing field of action, not merely a list of events. The return is transformed because the consequences of the intervening stages remain.</p></notes></section>
<section image-layout="blank" id="6FDZ_g81ry"><grid spacing="none"><grid-item id="icNrzrxsZO"><h2>Thúy Kiều: gifted, ethical, constrained</h2><p>Kiều is perceptive and decisive, but every decision occurs inside narrowing social and material limits.</p><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="rNGMgDvr44" colspan="20"><p role="eyebrow">Love</p><h4>A future she values</h4><p font-size="sm">Her vow with Kim Trọng establishes desire, commitment, and a chosen future.</p></grid-item><grid-item id="KiHkoLrSCE" colspan="20"><p role="eyebrow">Filial duty</p><h4>An unequal exchange</h4><p font-size="sm">She gives up that future to secure her family’s safety.</p></grid-item><grid-item id="a1IMK3X_QW" colspan="20"><p role="eyebrow">Survival</p><h4>Action within limits</h4><p font-size="sm">Compromise, resistance, trust, and flight become necessary choices.</p></grid-item></grid><p font-size="lg"><b>Her agency is real</b>—but it is never exercised on equal terms.</p></grid-item></grid><notes><p>Avoid reducing Kiều either to a passive victim or an idealized saint. Her moral intelligence remains visible while the terms governing action become progressively less equal.</p></notes></section>
<section image-layout="blank" id="NktXW2Xoel"><grid spacing="none"><grid-item id="tP0Kow7GMx"><h2>Realism: a social world closes in</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="DqNu77B_Gt" class="prose" vertical-align="center" colspan="23"><p role="eyebrow">Interpretive claim</p><display size="md" class="claim">The poem exposes a system—not a run of private misfortunes.</display><p font-size="18pt">Repeated reversals make injustice structural rather than accidental.</p></grid-item><grid-item id="3kEyGmEbG5" colspan="37"><grid divider="sm palette-8"><grid-item id="CqInTHKHt_" colspan="39"><grid divider="sm palette-8" marker="symbol" marker-label="→" marker-position="inline" direction="vertical" vertical-sizing="fill" padding="7pt 0" style="--marker-inline-size: 22pt; --marker-gap: 8pt;"><grid-item id="MSCl4aw6SR"><p font-size="18pt"><b>Commodified poverty</b> — crisis becomes a market.</p></grid-item><grid-item id="4TRfXW-H_g"><p font-size="18pt"><b>Official language</b> — coercion is made to sound lawful.</p></grid-item><grid-item id="UAHwqAa20c"><p font-size="18pt"><b>Gendered judgment</b> — women bear harsher reputational costs.</p></grid-item><grid-item id="I-cFMJMOln"><p font-size="18pt"><b>Repeated reversal</b> — setbacks reveal a pattern, not bad luck.</p></grid-item></grid></grid-item><grid-item id="3XjVD0FD17" background-color="surface" vertical-align="center" colspan="21"><p role="eyebrow">System effect</p><h4>Kiều’s field of action narrows</h4><p font-size="18pt">Agency remains; equal terms do not.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>This is an interpretive systems map. Markets, official language, gendered judgment, and repeated reversals work together to make the poem’s realism social rather than merely circumstantial.</p></notes></section>
<section image-layout="blank" id="V9tUyI692a"><grid spacing="none"><grid-item id="c83WLpRkGO"><h2>Humanitarian value: dignity under pressure</h2><grid divider="sm palette-8" vertical-sizing="fill"><grid-item id="2YiynsA0WU" vertical-align="center" colspan="23"><p role="eyebrow">A humanitarian reading</p><display size="md" class="claim">Constrained choice is not the same as moral failure.</display></grid-item><grid-item id="rE1rlzKX5J" colspan="37"><grid divider="sm palette-8" vertical-sizing="fill" padding="10pt 12pt"><grid-item id="j2VCHKiW1G" colspan="30"><h4>Attention</h4><p font-size="18pt">The poem sustains Kiều’s intelligence, feeling, talent, and pain.</p></grid-item><grid-item id="Ov_jvyaKgr" colspan="30"><h4>Sacrifice</h4><p font-size="18pt">Compassion does not excuse the conditions that demand it.</p></grid-item><grid-item id="Q9ukQXOXCg" colspan="30"><h4>Talent</h4><p font-size="18pt">Artistic distinction offers no protection from exploitation.</p></grid-item><grid-item id="xFOnR-1rPr" colspan="30"><h4>Aftermath</h4><p font-size="18pt">Survival and reunion do not erase accumulated harm.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>The humanitarian reading begins with judgment: readers are asked to see unequal conditions before assigning blame. Compassion preserves Kiều’s complexity rather than making suffering decorative.</p></notes></section>
<section image-layout="blank" id="2Hh4V0ie_9"><grid spacing="none"><grid-item id="0WaY122HYM"><h2>How lục bát moves</h2><grid spacing="medium" vertical-sizing="hug"><grid-item id="2XEd5aCvsw" vertical-align="center" colspan="10"><p role="eyebrow">Six syllables</p></grid-item><grid-item id="8jwk_EpiVb" colspan="50"><grid spacing="small" vertical-sizing="hug"><grid-item id="yDMN3wRBQP" background-color="surface" padding="5pt" colspan="10"><p role="caption">1</p><h4>Trăm</h4></grid-item><grid-item id="BJPXUpDPUA" background-color="surface" padding="5pt" colspan="10"><p role="caption">2</p><h4>năm</h4></grid-item><grid-item id="Y50TCWHT6a" background-color="surface" padding="5pt" colspan="10"><p role="caption">3</p><h4>trong</h4></grid-item><grid-item id="EZGZXCNU2U" background-color="surface" padding="5pt" colspan="10"><p role="caption">4</p><h4>cõi</h4></grid-item><grid-item id="vfG1ZwhX-b" background-color="surface" padding="5pt" colspan="10"><p role="caption">5</p><h4>người</h4></grid-item><grid-item id="QXBN2T-UX5" background-color="palette-3" padding="5pt" colspan="10"><p role="caption">6 · rhyme</p><h4>ta</h4></grid-item></grid></grid-item></grid><grid spacing="medium" vertical-sizing="hug"><grid-item id="H3RSD6-K6z" vertical-align="center" colspan="10"><p role="eyebrow">Eight syllables</p></grid-item><grid-item id="VdPg5PfnxM" colspan="50"><grid spacing="small" vertical-sizing="hug"><spacer span="2"></spacer><grid-item id="t9oi6bl23u" background-color="surface" padding="5pt" colspan="7"><p role="caption">1</p><h4>Chữ</h4></grid-item><grid-item id="tgRvkP7cbP" background-color="surface" padding="5pt" colspan="7"><p role="caption">2</p><h4>tài</h4></grid-item><grid-item id="v5g3g7cDoL" background-color="surface" padding="5pt" colspan="7"><p role="caption">3</p><h4>chữ</h4></grid-item><grid-item id="9RKP4lYO-L" background-color="surface" padding="5pt" colspan="7"><p role="caption">4</p><h4>mệnh</h4></grid-item><grid-item id="hVwhZs-cIp" background-color="surface" padding="5pt" colspan="7"><p role="caption">5</p><h4>khéo</h4></grid-item><grid-item id="yr4y5Idbqb" background-color="palette-3" padding="5pt" colspan="7"><p role="caption">6 · rhyme</p><h4>là</h4></grid-item><grid-item id="xzKZM7yuu_" background-color="surface" padding="5pt" colspan="7"><p role="caption">7</p><h4>ghét</h4></grid-item><grid-item id="C-rYuYnIpR" background-color="surface" padding="5pt" colspan="7"><p role="caption">8</p><h4>nhau</h4></grid-item><spacer span="2"></spacer></grid></grid-item></grid><grid spacing="medium" vertical-sizing="hug"><grid-item id="JUraBCN9hJ" border="sm solid palette-8" border-sides="top" colspan="20"><p font-size="18pt"><b>Bridge</b> — <i>ta</i> and <i>là</i> rhyme at syllable 6.</p></grid-item><grid-item id="8ICs5SXTjX" border="sm solid palette-8" border-sides="top" colspan="20"><p font-size="18pt"><b>Forward</b> — <i>nhau</i> can link to syllable 6 of the next six-syllable line.</p></grid-item><grid-item id="zJgiuWXBr_" border="sm solid palette-8" border-sides="top" colspan="20"><p font-size="18pt"><b>Cadence</b> — Tone and recurring rhyme drive movement; English cannot prove the meter.</p></grid-item></grid><p role="caption" class="source">Vietnamese text: <a href="https://www.nomfoundation.org/nom-project/Tale-of-Kieu?uiLang=vn">Vietnamese Nôm Preservation Foundation, digital text</a></p></grid-item></grid><notes><p>Count the original Vietnamese syllables without separating diacritics. The ochre cells show the ta–là bridge; the second note explains how the final syllable of the eight-syllable line can continue the rhyme chain.</p></notes></section>
<section image-layout="blank" id="jzAqGOUsK1"><grid spacing="none"><grid-item id="IUgKG-Vr69"><p role="eyebrow">Closing interpretation</p><h2>Rhythm becomes an ethical argument</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="8-28gLiWcx" vertical-align="center" colspan="26"><p role="eyebrow">Opening couplet</p><blockquote class="quote"><p font-size="30pt">Trăm năm trong cõi người <mark highlight-color="palette-3">ta</mark><br>Chữ tài chữ mệnh khéo <mark highlight-color="palette-3">là</mark> ghét nhau</p></blockquote><p role="caption" class="source"><a href="https://www.nomfoundation.org/nom-project/Tale-of-Kieu?uiLang=vn">Vietnamese Nôm Preservation Foundation, digital text</a></p></grid-item><grid-item id="g3QrxZX9E6" vertical-align="center" colspan="34"><display size="md" class="claim">Dignity survives what justice does not repair.</display><grid divider="sm palette-8" direction="vertical" vertical-sizing="hug" padding="8pt 0"><grid-item id="rpVsAvPId1"><p font-size="18pt"><b>Form</b> — Rhyme carries sound from one line into the next.</p></grid-item><grid-item id="G5fxE3Px6V"><p font-size="18pt"><b>Ethics</b> — Survival carries history forward; reunion is not a reset.</p></grid-item></grid></grid-item></grid></grid-item></grid><notes><p>Close by identifying this as an interpretation rather than an uncontested fact. The highlighted rhyme demonstrates formal continuation; the final claim connects that continuation to the poem’s refusal to erase accumulated harm.</p></notes></section>