# Original or library: full creative prototype

Open `index.html` in a browser for the paired slide reviewer. It starts on pirate cosmology. Use the arrows to advance both decks, click a slide to zoom, choose revisions to see the iterations, or open either editable staging Gamma. **Blind review** hides route labels and model judgments; choices stay in browser local storage and export as JSON. It alternates A/B order across cases; it is not a randomized human-study platform.

Read `PROTOTYPE-REPORT.md` for outcomes, assumptions, scope and all 28 staging links. `results.json`/`results.csv` provide the compact machine-readable comparison. Full audit evidence is retained below `generation/`.

## Inputs and experiment

- Exact 14 requests and captured handoffs from PR37703, pinned commit in `briefs.json`. No inherited candidates, rankings or expected route labels. PR37628 excluded entirely.
- Latest staging catalog captured for this experiment: 365 regular templates, 296 presentation-eligible candidates, plus three separate brand bases. Every shortlist call sees all 296 metadata entries. The finalist decision sees real preview images, but no search score or shortlist rationale.
- Three trials of the creativity-focused selector, plus the earlier pilot. `shortlist-prompt.txt` and `decision-prompt.txt` are the exact prototype prompts. Selection uses Luna/low. No production search or main-agent prompt was changed.
- Every brief gets three proposed concepts and a chosen authored theme validated through the actual theme schema. Every custom theme is applied to the real downloaded **Brand Base Standard**. The library comparison uses that brief's best candidate in `creative-01`, even if later trials chose another candidate.
- Both arms use the same content outline and the production whole-deck writer, Sol/high, one initial writer sample each. Real images are generated and resolved; supplied historical artifacts and geographic data are separately sourced.
- A whole-deck creative repair pass, focused frame/content repairs, and manual evidence-driven refinements follow. Both arms are iterated. Repairs differ by need; this is an achievable-quality prototype, not equal-cost or equal-intervention causal evaluation.
- Final PNGs are reviewed twice with sides swapped by the same model. Raw responses, image hashes and false-positive adjudications are retained. Review order can affect the outcome. This is not human validation.

## Reproduce

Run from the repository root. The root environment comes from direnv; credentials never enter saved request bodies. Agent dependencies live under `agent/` and use Bun, outside the root Yarn workspace.

```bash
# New selection trial: refuses to overwrite existing run names.
direnv exec . bun .context/full-catalog-selection/run.ts my-new-trial
bun .context/full-catalog-selection/report.ts my-new-trial

# Rebuild the review artifact from existing evidence; no paid calls.
bun .context/full-catalog-selection/generation/report.ts
bun .context/full-catalog-selection/generation/check-report.ts
bun .context/full-catalog-selection/generation/costs.ts
python3 .context/full-catalog-selection/generation/summarize.py
```

`capture.ts <new-directory>` refreshes briefs and staging catalog into a new capture. Refreshing changes the experiment inputs; it is not a prompt-only comparison. Do not overwrite the pinned capture.

`generation/prepare.ts` authors concepts/themes, downloads selected library templates, and creates the two corpora. `generation/corpus/{original,library}` is ready to feed `agent/scripts/writer-bench/run.ts` with Sol/high, k=1, date pinned to Wednesday September23 2026. Exact production writer prompts and run metadata are saved in each `r1`.

`generation/finish.ts` resolves actual assets and renders with the full theme, donor settings and canvas flags. `revise.ts` is the whole-deck creative repair; `repair-cards.ts` handles focused measured/visual defects. Editorial, geography and final-polish scripts document deterministic refinements. Each revision is retained; do not rerun into an existing revision to mutate its evidence.

`finalize.ts` freezes the chosen revisions; `thaw.ts` explicitly archives a superseded final before replacement. `REPEAT=final .../judge.ts` reviews missing final pairs. `REPEAT=final .../persist.ts` creates editable staging documents for missing finals; **this writes to staging**. `verify-live.ts` reads those documents back and verifies expected card counts and resolved assets. `verify-persist-render.ts <cell>` renders retrieved document GML to check persistence fidelity.

## Evidence and limitations

- `generation/final-manifest.json`: exact chosen source revision for each arm/case.
- `generation/runs/{original,library}/gpt-5.6-sol/<case>/`: drafts, final GML/theme/settings, actual renders, measurements, persisted URLs and read-back verification.
- `generation/judges/`: two-order reviews and exact image manifests. `superseded-final/` retains replaced finals and judgments.
- `generation/plans/`: three concepts, critique, chosen art direction, validated theme, content assumptions and research sources.
- `generation/historical-assets/`, `generation/geography/`: original source provenance and assets; no fabricated archival evidence.
- `cost-ledger.json`: captured usage-based estimate, not an invoice; unretained failed/overlapping requests may be billed separately.

All deliverables are isolated under this gitignored `.context` directory. No application behavior, deployed agent prompts, template catalog entries, default themes or production services were changed. This does not test live main-agent orchestration or the production finisher. Only one neutral base was tested; the experiment cannot establish how many neutral bases to build.

## Per-card Brand Base inspection

Open `provenance.html` for all113original slides: compare any of34base cards under the same custom theme, the first draft, and final output. No source cards were pinned or recorded. Suggested comparisons are retrospective structural matches, not provenance.28final slides contain custom positioning/shape/SVG/code types absent from all base examples; this is a lower bound, not a reuse rate. `generation/provenance.ts` produces the evidence and themed base renders; `SKIP_RENDER=1` skips already-produced reference renders. `generation/provenance-report.ts` rebuilds the inspector. `generation/provenance/data.json` preserves the method and per-card results.
