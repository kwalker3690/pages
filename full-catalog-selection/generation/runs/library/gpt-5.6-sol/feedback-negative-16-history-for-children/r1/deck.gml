<HEAD><style>/* Story Map — page vocabulary. Paint rides native attrs; classes carry shape, rhythm, and the
   two named ornaments (rounded tint panel, think-aloud tail). */
.gml-card {
  --code-character: var(--palette-1);
  --code-setting: var(--palette-2);
  --code-problem: var(--palette-3);
  --code-resolution: var(--palette-4);
}

/* 1 · Story-element code: rounded solid tag + coded panel with a dot tab */
.tag .gml-label[data-variant='solid'] { border-radius: 999pt; --label-pad-inline: 14pt; --label-pad-block: 8pt; }
.coded.gml-grid-cell { position: relative; --cell-radius: 16pt; }
.coded.gml-grid-cell::after {
  content: ""; position: absolute; top: 16pt; right: 16pt; width: 16pt; height: 16pt;
  border-radius: 50%; background: var(--dot, var(--code-character));
}
.code-character { --dot: var(--code-character); }
.code-setting { --dot: var(--code-setting); }
.code-problem { --dot: var(--code-problem); }
.code-resolution { --dot: var(--code-resolution); }

/* 2 · Rounded tint panel (ornament 1) — flat, no outline, no shadow */
.panel.gml-grid-cell { --cell-radius: 16pt; --cell-border-width: 0; --cell-shadow: none; }

/* 3 · Illustration plate: one cutout at real scale inside a tint panel, or a scene clipped to the radius */
.plate.gml-grid-cell { --cell-radius: 16pt; --cell-shadow: none; }
.plate .gml-figure__img { object-fit: contain; }
.plate-scene { --figure-radius: 16pt; }
.plate-scene .gml-figure__img { border-radius: 16pt; }




/* 3d · Clue panel: air between the picture and its caption block */
.clue .gml-figure { margin-block-end: 14pt; }

/* 3c · Character disc: an equal round tint disc behind each cutout in a cast row; name and line hug their disc */
.disc .gml-figure { background: var(--surface-color); border-radius: 50%; padding: 18pt; }
.disc.gml-grid-cell > .gml-grid-cell__content { --heading-gap-above: calc(10 * var(--rhythm-unit, 1pt)); --subheading-gap-below: calc(6 * var(--rhythm-unit, 1pt)); }

/* 3b · Scene copy: the template's tint panel carried onto a full-bleed painting so the type reads on any skin */
.scene-copy.gml-grid-cell { --cell-radius: 16pt; border-radius: 16pt; }

/* 3e · Story-map links: ink arrows between coded cells trace the reading path */
.link.gml-grid-cell { --cell-icon-size: 40pt; color: var(--palette-ink); }

/* 4 · Reading column: storybook measure with paragraph air */
.prose .gml-paragraph { text-wrap: pretty; }

/* 5 · Think-aloud bubble (ornament 2): oat panel with one tail toward the speaker */
.think.gml-grid-cell { position: relative; --cell-radius: 18pt; --cell-shadow: none; }
.think.gml-grid-cell::after {
  content: ""; position: absolute; right: -11pt; top: 56pt; width: 24pt; height: 24pt;
  background: var(--surface-color); transform: rotate(45deg); border-radius: 3pt;
}

/* 6 · Numeral chip: ink circle, white Baloo numeral; empty variant for write-in ordering */
.chip { --marker-bg: var(--palette-ink); --marker-color: var(--card-color); --marker-size: 38pt; --marker-font-size: 23pt; --marker-font-weight: 800; }
.chip-empty { --marker-bg: var(--card-color); --marker-color: transparent; --marker-border-color: var(--palette-ink); --marker-border-width: 3pt; --marker-size: 42pt; }

/* 7 · Coded field divider: the solid field runs to the trim, never a rounded panel */
.field .gml-grid-cell { --cell-radius: 0; border-radius: 0; }

/* 8 · Takeaway beside the plot, with its source line */
.note .gml-paragraph { text-wrap: balance; }
.metric { font-variant-numeric: tabular-nums; }
.tag.gml-label-group { margin-block-end: 18pt; }

