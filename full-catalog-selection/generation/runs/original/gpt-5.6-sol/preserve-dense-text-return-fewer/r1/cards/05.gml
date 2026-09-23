<section>
  <grid spacing="none">
    <grid-item colspan="7" background-color="accent" padding="34pt 12pt 30pt">
      <p role="eyebrow">Field guide</p>
      <spacer mode="fill"/>
      <p role="caption">STATUS</p>
      <p role="caption">05 / 10</p>
    </grid-item>
    <grid-item colspan="53" padding="30pt 40pt 26pt 36pt">
      <labels><label variant="outline">Illustrative replacement · validate before use</label></labels>
      <h2>Current status: core workflow works, evidence is not yet launch-complete</h2>
      <grid divider="sm neutral-border" vertical-sizing="hug">
        <grid-item colspan="20">
          <display size="md">34/42</display>
          <h4>Acceptance scenarios passed</h4>
          <p font-size="sm">Five pending; three failed.</p>
        </grid-item>
        <grid-item colspan="20">
          <display size="md">18/24</display>
          <h4>Designated users trained</h4>
          <p font-size="sm">Rollback rehearsal remains open.</p>
        </grid-item>
        <grid-item colspan="20">
          <display size="md">4.5h</display>
          <h4>Latest export</h4>
          <p font-size="sm">Against a two-hour target.</p>
        </grid-item>
      </grid>
      <table borders="rows" striped="false" col-widths="[18,14,28]">
        <tr><th>Area</th><th>State</th><th>Evidence and consequence</th></tr>
        <tr><td><p font-size="sm"><b>Configuration</b></p></td><td><p font-size="sm">Accepted baseline</p></td><td><p font-size="sm">Validation and all eight categories configured in C-12.</p></td></tr>
        <tr><td><p font-size="sm"><b>Pilot</b></p></td><td><p font-size="sm">Conditional</p></td><td><p font-size="sm">18 agents processed 120 controlled requests; routing met 90%, but the sample is not launch assurance.</p></td></tr>
        <tr><td><p font-size="sm"><b>Operations</b></p></td><td><p font-size="sm">Conditional</p></td><td><p font-size="sm">Runbook v0.6 exists; training and rollback evidence are incomplete.</p></td></tr>
        <tr><td><p font-size="sm"><b>Reporting</b></p></td><td background-color="palette-2"><p font-size="sm"><b>Blocked</b></p></td><td><p font-size="sm">Representative benchmark and D-04 are required before launch review.</p></td></tr>
        <tr><td><p font-size="sm"><b>Security</b></p></td><td><p font-size="sm">Conditional</p></td><td><p font-size="sm">Review complete subject to production role confirmation.</p></td></tr>
      </table>
      <aside variant="warning"><p font-size="sm"><b>Critical path:</b> reporting benchmark → D-04 → close duplicate-detection, overnight-routing, and export failures → launch-readiness review.</p></aside>
      <p role="caption">Preserve: UAT summary · pilot log · baseline C-12 · runbook v0.6 · access review.</p>
    </grid-item>
  </grid>
</section>