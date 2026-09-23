# Original or library: the completed creative prototype

**Content revision:** [Review the comparisons rebuilt with actual agent-written outlines](agent-content.html). The staging agent now researches and writes the detailed content plan for all 14 briefs, including reviewed agent revisions. Both designs receive the same new plan, with the existing themes and library choices retained; the writer and rendering stages still use the prototype pipeline. The findings below describe the original custom-outline experiment, not these new comparisons.

## How this differs from the actual agent

**This was a custom, iterated design prototype—not an end-to-end run of the actual Gamma agent.** It used the production deck writer and theme-application code from the checked-out repository, with custom planning and finishing around them. The final results do not establish what the shipped agent would produce on these briefs.

**Jon’s custom-theme instructions were included:** all 14 saved planning requests contain the complete, unchanged `AUTHORED-LOOK.md` introduced by Jon Noronha in PR 37723. However, those instructions were supplied inside a separate, custom planning prompt that asked for three competing concepts, a chosen theme, art direction and a detailed outline. This was not an unchanged execution of Jon’s main-agent workflow.

| Stage | What this prototype actually used |
|---|---|
| Main-agent orchestration | Bypassed; no end-to-end harness session |
| Template selection | Custom two-stage full-catalog selector outside the main agent |
| Planning | A custom Sol/high call produced the design concept, theme and detailed outline; both comparison arms received the same outline |
| Theme creation | Jon’s full authored-look instructions, plus additional creativity and structured-output requirements |
| Theme application | Actual `validateAuthoredTheme` and `applyAuthoredLook` functions; structural donor fixed to Brand Base Standard |
| Initial writing | Production whole-deck writer prompts from the checkout, run through the offline writer benchmark with Sol/high |
| Finishing | Custom model critiques and repair prompts, plus direct GML edits by the coding assistant; not the production finisher |

Jon’s normal flow has the main agent author one theme from the conversation and select an appropriate structural donor. This prototype instead used a separate three-concept planning stage and always selected Brand Base Standard for the original arm. Neither writer nor repair stages were restricted to reusing particular base-card layouts. Final examples such as the pirate timeline and sourced geographic maps also include direct code edits.

**Read the results as what these ingredients can produce with additional direction and iteration—not as an agent benchmark, a strict template-adherence test, or an isolated measurement of Jon’s prompt.** The next production-faithful validation should run the actual agent with only the intended routing change and retain its normal planning and finishing flow.

[Open the interactive comparison](./index.html). It starts with pirate cosmology. Compare synchronized slides, inspect earlier revisions, open editable staging decks, or hide the routes in **Blind review** and export your choices. [Compact results CSV](./results.csv) · [Full results JSON](./results.json).

**14 original themes on Brand Base Standard + 14 library decks, 226 final slides.** Three concepts were considered for every brief. Both routes received real assets, a substantive creative revision, focused rendering repairs and evidence-driven corrections. The run retains 128 rendered deck revisions, including unchanged counterpart snapshots when only one arm needed a correction. All final slides pass the measured frame and blank-card checks; all 28 saved staging decks pass content read-back checks. These checks are not a blanket claim of perfection or full brief compliance.

## Brand Base adherence: an important qualification

[Inspect base cards, first drafts and final slides side by side](./provenance.html). The base examples are rendered with the same custom theme as the output so layout differences are easier to see.

**This run did not enforce reuse of Brand Base card layouts.** The writer was explicitly allowed to adapt examples, combine treatments, or create new compositions without finding a matching donor. No source card was pinned or recorded for any of the 113 original slides. Brand Base supplied the starting theme/settings and examples, not a fixed layout constraint.

A retrospective markup inspection finds custom positioning, shape, SVG or code constructions absent from all34base examples in **28 of113final original slides**. This is a lower bound on divergence; ordinary grid compositions may also have been rebuilt. Suggested base matches in the inspector are explicitly **structural resemblance, not source attribution**. This prototype therefore does not establish that the quality results are achievable through custom theming while strictly retaining Brand Base layouts. A stricter test needs pinned source IDs and verified layout lineage across writer and repair stages.

## What the results say

The final two-order model reviews prefer **original in 11 cases**, **library in 2**, with **1 order-sensitive result(s)** and **0 ties**. These are advisory model preferences on this small, iterated sample—not human votes or a measured production win rate. 2 of 28 decks receive “sustained wow” in both orders; winning a pair often still means occasional wow rather than excellence throughout. Full scores and criticisms remain accessible in the reviewer.

The strongest argument for original authorship is an explanatory idea that the library does not already realize: a pirate’s celestial navigation atlas, a visible seminar transformation for Hegel, a rhyme-and-tone construction for Kiều, or an authentication request shown through interface, code and system boundaries. Custom palette changes alone are not the useful distinction.