/* 9 · Ledger table: compact insets so five projected-size rows fit one card */
.ledger.gml-table { --table-cell-padding: 7pt 18pt; }</style></HEAD>
<section image-layout="blank" id="VoCMM2VWqd"><grid spacing="none"><grid-item id="E2-SodvpRJ" padding="68pt 24pt 68pt 68pt" colspan="38"><display size="md">What can three<br>objects tell us?</display><p><b>A tax paper. A folded map. A letter from home.</b></p><p>Each holds a clue about the Ragamuffin War, known in Portuguese as the <i>Revolução Farroupilha</i>.</p><spacer mode="fill"></spacer><labels class="tag"><label variant="solid" color="var(--palette-1)">Our mystery</label></labels><p>Why did it last from 1835 to 1845—and how did it affect different lives?</p></grid-item><grid-item id="TQZ_rGRU4m" padding="68pt 68pt 68pt 0" colspan="22"><grid spacing="none"><grid-item id="JRi1e6_5he" class="plate" background-color="surface" cell-style="solid" padding="22pt"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/hkv_g69GBT9-ngcZ4_UIn.png" saved-media-id="o2cbws5d6ppwgvi" source="image.ai-generated" fill="contain" image-style="none" alt="Matte gouache cutout still life of three separate historical paper clues: a blank tax paper with a simple wax seal, an unlabeled folded map, and a sealed letter tied with plain string, arranged upright as three distinct objects, warm marigold, leaf green, brick red and sky blue details, visible soft brushstrokes, transparent background, no readable text, no flags, no people" meta="{&quot;width&quot;:1440,&quot;height&quot;:1440}"></grid-item></grid></grid-item></grid><notes><p>Introduce the three objects as clues, not complete answers. Explain that the class will use them to investigate one conflict from several viewpoints.</p></notes></section>
<section image-layout="blank" id="_rV9-B5qRp"><grid spacing="none"><grid-item id="fJvW-Aex3P"><h2>First clue: where did it happen?</h2><custom-code>
        <style>
          .history-map-trail { height: 13em; display: flex; align-items: center; justify-content: space-between; gap: 0.7em; font-family: var(--body-font); color: var(--body-color); }
          .history-map-trail .map-stop { flex: 1 1 0; height: 100%; border-radius: 1em; padding: 0.65em; display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center; background: var(--surface-color); }
          .history-map-trail .map-stop:nth-child(3) { background: color-mix(in srgb, var(--accent-color) 16%, var(--card-color)); }
          .history-map-trail .map-stop:nth-child(5) { background: color-mix(in srgb, var(--palette-2) 20%, var(--card-color)); }
          .history-map-trail svg { width: 10em; height: 6em; display: block; }
          .history-map-trail strong { font-family: var(--heading-font); font-size: 1.15em; line-height: 1.1; }
          .history-map-trail span { font-size: 0.76em; line-height: 1.25; }
          .history-map-trail .map-arrow { flex: 0 0 auto; font-family: var(--heading-font); font-size: 2em; color: var(--accent-color); }
        </style>
        <div class="history-map-trail" role="img" aria-label="Schematic zoom from South America to Brazil to Rio Grande do Sul">
          <div class="map-stop">
            <svg width="160" height="96" viewBox="0 0 160 96" aria-hidden="true">
              <path d="M64 7 L96 13 L116 31 L107 44 L113 57 L95 69 L87 90 L72 77 L63 57 L47 43 L52 25 Z" fill="var(--palette-4)"></path>
              <circle cx="82" cy="55" r="6" fill="var(--card-color)"></circle>
            </svg>
            <strong>South America</strong>
            <span>Find the continent.</span>
          </div>
          <div class="map-arrow" aria-hidden="true">→</div>
          <div class="map-stop">
            <svg width="160" height="96" viewBox="0 0 160 96" aria-hidden="true">
              <path d="M48 15 L88 7 L119 28 L111 55 L91 86 L70 71 L48 57 L38 34 Z" fill="var(--palette-1)"></path>
              <path d="M73 68 L91 75 L87 88 L70 78 Z" fill="var(--palette-3)"></path>
            </svg>
            <strong>Brazil</strong>
            <span>Move to the south.</span>
          </div>
          <div class="map-arrow" aria-hidden="true">→</div>
          <div class="map-stop">
            <svg width="160" height="96" viewBox="0 0 160 96" aria-hidden="true">
              <path d="M45 19 L111 19 L123 50 L102 82 L58 78 L36 49 Z" fill="var(--palette-2)"></path>
              <circle cx="82" cy="53" r="13" fill="var(--card-color)"></circle>
              <circle cx="82" cy="53" r="7" fill="var(--palette-3)"></circle>
            </svg>
            <strong>Rio Grande do Sul</strong>
            <span>The conflict’s centre.</span>
          </div>
        </div>
      </custom-code><grid spacing="large" vertical-sizing="hug"><grid-item id="-h4aKH6-tz" colspan="38"><p role="caption"><b>Map note:</b> This classroom map is schematic. It is not an exact picture of historical borders.</p></grid-item><grid-item id="GD7MEZGyfe" colspan="22"><p role="caption"><b>Source:</b> <a href="https://www.rs.gov.br/carta-de-servicos/servicos?servico=2268">Rio Grande do Sul government</a></p></grid-item></grid></grid-item></grid><notes><p>Trace the zoom from continent to country to state. Stress that this is a location guide, not a reconstruction of nineteenth-century borders.</p></notes></section>
