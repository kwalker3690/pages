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
<section image-layout="blank" id="uspOKtOG-h"><grid spacing="none"><grid-item id="LtoDSzcv5I" colspan="40"><p role="eyebrow">Hegel · Ideas in motion</p><display size="md">What if removing every limit makes us less free?</display><spacer mode="fill"></spacer><p>A seminar rule says: <mark highlight-color="palette-3"><b>everyone is free to speak whenever they wish.</b></mark></p><p>Does freedom grow when every limit disappears—or when people create conditions in which each voice can count?</p><p role="caption">Hegel’s wager: follow an idea through its tension, transformation, and return in a richer form.</p></grid-item><grid-item id="5y6QuUIjTd" class="spot" align="right" vertical-align="end" padding="0" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/MhrpiDRnCRMc3IDtYn5I8.png" saved-media-id="8hk2d3qw8tpweag" source="image.ai-generated" fill="contain" image-style="spot-line" alt="Fine pen-and-ink book engraving of a circle of plain wooden seminar chairs, one chair slightly pulled back, viewed from above, the group drawn whole with clear paper around it, one muted teal accent on a single chair, no people, no text" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"></grid-item></grid><notes><p>Begin with the seminar rule as a genuine puzzle. Do not answer it immediately. Ask whether the absence of limits guarantees that every person can actually participate, then introduce Hegel’s method as a way of following that tension.</p></notes></section>
<section image-layout="blank" id="-vT3bxxVsA"><grid spacing="none"><grid-item id="5OYx6Bnmp2"><h2>A philosophy of thought, self, and social life</h2><p>Georg Wilhelm Friedrich Hegel (1770–1831) asks how thought, nature, selfhood, and social life belong to a developing whole.</p><spacer mode="fill"></spacer><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="gmEwYSnVFy" colspan="20"><p role="eyebrow">Logic</p><h3>How thought becomes intelligible</h3><p>Categories shape what we can understand and say.</p></grid-item><grid-item id="SrktPXS_kj" colspan="20"><p role="eyebrow">Spirit</p><h3>How minded life develops</h3><p>Selfhood is both individual and shared.</p></grid-item><grid-item id="TBAxwoWfNJ" colspan="20"><p role="eyebrow">History</p><h3>How freedom takes form</h3><p>Social arrangements change how freedom is understood and organized.</p></grid-item></grid><spacer mode="fill"></spacer><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel/">Stanford Encyclopedia of Philosophy · “Hegel”</a></p></grid-item></grid><notes><p>Give the audience a map rather than a complete system. Logic concerns the categories of thought; Spirit concerns minded life; history concerns changing social forms. The seminar example will let us move through all three without pretending to summarize every part of Hegel.</p></notes></section>
<section image-layout="blank" id="Wquy7toyCl"><grid spacing="none"><grid-item id="Af7HcXRxu5"><h2>Dialectic tests a position from within</h2><p>Hegelian dialectic is not a mechanical <b>thesis–antithesis–synthesis</b> formula.</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" vertical-sizing="hug" style="--marker-gap: 0.6em;"><grid-item id="oy6wlz4eOn" colspan="20"><h3>Specify</h3><p>State what the position actually claims.</p></grid-item><grid-item id="20F2DEmdBc" colspan="20"><h3>Press</h3><p>Work it through. What must it exclude, assume, or fail to contain?</p></grid-item><grid-item id="LbWEDYF1AX" colspan="20"><h3>Revise</h3><p>Build a richer account that incorporates the lesson of the limit.</p></grid-item></grid><spacer mode="fill"></spacer><p><b>The pressure is internal:</b> the position encounters its limits as it is worked through.</p><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel-dialectics/">Stanford Encyclopedia of Philosophy · “Hegel’s Dialectics”</a></p></grid-item></grid><notes><p>Stress that dialectic is not a recipe imposed from outside. We first state a position fairly, then ask what happens when its own commitments are pursued. The revision should preserve what the earlier position taught us rather than merely reverse it.</p></notes></section>
<section image-layout="blank" id="wmVyk6aOpE"><grid spacing="none"><grid-item id="jI-47dYSyQ"><h2>Teaching analogy: freedom in a seminar</h2><p role="eyebrow">Teaching analogy · not a quotation or proof</p><spacer mode="fill"></spacer><smart-layout variant="stepsWithArrow" cell-size="15"><smart-layout-item><h4>Claim</h4><p>No speaking rules means maximal freedom.</p></smart-layout-item><smart-layout-item><h4>Result</h4><p>Confident voices monopolize time. Equal permission does not yield equal participation.</p></smart-layout-item><smart-layout-item><h4>Revision</h4><p>Turn-taking limits interruption, so more people can contribute.</p></smart-layout-item></smart-layout><spacer mode="fill"></spacer><p>The first aim—<b>each person may speak</b>—is not discarded. It survives in a changed practice.</p></grid-item></grid><notes><p>Walk through the analogy in order. The first claim has a valid aim: everyone should be able to speak. Its problem appears only in practice, when equal permission produces unequal participation. Turn-taking restricts one action in order to enable the shared aim.</p></notes></section>
<section image-layout="blank" id="kDjJKEKPnE"><grid spacing="none"><grid-item id="iSEkwYg2X0"><h2>Aufhebung: cancel, preserve, transform</h2><p><b>Aufhebung</b>, often translated as “sublation,” names a double movement: a limited form is negated while something valid within it is preserved in a changed whole.</p><spacer mode="fill"></spacer><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="rJs2a3_LGZ" colspan="20"><p role="eyebrow">Canceled</p><display size="md">The domination</display><p>Unrestricted interruption no longer sets the terms.</p></grid-item><grid-item id="kUKdW2w8WK" colspan="20"><p role="eyebrow">Preserved</p><display size="md">The claim</display><p>Each participant retains a right to speak.</p></grid-item><grid-item id="WDoO7Rs-qX" colspan="20"><p role="eyebrow"><span text-color="accent">Transformed</span></p><display size="md">The freedom</display><p>Participation becomes supported and reciprocal.</p></grid-item></grid><spacer mode="fill"></spacer><p><b>Negation is not simple deletion.</b> The earlier aim returns in a more adequate form.</p></grid-item></grid><notes><p>Introduce the technical term only after the movement is visible. Turn-taking cancels domination, preserves the claim to speak, and transforms freedom into reciprocal participation. This is why sublation cannot be reduced to erasing the first position.</p></notes></section>
<section image-layout="blank" id="t5QNbTS0qi"><grid spacing="none"><grid-item id="lHel6XAo0J"><h2>Recognition makes selfhood social</h2><p>Self-conscious freedom is not achieved in isolation. I need another independent self to acknowledge me—and the relation must become reciprocal.</p><spacer mode="fill"></spacer><smart-layout variant="cycle" cell-size="20"><smart-layout-item><icon class="accessory-image" src="https://iconscdn.pictographic.ai/image/b9cAMkUS6R5F5mSXxYQ9.svg?stroke=45" source="image.pictographic.icon" alt="person speaking as an independent participant"></icon><div><h4>I claim a voice</h4><p>I present myself as free and answerable.</p></div></smart-layout-item><smart-layout-item><icon class="accessory-image" src="https://iconscdn.pictographic.ai/image/9IK58eF6zQyNVHoQzF82.svg?stroke=45" source="image.pictographic.icon" alt="independent listener responding and challenging"></icon><div><h4>Another answers</h4><p>Your response can acknowledge, contest, or revise my claim.</p></div></smart-layout-item></smart-layout><spacer mode="fill"></spacer><p>In the seminar, speaking counts because others listen, answer, and can challenge in return. One-sided recognition is unstable: it denies the independence that gives recognition value.</p><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel/">Stanford Encyclopedia of Philosophy · “Hegel”</a></p></grid-item></grid><notes><p>Recognition is not self-esteem or passive approval. It matters because it comes from another person who is also independent. The seminar makes this visible: a voice becomes socially meaningful through listening, answering, and the possibility of challenge.</p></notes></section>
<section image-layout="blank" id="OMfoCMmDXU"><grid spacing="large"><grid-item id="nE-JVm3czu" class="prose" vertical-align="center" colspan="24"><h2>Freedom takes institutional form</h2><p>Freedom is not simply doing whatever one wants. It becomes real through practices in which individual agency and shared norms support one another.</p><p><b>History is not smooth, automatic progress.</b> Institutions can embody freedom inadequately, expose contradictions, and remain open to criticism and change.</p></grid-item><grid-item id="LutrQhaqeZ" align="center" vertical-align="center" colspan="36"><diagram template-key="inputs" align="center" width="430pt" height="310pt" data-meta="{&quot;general&quot;:[{&quot;text&quot;:&quot;<h4>Freedom as Enabled Agency</h4>&quot;}],&quot;step&quot;:[{&quot;text&quot;:&quot;<h4>Individual agency</h4><p>People act and answer for themselves</p>&quot;},{&quot;text&quot;:&quot;<h4>Shared norms</h4><p>Understandable rules supporting reciprocal freedom</p>&quot;},{&quot;text&quot;:&quot;<h4>Institutions</h4><p>Stable practices coordinating and protecting freedom</p>&quot;}]}"></diagram></grid-item></grid><notes><p>Connect the seminar to larger social life. A speaking rule is a small institution: it coordinates individual agency through a shared norm. Hegel’s broader claim is not that institutions are automatically good, but that freedom needs social forms—and those forms remain criticizable.</p></notes></section>
<section image-layout="blank" id="JZGU0AcQsz"><grid spacing="none"><grid-item id="Km7tq-SnRA"><h2>Can you reconstruct the movement?</h2><p>Use the seminar analogy. Do not begin with a memorized formula.</p><grid divider="sm palette-8" marker="number" marker-position="inline" marker-numbering-format="decimal-leading-zero" direction="vertical" vertical-sizing="fill" style="--marker-inline-size: 33pt; --marker-gap: 15pt;"><grid-item id="BwjSlIj3Be" vertical-align="center"><p><b>State the original claim.</b> No rules means maximal freedom. Where does it fail from within?</p></grid-item><grid-item id="eotHhDZMT5" vertical-align="center"><p><b>Trace the sublation.</b> What does turn-taking cancel, preserve, and transform?</p></grid-item><grid-item id="KenF3TnV7m" vertical-align="center"><p><b>Explain recognition.</b> Why does freedom require another independent person—not passive approval?</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="i5Q39PuXLX" background-color="surface" padding="14pt 18pt"><p><b>Takeaway:</b> Hegel asks not only whether an idea is wrong, but how its own limits disclose a more adequate form. Do not recite a formula; reconstruct the change.</p></grid-item></grid></grid-item></grid><notes><p>Invite the audience to reconstruct the argument aloud. Listen for the internal problem, the three moments of sublation, and the reciprocity of recognition. Close by returning to the opening question: some limits can enable freedom when participants can understand and contest them together.</p></notes></section>