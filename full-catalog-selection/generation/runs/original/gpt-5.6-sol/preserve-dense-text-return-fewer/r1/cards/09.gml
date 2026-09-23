<section>
  <grid spacing="none">
    <grid-item colspan="7" background-color="accent" padding="34pt 12pt 30pt">
      <p role="eyebrow">Field guide</p>
      <spacer mode="fill"/>
      <p role="caption">ASSURANCE</p>
      <p role="caption">09 / 10</p>
    </grid-item>
    <grid-item colspan="53" padding="30pt 40pt 26pt 36pt">
      <labels><label variant="outline">Illustrative replacement · validate before use</label></labels>
      <h2>Risks, issue, and open questions converge on launch confidence</h2>
      <grid spacing="medium">
        <grid-item colspan="25">
          <h3>Risk register</h3>
          <grid direction="vertical" spacing="small">
            <grid-item cell-style="subtle">
              <h4>R-01 · Adoption · Medium / high</h4>
              <p font-size="sm">Trigger: &gt;20% manual rerouting. Operations Lead responds with category coaching and targeted rule review.</p>
            </grid-item>
            <grid-item cell-style="subtle">
              <h4>R-03 · Taxonomy drift · Medium / medium</h4>
              <p font-size="sm">Trigger: &gt;10% uncategorized work. Product Owner reviews weekly; local categories are not permitted.</p>
            </grid-item>
            <grid-item cell-style="subtle">
              <h4>R-04 · API rate limiting · Low / high</h4>
              <p font-size="sm">Trigger: queue age above five minutes. Technical Lead enables throttling and controlled replay.</p>
            </grid-item>
          </grid>
        </grid-item>
        <grid-item colspan="35">
          <h3>Reporting is the launch-confidence chain</h3>
          <smart-layout variant="staircase" cell-size="10" numbered="true">
            <smart-layout-item>
              <h4>Reporting dependency</h4>
              <p>The asynchronous export supplies operational measures.</p>
            </smart-layout-item>
            <smart-layout-item>
              <h4>R-02 · High / high</h4>
              <p>Triggered when refresh exceeds two hours.</p>
            </smart-layout-item>
            <smart-layout-item>
              <h4>I-01 · Active issue</h4>
              <p>Latest representative export completed in 4.5 hours.</p>
            </smart-layout-item>
            <smart-layout-item>
              <h4>A-06 · Response</h4>
              <p>Benchmark volume and prepare a controlled daily fallback.</p>
            </smart-layout-item>
            <smart-layout-item>
              <h4>D-04 · Open</h4>
              <p>Launch with fallback or delay for the two-hour standard.</p>
            </smart-layout-item>
          </smart-layout>
        </grid-item>
      </grid>
      <p role="eyebrow">Open questions that must close</p>
      <grid divider="sm neutral-border" vertical-sizing="hug">
        <grid-item colspan="15"><p font-size="sm">Can the export meet target at representative volume by T+5?</p></grid-item>
        <grid-item colspan="15"><p font-size="sm">Is a daily fallback acceptable for the first rollout group?</p></grid-item>
        <grid-item colspan="15"><p font-size="sm">What minimum pilot sample authorizes expansion?</p></grid-item>
        <grid-item colspan="15"><p font-size="sm">Who approves an emergency override when the supervisor is unavailable?</p></grid-item>
      </grid>
    </grid-item>
  </grid>
</section>