<section image-layout="blank" id="eGz9WJhQfy"><grid spacing="none"><grid-item id="IGsZDulPrk"><h2>Why were people arguing?</h2><grid marker="icon" marker-position="inline" spacing="medium"><grid-item id="gBEXunHNoi" class="panel" background-color="palette-5" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/anae96cnfdVeVmeu1dVQ.svg?stroke=45" source="image.pictographic.icon" alt="tax rules and trade document" meta="{&quot;description&quot;:&quot;Two arrows intersecting, forming a shape that suggests the exchange or movement of goods or services, highlighting the concept of trade.&quot;}"></icon></grid-item-label><h4>Trade and taxes</h4><p font-size="sm">People disagreed about economic rules.</p></grid-item><grid-item id="71CweA-d25" class="panel" background-color="palette-6" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/NUimptX9XOP3v0swscOa.svg?stroke=45" source="image.pictographic.icon" alt="regional government building decision" meta="{&quot;description&quot;:&quot;A solid black square, embodying the concept of decision, suggests a straightforward and definitive choice, much like a checkbox being marked to indicate a clear selection or a firm stance being taken, implying simplicity and directness in the decision-making process.&quot;}"></icon></grid-item-label><h4>Regional power</h4><p font-size="sm">Leaders wanted more say in local decisions.</p></grid-item><grid-item id="ek1Oq97OEQ" class="panel" background-color="palette-7" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/cvoNv5Qeqq7jTbQAcfjMLT.svg?stroke=45" source="image.pictographic.icon" alt="separate republic political idea" meta="{&quot;description&quot;:&quot;A blank space with a black area, signifying nothingness or emptiness.&quot;}"></icon></grid-item-label><h4>Political future</h4><p font-size="sm">Some rebels wanted a separate republic.</p></grid-item><grid-item id="L-cH_Kka8K" class="panel" background-color="palette-8" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/aVohuPeDtwTB6MLCoLYH.svg?stroke=45" source="image.pictographic.icon" alt="united country government" meta="{&quot;description&quot;:&quot;A black shape of a country map outline in a simple form, set against a clean white background, symbolizing a nation or territory.&quot;}"></icon></grid-item-label><h4>Imperial government</h4><p font-size="sm">It wanted Brazil to remain together.</p></grid-item></grid><grid spacing="large" vertical-sizing="hug"><grid-item id="hqznqMluN0" colspan="39"><p><b>There was not one simple cause.</b> People made different choices for different reasons—not because one whole side was simply good or bad.</p></grid-item><grid-item id="y-h3YoVPw7" colspan="21"><p role="caption"><b>Source:</b> <a href="https://cultura.rs.gov.br/upload/arquivos/carga20210405/27100547-anais-ahrs-v-16-1.pdf">State Historical Archive of Rio Grande do Sul</a></p></grid-item></grid></grid-item></grid><notes><p>Read the four causes as connected disagreements. Avoid sorting people into heroes and villains; different people could care about different issues at the same time.</p></notes></section>
<section image-layout="blank" id="aDMqCrl1XQ"><grid spacing="none"><grid-item id="WfSBo8XDI7"><h2>A ten-year timeline</h2><spacer mode="fill"></spacer><smart-layout variant="timeline" orientation="horizontal" cell-size="15"><smart-layout-item><h4>1835</h4><p>The conflict begins in Rio Grande do Sul.</p></smart-layout-item><smart-layout-item><h4>1835–1845</h4><p>Political disagreement continues. Families and workers live through years of uncertainty.</p></smart-layout-item><smart-layout-item><h4>1845</h4><p>The conflict ends.</p></smart-layout-item></smart-layout><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="xTUBXOfOzB" class="panel" background-color="surface" cell-style="solid" padding="18pt 24pt"><p><b>Time check:</b> Ten years is longer than most children spend in primary school.</p></grid-item></grid></grid-item></grid><notes><p>Point to the start and end dates, then let the ten-year span sink in. Ask children to compare it with how long they have been at school.</p></notes></section>
<section image-layout="blank" id="4p4qW4vxL9"><grid spacing="none"><grid-item id="sSYgGEtB-c"><p role="eyebrow">ILLUSTRATIVE VIEWPOINTS · NOT REAL BIOGRAPHIES</p><h2>The same years did not feel the same to everyone</h2><grid marker="icon" marker-position="inline" spacing="medium"><grid-item id="WdK_iV5QVJ" class="panel" background-color="palette-5" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/W1ORA0vd8fPYhkLH7GLN.svg?stroke=45" source="image.pictographic.icon" alt="faceless market seller silhouette" meta="{&quot;description&quot;:&quot;A person icon with a briefcase or a shopping bag, conveying the concept of a seller or vendor, typically involved in commercial transactions.&quot;}"></icon></grid-item-label><h4>Rosa · free market seller</h4><p font-size="sm">She watches for changes to trade.</p></grid-item><grid-item id="jMXo-RpgSz" class="panel" background-color="palette-6" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/PytM89Zc5I9G8bXiWC0N.svg?stroke=45" source="image.pictographic.icon" alt="faceless rural worker silhouette" meta="{&quot;description&quot;:&quot;A construction worker wearing a hard hat, symbolizing a person involved in building, repairing, or maintaining structures.&quot;}"></icon></grid-item-label><h4>Tomás · rural worker</h4><p font-size="sm">He thinks about work, food, and travel.</p></grid-item><grid-item id="21PMUmMU9X" class="panel" background-color="palette-7" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/FmGzTd8hFRqCSKSEWDqO.svg?stroke=45" source="image.pictographic.icon" alt="faceless enslaved worker silhouette dignified" meta="{&quot;description&quot;:&quot;A person wearing a hard hat, symbolizing a construction worker or someone involved in building and industrial activities.&quot;}"></icon></grid-item-label><h4>Luzia · enslaved worker</h4><p font-size="sm">She has far fewer rights and choices. The revolt does not end slavery.</p></grid-item><grid-item id="kgprbSCFAG" class="panel" background-color="palette-8" cell-style="solid" padding="20pt 22pt" colspan="30"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/NSeOpQ7iiVRO3AE3ExAL.svg?stroke=45" source="image.pictographic.icon" alt="faceless child listening to adults" meta="{&quot;description&quot;:&quot;Two ears in a circle, symbolizing the act of listening attentively.&quot;}"></icon></grid-item-label><h4>Davi · child</h4><p font-size="sm">He hears news shaped by the adults around him.</p></grid-item></grid></grid-item></grid><notes><p>These names help the class compare viewpoints. They are not real biographies or invented witnesses. Emphasize that legal rights and freedom were deeply unequal.</p></notes></section>
<section image-layout="blank" id="HBwInwJ782"><grid spacing="none"><grid-item id="gjj4_E6mFW"><h2>Everyday objects carry big questions</h2><grid marker="icon" marker-size="large" marker-position="above" spacing="medium"><grid-item id="HjpVvf0vya" class="panel" background-color="palette-5" cell-style="solid" padding="20pt" colspan="15"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/qs8w62ykxWZiqz59e5eo.svg?stroke=45" source="image.pictographic.icon" alt="blank tax paper seal" meta="{&quot;description&quot;:&quot;Since there's no image provided in your query, I'll guide you through a general approach to describing simple icons or symbols as per your request.\n\nWhen describing an icon or symbol that consists of a simple or minimal details black shape/object against a white background, consider the following steps:\n\n1. **Identify the Shape/Object**: Clearly define the black shape or object in the image. Is it geometric (like a circle, square, triangle) or more organic (like an animal, plant)?\n\n2. **Consider the Context**: Think about the context in which the icon is used or presented. Is it related to technology, nature, finance, or perhaps transportation?\n\n3. **Analyze the Symbolism**: Determine what the shape or object typically symbolizes or represents. For example, a circle can represent unity or wholeness, while an arrow can signify direction or movement.\n\n4. **Describe the Icon**: Write a description that captures the essence of what the icon symbolizes without using generic phrases like \&quot;A simple line,\&quot; \&quot;A black outline,\&quot; \&quot;This image depicts,\&quot; or \&quot;The image represents.\&quot; Keep it concise but informative.\n\nGiven there's no specific image to analyze, let's create a hypothetical example based on a common icon:\n\n- **Example Icon**: A black heart within a white circle.\n\n- **Description**: A heart enclosed in a rounded circle, symbolizing love or affection within boundaries or a specific context.\n\nIf you provide a detailed description of the icon (the blank concept you're referring to), I can offer a more tailored description.&quot;}"></icon></grid-item-label><h4>Tax paper</h4><p font-size="sm">Who pays—and who decides the rules?</p></grid-item><grid-item id="VTwr9Iz-Ps" class="panel" background-color="palette-6" cell-style="solid" padding="20pt" colspan="15"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/ZsMOXi5wb8wKsK5PHkjZ.svg?stroke=45" source="image.pictographic.icon" alt="folded regional map" meta="{&quot;description&quot;:&quot;A black shape resembling a map, symbolizing geography, location, or navigation, set against a clean white background, conveying a sense of direction and exploration.&quot;}"></icon></grid-item-label><h4>Map</h4><p font-size="sm">Who should govern the region?</p></grid-item><grid-item id="zO6mh9zZ7r" class="panel" background-color="palette-7" cell-style="solid" padding="20pt" colspan="15"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/3BUdWrCxk4i9wUhZkmdXjP.svg?stroke=45" source="image.pictographic.icon" alt="sealed letter envelope" meta="{&quot;description&quot;:&quot;The letter \&quot;A\&quot; in a minimalist design, centered on a white background, embodies the concept of a basic unit of written communication, symbolizing the foundation of language and expression.&quot;}"></icon></grid-item-label><h4>Letter</h4><p font-size="sm">How do people learn what is happening?</p></grid-item><grid-item id="kzFzRNngJh" class="panel" background-color="palette-8" cell-style="solid" padding="20pt" colspan="15"><grid-item-label><icon src="https://iconscdn.pictographic.ai/image/mCCnaJvC3S4WyrAhk93i.svg?stroke=45" source="image.pictographic.icon" alt="woven household food basket" meta="{&quot;description&quot;:&quot;A black wicker basket with two handles, signifying dirty clothes or laundry to be washed, symbolizing household chores.&quot;}"></icon></grid-item-label><h4>Food basket</h4><p font-size="sm">How do families keep daily life going?</p></grid-item></grid><p><b>Objects help us study political ideas and ordinary experiences together.</b></p></grid-item></grid><notes><p>Ask what each object can reveal—and what it cannot reveal on its own. A historian compares objects with other evidence and viewpoints.</p></notes></section>
<section image-layout="blank" id="NZYHjS174U"><grid spacing="none"><grid-item id="5E7gmk71qV"><h2>What changed—and what did not?</h2><grid spacing="large" vertical-sizing="fill"><grid-item id="9A1WpVnf9L" class="panel" background-color="palette-6" cell-style="solid" padding="28pt 30pt" colspan="22"><labels class="tag"><label variant="solid" color="var(--palette-2)">Changed</label></labels><h3>The conflict ended</h3><p>The ten-year conflict ended in 1845.</p></grid-item><grid-item id="0PgBblEX9B" class="panel" background-color="palette-7" cell-style="solid" padding="28pt 30pt" colspan="38"><labels class="tag"><label variant="solid" color="var(--palette-3)">Did not change</label></labels><h4>Brazil stayed together</h4><p font-size="sm">Rio Grande do Sul did not remain separate from Brazil.</p><h4>Slavery continued</h4><p font-size="sm">Abolition was not an outcome of the revolt.</p></grid-item></grid><grid spacing="none" vertical-sizing="hug"><grid-item id="_J-PWpkFFP" class="panel" background-color="palette-8" cell-style="solid" padding="18pt 24pt"><p><b>Big idea:</b> Ending a conflict does not automatically make life fair for everyone.</p></grid-item></grid></grid-item></grid><notes><p>Separate “the fighting ended” from “every problem was solved.” Return to Luzia’s viewpoint: slavery continued, so the ending did not bring equal freedom.</p></notes></section>
<section image-layout="blank" id="2sSD3lwUtF"><grid spacing="none"><grid-item id="kWj36iqkVd"><h2>History detective quiz</h2><custom-code interactive="">
        <style>
          .history-check { font-family: var(--body-font); color: var(--body-color); font-size: 1.05em; display: flex; flex-direction: column; gap: 0.45em; --surface-padding: 0.8em 1em; }
          .history-check .history-num { margin: 0; font-size: 0.78em; font-weight: 700; opacity: 0.7; }
          .history-check .history-q { margin: 0; min-height: 2.6em; font-family: var(--heading-font); font-size: 1.25em; font-weight: 800; line-height: 1.2; }
          .history-check .history-a { margin: 0; min-height: 2.6em; line-height: 1.35; visibility: hidden; }
          .history-check[data-open="true"] .history-a { visibility: visible; }
          .history-check .history-controls { display: flex; gap: 0.5em; flex-wrap: wrap; }
          .history-check button { font-family: var(--body-font); font-size: 0.78em; font-weight: 700; padding: 0.45em 1em; border-radius: 999em; border: 0.1em solid var(--neutral-border-color); background: var(--surface-color); color: var(--body-color); cursor: pointer; }
          .history-check button.history-show { background: var(--heading-color); border-color: var(--heading-color); color: var(--card-color); }
          .history-check button:focus-visible { outline: 0.16em solid var(--accent-color); outline-offset: 0.15em; }
        </style>
        <div class="history-check gml-surface" data-open="false">
          <p class="history-num" id="history-num">Question 1 of 3</p>
          <p class="history-q" id="history-q">Which Brazilian state is at the centre of this story?</p>
          <p class="history-a" id="history-a" aria-live="polite">Rio Grande do Sul.</p>
          <div class="history-controls">
            <button type="button" class="history-show" id="history-show" aria-expanded="false">Show the answer</button>
            <button type="button" id="history-next">Next question</button>
          </div>
        </div>
        <script>
          window.addEventListener('load', function () {
            const qa = [
              ['Which Brazilian state is at the centre of this story?', 'Rio Grande do Sul.'],
              ['Name two kinds of disagreement behind the conflict.', 'Any two: trade and taxes, regional power, or republican separation.'],
              ['Why might the same event feel different to a free seller and an enslaved worker?', 'People did not have equal rights or choices.']
            ]
            let i = 0
            const box = document.querySelector('.history-check')
            const num = document.getElementById('history-num')
            const q = document.getElementById('history-q')
            const a = document.getElementById('history-a')
            const show = document.getElementById('history-show')
            const next = document.getElementById('history-next')
            const paint = () => {
              num.textContent = 'Question ' + (i + 1) + ' of ' + qa.length
              q.textContent = qa[i][0]
              a.textContent = qa[i][1]
              box.setAttribute('data-open', 'false')
              show.setAttribute('aria-expanded', 'false')
              show.textContent = 'Show the answer'
            }
            show.addEventListener('click', () => {
              const open = box.getAttribute('data-open') === 'true'
              box.setAttribute('data-open', open ? 'false' : 'true')
              show.setAttribute('aria-expanded', open ? 'false' : 'true')
              show.textContent = open ? 'Show the answer' : 'Hide the answer'
            })
            next.addEventListener('click', () => {
              i = (i + 1) % qa.length
              paint()
            })
            paint()
          })
        </script>
      </custom-code><grid spacing="none" vertical-sizing="hug"><grid-item id="5uRCj71GI9" class="panel" background-color="palette-8" cell-style="solid" padding="18pt 24pt"><h4>Final detective question</h4><p>Whose voice might still be missing?</p></grid-item></grid></grid-item></grid><notes><p>Pause before revealing each answer. For the final question, welcome several possibilities and ask what evidence might help historians find those missing voices.</p></notes></section>