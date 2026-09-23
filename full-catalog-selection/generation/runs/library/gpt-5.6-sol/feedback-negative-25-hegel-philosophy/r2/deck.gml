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
<section image-layout="blank" id="-vT3bxxVsA"><grid spacing="none" padding="48pt 84pt 32pt"><grid-item id="5OYx6Bnmp2"><h2>A larger system; one lesson path</h2><p>Hegel (1770–1831) connects thought, nature, and minded life within one developing system.</p><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="YbngU-GNUA" colspan="20"><p role="eyebrow">Logic</p><h3>Categories of thought</h3><p font-size="sm">How concepts make experience intelligible.</p></grid-item><grid-item id="qPb-uURkDY" colspan="20"><p role="eyebrow">Nature</p><h3>The idea made external</h3><p font-size="sm">How the system interprets the natural world.</p></grid-item><grid-item id="N1ocP8BbvS" colspan="20"><p role="eyebrow">Spirit</p><h3>Mind and social life</h3><p font-size="sm">How selfhood, institutions, and freedom develop.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="aFxOoyxPzC" background-color="surface" padding="10pt 14pt"><p><b>Lesson path:</b> dialectic → recognition → social freedom.</p></grid-item></grid><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel/">Stanford Encyclopedia of Philosophy · “Hegel”</a></p></grid-item></grid><notes><p>Present this as a map, not a complete summary. Hegel’s system includes logic, nature, and spirit. This lesson deliberately follows a narrower path through dialectic, recognition, and the social forms of freedom.</p></notes></section>
<section image-layout="blank" id="Wquy7toyCl"><grid spacing="none" padding="48pt 84pt 32pt"><grid-item id="Af7HcXRxu5"><h2>Dialectic tests a position from within</h2><p>It is not Hegel’s mechanical <b>thesis–antithesis–synthesis</b> formula.</p><grid marker="symbol" marker-label="?" marker-style="outline" marker-shape="circle" marker-position="above" marker-align="start" spacing="medium" vertical-sizing="hug"><grid-item id="y2uTWifGbF" colspan="20"><h3>What is claimed?</h3><p font-size="sm">Specify the position fairly and identify what it promises.</p></grid-item><grid-item id="4vM8XwyaKo" colspan="20"><h3>Where is the pressure?</h3><p font-size="sm">Work through its commitments, exclusions, and limits.</p></grid-item><grid-item id="ivX_Ak2Vaw" colspan="20"><h3>What changes?</h3><p font-size="sm">Seek a richer account that incorporates the lesson of the limit.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="7WzH4VP7lR" background-color="surface" padding="10pt 14pt"><p><b>A reading heuristic, not a fixed script:</b> the questions can recur as a position is worked through.</p></grid-item></grid><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel-dialectics/">Stanford Encyclopedia of Philosophy · “Hegel’s Dialectics”</a></p></grid-item></grid><notes><p>Stress that these are questions for following an argument, not three mandatory Hegelian stages. The pressure is internal: a position reveals its limitations when its own commitments are pursued.</p></notes></section>
<section image-layout="blank" id="wmVyk6aOpE"><grid spacing="none" padding="44pt 84pt 32pt"><grid-item id="jI-47dYSyQ"><h2>Teaching analogy: freedom in a seminar</h2><p role="eyebrow">Teaching analogy · not a quotation or proof</p><grid marker="number" marker-rule="true" marker-position="above" marker-numbering-format="decimal-leading-zero" spacing="medium" vertical-sizing="hug"><grid-item id="pU6d1yXqZN" cell-style="outline" colspan="20"><h3>Equal permission</h3><p font-size="sm">“Anyone may speak at any time.” The promise is that every voice is free.</p><labels><label variant="outline">Each may speak</label></labels></grid-item><grid-item id="eCcp0XhUpw" background-color="surface" cell-style="outline" colspan="20"><p role="eyebrow" class="work-b"><span text-color="palette-2">Tension in practice</span></p><h3>One voice fills the room</h3><grid direction="vertical" spacing="none" vertical-sizing="hug"><grid-item id="zZQ77Oo1-P" background-color="palette-2" padding="7pt 10pt"><p role="caption">ONE VOICE · REPEATEDLY ENTERS</p></grid-item><grid-item id="Wq8uiXeKuB" background-color="surface" padding="7pt 10pt"><p role="caption">OTHER VOICES · WAIT OR WITHDRAW</p></grid-item></grid><p role="caption">Schematic pattern—not measured data.</p></grid-item><grid-item id="AAjt_jyBuO" cell-style="outline" colspan="20"><h3>Reciprocal rule</h3><p font-size="sm">Turns limit interruption while keeping reply and challenge open.</p><labels><label variant="solid">Each voice can enter</label></labels></grid-item></grid><p><b>The tension lies in the practice’s own promise:</b> equal permission need not produce equal participation.</p></grid-item></grid><notes><p>Walk from the promise to the tension and then to the revision. Treat the participation pattern as a schematic teaching example, not empirical proof of Hegel’s system. The original aim—that each person may speak—survives in the revised practice.</p></notes></section>
<section image-layout="blank" id="kDjJKEKPnE"><grid spacing="none" padding="44pt 84pt 32pt"><grid-item id="iSEkwYg2X0"><h2>Aufhebung: cancel, preserve, transform</h2><p><b>Aufhebung</b>, often translated as “sublation,” combines negation with preservation in a changed whole.</p><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="hIdP0pbM-X" colspan="20"><p role="eyebrow">Canceled</p><h3><s>Interrupt at will</s></h3><p><mark highlight-color="palette-3">Each may speak</mark></p><p font-size="sm">Domination through unrestricted interruption no longer sets the terms.</p></grid-item><grid-item id="PKKqgPr6HC" colspan="20"><p role="eyebrow">Preserved</p><h3>The valid aim</h3><p><mark highlight-color="palette-3">Each may speak</mark></p><p font-size="sm">The earlier claim to a voice is retained rather than erased.</p></grid-item><grid-item id="mo2xx0LhGY" colspan="20"><p role="eyebrow"><span text-color="accent">Transformed</span></p><h3>A protected turn</h3><p><mark highlight-color="palette-3">Each may speak</mark></p><p font-size="sm">A right to speak is joined to listening, reply, and reciprocity.</p></grid-item></grid><p><b>The highlighted aim is carried through;</b> the social form around it changes.</p><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel-dialectics/">Stanford Encyclopedia of Philosophy · “Hegel’s Dialectics”</a></p></grid-item></grid><notes><p>Follow the repeated highlighted phrase across the slide. What is canceled is not the right to speak but the form in which interruption governs the room. The valid aim survives inside a more reciprocal practice.</p></notes></section>
<section image-layout="blank" id="t5QNbTS0qi"><grid spacing="none" padding="44pt 84pt 30pt"><grid-item id="lHel6XAo0J"><h2>Recognition requires an independent answer</h2><p>Self-conscious freedom is social: another person must be able to acknowledge, contest, or revise my claim.</p><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="gc6hhem3En" colspan="14"><p role="eyebrow" class="work-b"><span text-color="palette-2">Not enough</span></p></grid-item><grid-item id="yqPDMmTW_a" colspan="46"><p font-size="sm"><b>Passive approval:</b> A speaks, but B cannot answer independently. The acknowledgment loses the value recognition requires.</p></grid-item></grid><grid spacing="medium" vertical-sizing="hug"><grid-item id="G612nmd0gU" cell-style="outline" colspan="22"><p role="eyebrow">Speaker A</p><h3>I claim a voice</h3><p font-size="sm">I present myself as free and answerable.</p></grid-item><grid-item id="dXMZI0_Qqc" align="center" vertical-align="center" colspan="16"><p role="eyebrow" align="center">CLAIM</p><p font-size="30pt" align="center">→</p><p role="eyebrow" align="center">ANSWER · CHALLENGE</p><p font-size="30pt" align="center">←</p></grid-item><grid-item id="5XbmgE1Aa4" cell-style="outline" colspan="22"><p role="eyebrow">Speaker B</p><h3>I answer as another self</h3><p font-size="sm">I can acknowledge, disagree, and make a claim in return.</p></grid-item></grid><p><b>Reciprocity does not mean agreement.</b> It means that both participants count as independent sources of claims and responses.</p><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel/">Stanford Encyclopedia of Philosophy · “Hegel”</a></p></grid-item></grid><notes><p>Contrast passive approval with an answer from another independent person. Recognition matters because the other can respond, disagree, and make claims in return. Reciprocity is a structure of mutual standing, not compulsory agreement.</p></notes></section>
<section image-layout="blank" id="OMfoCMmDXU"><grid spacing="none" padding="40pt 84pt 28pt"><grid-item id="CuckyMbfPZ"><h2>Freedom takes institutional form</h2><p>For Hegel, freedom is more than unblocked choice; social practices help make agency effective.</p><grid divider="sm palette-8" vertical-sizing="hug"><grid-item id="eVFuunKYf6" colspan="20"><p role="eyebrow">Individual agency</p><h3>Act and answer</h3><p font-size="sm">People form purposes and take responsibility for what they do.</p></grid-item><grid-item id="bhkMIrstDY" colspan="20"><p role="eyebrow">Shared norms</p><h3>Make claims intelligible</h3><p font-size="sm">Public rules coordinate conduct and enable reciprocal expectations.</p></grid-item><grid-item id="MbFKdkzNSA" colspan="20"><p role="eyebrow">Institutions</p><h3>Stabilize the practice</h3><p font-size="sm">Durable arrangements organize and protect forms of social freedom.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="3pAWWPdDKW" background-color="surface" padding="10pt 14pt"><p><b>Enabled agency:</b> people act through social forms they can understand, inhabit, and contest.</p></grid-item></grid><p font-size="sm"><b>Caveat:</b> history is not smooth or automatic progress. Institutions can embody freedom inadequately and remain open to criticism and change.</p><p role="caption" class="source">Source: <a href="https://plato.stanford.edu/entries/hegel/">Stanford Encyclopedia of Philosophy · “Hegel”</a></p></grid-item></grid><notes><p>Connect the seminar rule to larger social life. Individual agency, shared norms, and institutions are not independent ingredients; each helps make the others effective. Emphasize that Hegel’s view does not make every existing institution rational or beyond criticism.</p></notes></section>
<section image-layout="blank" id="JZGU0AcQsz"><grid spacing="none" padding="46pt 84pt 36pt"><grid-item id="Km7tq-SnRA"><h2>Can you reconstruct the movement?</h2><p>Use the seminar analogy. Do not begin with a memorized formula.</p><grid spacing="large" vertical-sizing="hug"><grid-item id="2_ZqqgJqsi" colspan="36"><grid divider="sm palette-8" marker="number" marker-position="inline" marker-numbering-format="decimal-leading-zero" direction="vertical" vertical-sizing="hug" style="--marker-inline-size: 33pt; --marker-gap: 15pt;"><grid-item id="sRZ4O2Jya-"><h4>Original claim</h4><p font-size="sm">No speaking rules means maximal freedom. Where does the promise fail in practice?</p></grid-item><grid-item id="sgAIbjJLX_"><h4>Sublation</h4><p font-size="sm">What does turn-taking cancel, preserve, and transform?</p></grid-item><grid-item id="xAxL1q53bl"><h4>Recognition</h4><p font-size="sm">Why must the other person be able to answer independently?</p></grid-item></grid></grid-item><grid-item id="4l_xZtJjbF" background-color="surface" vertical-align="center" padding="22pt" colspan="24"><p role="eyebrow">The reusable lens</p><display size="md">What fails?<br>What survives?<br>What becomes possible?</display><p font-size="sm">In the seminar analogy, a limit can support freedom when it enables reciprocal participation and remains open to challenge.</p></grid-item></grid></grid-item></grid><notes><p>Invite the audience to answer the three prompts aloud. Close with the reusable lens: identify the failure, the element worth preserving, and the new possibility. Return to the opening question without claiming that every limit enables freedom.</p></notes></section>