The library remains valuable. School ozone and premium wellness are clear counterexamples to “always author something original.” In particular, the selector chose original for wellness in all three trials, yet its Palmhouse comparison wins the final review. Several cases selected library consistently but favor original after generation. Preview-level confidence is not calibrated to finished-deck quality.

Pirate cosmology routes to original in **all three creative selector trials**. There is no pirate-specific hardcode or target route percentage. The custom result uses a bespoke celestial atlas, expanding coordinate grid, wavelength explanation, conceptual all-sky map, logarithmic cosmic course and evidence-to-model synthesis. Its library comparison remains available as a real counterfactual.

## All 14 pairs

“Original votes” measures selection repeatability before generation. “Final preference” requires agreement between the two swapped-order model reviews. It does not replace your judgment.

| Brief | Original votes | Library comparison | Final preference | Custom theme + Brand Base | Library deck |
|---|---:|---|---|---|---|
| Ozone · children | 2/3 | weather-watchers | library | [Open](https://staging.gamma.app/docs/y68amdqvye7sdqi) · r4 | [Open](https://staging.gamma.app/docs/4kdluysmbv21beu) · r4 |
| Ozone · investment committee | 1/3 | verdict | original | [Open](https://staging.gamma.app/docs/ga5ilnt10eltgpl) · r6 | [Open](https://staging.gamma.app/docs/lpsvj7aapuzjm9q) · r6 |
| Salon lookbook | 0/3 | voile | original | [Open](https://staging.gamma.app/docs/8w9u188vcr2fqkm) · r3 | [Open](https://staging.gamma.app/docs/bnvw0ramfpsjktn) · r3 |
| Business review | 0/3 | quarterlight | inconclusive | [Open](https://staging.gamma.app/docs/u21j9hj5dt5kou1) · r3 | [Open](https://staging.gamma.app/docs/aovxo5n6v020dmn) · r3 |
| Dark creative conference | 1/3 | blackwork | original | [Open](https://staging.gamma.app/docs/yuiroqc3usocwl2) · r5 | [Open](https://staging.gamma.app/docs/3e7eyw77oyrln2t) · r5 |
| Premium wellness | 3/3 | palmhouse | library | [Open](https://staging.gamma.app/docs/xj4dvufdi4f1wsk) · r5 | [Open](https://staging.gamma.app/docs/223py4hzs9h5v5t) · r5 |
| Standalone handover | 0/3 | readable-detail | original | [Open](https://staging.gamma.app/docs/o7uw1jtprtirao1) · r4 | [Open](https://staging.gamma.app/docs/mst26hzwnpm4pjr) · r4 |
| Big Bang for a pirate | 3/3 | star-trails | original | [Open](https://staging.gamma.app/docs/qziijjcsddcff6h) · r8 | [Open](https://staging.gamma.app/docs/bm9hs8gketiif2s) · r8 |
| Student authentication | 3/3 | pipeline | original | [Open](https://staging.gamma.app/docs/829nw2qbjoow8qa) · r4 | [Open](https://staging.gamma.app/docs/y9ehq1i3ccvfksp) · r4 |
| Visual communication history | 3/3 | classic-editorial | original | [Open](https://staging.gamma.app/docs/4hjzqjz7yamsrnk) · r4 | [Open](https://staging.gamma.app/docs/7nxx1vcxwl0tg86) · r4 |
| History for children | 1/3 | story-map | original | [Open](https://staging.gamma.app/docs/tmu6o2ru86cjwyi) · r5 | [Open](https://staging.gamma.app/docs/mxisnxy4m0xaz1h) · r5 |
| Hegel | 0/3 | marginalia | original | [Open](https://staging.gamma.app/docs/0ojnf3doz5xy04l) · r4 | [Open](https://staging.gamma.app/docs/pfl0l1youiiktp3) · r4 |
| Agricultural machinery | 1/3 | lecture-hall | original | [Open](https://staging.gamma.app/docs/7t8x38lc07ef933) · r5 | [Open](https://staging.gamma.app/docs/2rbk1xrniucbmeg) · r5 |
| The Tale of Kiều | 0/3 | marginalia | original | [Open](https://staging.gamma.app/docs/5oku8pl5e0bymwn) · r4 | [Open](https://staging.gamma.app/docs/z7ifstrymsrd9t4) · r4 |

## What was actually tested

- **Inputs:** the 14 requests and exact handoffs from [PR37703](https://github.com/gamma-app/gamma/pull/37703), pinned commit `3e72f07a2df33a336a3b46938aed2f7c2522011e`. No inherited candidates or expected decisions. PR37628 is excluded.
- **Catalog:** live staging capture at 2026-09-23 00:54 UTC: 365 regular templates, 296 presentation-eligible candidates, and three separately enumerated brand bases. Every shortlist call sees all 296 metadata entries. Only shortlisted candidates receive visual inspection. This is a pinned snapshot, not a continuously updating catalog.
- **Selection:** Luna/low shortlists up to five candidates, then independently assesses real previews without the shortlisting rationale or retrieval scores. Three identical creativity-prompt trials are retained. Best library candidates from the first creative trial supply the comparison decks; later trials sometimes prefer different candidates.
- **Creation:** three Sol/high concepts per brief; a chosen art direction and schema-validated authored theme; custom theme applied through the actual theme-authoring path to the downloaded Brand Base Standard. Same content outline per pair, production whole-deck writer, Sol/high, one first-draft sample per arm. 8 slides per deck except 7 for authentication and 10 for handover.
- **Iteration:** actual generated images, native text/diagrams/charts and vector constructions, complete 1200×675 themed renders, a custom visual/content repair loop, and direct artifact inspection. Both arms were iterated; intervention counts are not equal. First drafts had 80 measured overflowing slides; finals have zero. This illustrates the work required, not first-pass readiness.
- **Review:** all slides judged twice with route identity withheld and presentation order swapped. Judges see the original request/handoff and rendered slides. Raw results and image hashes are preserved. The gallery’s human blind mode hides labels and alternates sides; it is not a formal randomized study.
- **Persistence:** real editable staging documents, with retrieved contents checked for expected card counts and unresolved generation nodes. Three sampled 8-slide persistence re-renders (business review, pirate and children’s history originals) were byte-identical to local PNGs, including the new vector timeline and geographic maps. Browser UI behavior and exports were not exhaustively tested.

This tests the combined design route—theme, donor template, art direction, composition and subsequent iteration. It does **not** isolate theme color as a causal variable, run the live main-agent planner, or evaluate the production finisher. No deployed prompt or application code was changed. Only Standard was used as the neutral base; we cannot infer that 20–30 bases are necessary from this experiment.

## Assumptions and remaining limitations

- The salon decks contain clearly labeled **AI concept imagery**, because no actual salon work was supplied. They demonstrate design, not a real latest-work portfolio. The judges correctly flag that delivery limitation.
- Business metrics, holdings and agricultural calculations are explicitly illustrative. The investment committee decks demonstrate a diligence method, not an analysis of an actual supplied portfolio; one review flags that missing input as a delivery blocker. The agriculture brief’s referenced source document was absent. Handover uses an example project. The conference topic is a shared provisional concept. These are not customer facts.
- The library authentication deck misses explicit glass/isometric/shield styling. That is retained as evidence of poor route fit, not hidden by transforming the library arm into another original design.
- Model reviews have false positives. An earlier pirate review alleged a missing negation, but both GML and the actual PNG clearly included “not.” That review and its adjudication are retained in `generation/superseded-final/` and [the handoff audit](./generation/FINAL-HANDOFF-AUDIT.md). Later reviews apply to newly revised slides, not an erased bad score.
- Required historical imagery now includes a [Library of Congress printing-office photograph](https://www.loc.gov/pictures/item/2006680004/) and a rendering of [CERN’s preserved early Web page](https://info.cern.ch/hypertext/WWW/TheProject.html), explicitly distinguished from a period browser screenshot. Children’s geography uses [Natural Earth](https://www.naturalearthdata.com/) shapes and modern-boundary labels; it does not claim exact 1835 borders. Source files and hashes are retained.
- Some decks remain stronger at individual moments than throughout. Small source captions, content density and generic middle-slide structures remain useful human-review targets. Educational interpretation and generated historical illustrations are scoped, not independently certified documentary evidence.

## The MVP this supports

1. Ask for a specific creative premise before committing to a template: audience, emotional effect, visual explanation and the moment the user should remember.
2. Let full-library retrieval find possible matches. Have a separate visual-fit judgment evaluate whether a candidate already delivers that premise. Topic resemblance or “can replace the pictures” is insufficient.
3. Keep original authorship a first-class route: author the theme and explanatory system on a neutral base when no library candidate earns the fit. Preserve explicit user visual requirements. Do not enforce a route quota.
4. Include an actual render-and-repair stage. This prototype’s first drafts show that an ambitious prompt without that stage is insufficient.
5. Use this reviewer to collect human pairwise choices and reasons, then expand repeated generation on cases where selection and output disagree. Tune routing against held-out outcomes; do not retrofit thresholds to these 14 wins.

Estimated recorded spend: **$114.99**, covering selection, concepts, writing, images, model reviews and model repairs. [Cost ledger](./cost-ledger.json). This is a usage-based estimate, not an invoice; unretained failed or overlapping attempts may add cost. The expensive part of this exploratory run is repeated visual repair, not library selection.

[Reproduction and artifact guide](./README.md) · [Creative rubric](./CREATIVE-REVIEW.md) · [Exact final revision manifest](./generation/final-manifest.json). All work is isolated in this gitignored prototype directory; production behavior is unchanged.
