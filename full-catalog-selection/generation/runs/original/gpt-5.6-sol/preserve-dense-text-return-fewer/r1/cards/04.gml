<section>
  <grid spacing="none">
    <grid-item colspan="7" background-color="accent" padding="34pt 12pt 30pt">
      <p role="eyebrow">Field guide</p>
      <spacer mode="fill"/>
      <p role="caption">SERVICE</p>
      <p role="caption">04 / 10</p>
    </grid-item>
    <grid-item colspan="53" padding="32pt 40pt 28pt 36pt">
      <labels><label variant="outline">Illustrative replacement · validate before use</label></labels>
      <h2>How a request moves through the service</h2>
      <p>Six outputs make failures isolatable rather than one undifferentiated service problem.</p>
      <grid recipe="process-steps" spacing="small" marker-numbering-format="decimal-leading-zero">
        <grid-item colspan="20">
          <h4>Capture</h4>
          <p font-size="sm">Email, chat, or web input becomes a normalized request record.</p>
        </grid-item>
        <grid-item colspan="20">
          <h4>Validate</h4>
          <p font-size="sm">Required fields, identity, consent, and duplicate signals are checked.</p>
        </grid-item>
        <grid-item colspan="20">
          <h4>Classify</h4>
          <p font-size="sm">Rules assign one of eight categories, a priority, and confidence.</p>
        </grid-item>
        <grid-item colspan="20">
          <h4>Route</h4>
          <p font-size="sm">Category, region, and service hours select the destination queue.</p>
        </grid-item>
        <grid-item colspan="20">
          <h4>Work</h4>
          <p font-size="sm">The case platform records assignment, response, status, and resolution.</p>
        </grid-item>
        <grid-item colspan="20">
          <h4>Observe</h4>
          <p font-size="sm">An export supplies queue, accuracy, backlog, and override measures.</p>
        </grid-item>
      </grid>
      <grid spacing="small" vertical-sizing="hug">
        <grid-item colspan="20" cell-style="subtle">
          <h4>Controls span the chain</h4>
          <p font-size="sm">Identity and audit logging apply at every stage.</p>
        </grid-item>
        <grid-item colspan="20" cell-style="subtle">
          <h4>Reporting is asynchronous</h4>
          <p font-size="sm">Intake continues when the analytics export is delayed.</p>
        </grid-item>
        <grid-item colspan="20" cell-style="subtle">
          <h4>Failures remain recoverable</h4>
          <p font-size="sm">Invalid or unroutable records enter the review queue; none are discarded.</p>
        </grid-item>
      </grid>
    </grid-item>
  </grid>
</section>