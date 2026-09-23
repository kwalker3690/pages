<section>
  <grid spacing="none">
    <grid-item>
      <h2>A scenario managers can replace with property data</h2>
      <labels><label variant="outline">Illustrative example — not actual company or hotel performance</label></labels>
      <grid spacing="medium" vertical-sizing="fill">
        <grid-item colspan="34" vertical-align="center">
          <table borders="rows" striped="false" col-widths="[30,70]">
            <tr>
              <th><p font-size="sm">Line</p></th>
              <th><p font-size="sm">Illustrative formula</p></th>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Capacity</b></p></td>
              <td><p font-size="sm">2 sessions × 8 places × 30 days = <b>480 places/month</b></p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Base-case revenue</b></p></td>
              <td><p font-size="sm">480 × 50% = 240 participants; 240 × $55 = <b>$13,200</b></p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Direct costs</b></p></td>
              <td><p font-size="sm">60 × $125 = $7,500; 240 × $5 = $1,200; fixed support = $1,000</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Contribution</b></p></td>
              <td><p font-size="sm">$13,200 − $7,500 − $1,200 − $1,000 = <b>$3,500/month</b></p></td>
            </tr>
          </table>
        </grid-item>
        <grid-item colspan="26" vertical-align="center">
          <h3>Contribution sensitivity</h3>
          <graph chart-type="column" width="345pt" height="215pt" show-data-labels="true" goal-value="0" goal-label="Break-even" text-size="md" config='{"legend":{"position":"none"}}'>
            <properties>
              <property key="fill" label="Seat fill" type="label"/>
              <property key="contribution" label="Monthly contribution (USD)" type="data"/>
            </properties>
            <data>
              <row><cell>35%</cell><cell>-100</cell></row>
              <row><cell>50%</cell><cell>3500</cell></row>
              <row><cell>65%</cell><cell>7100</cell></row>
            </data>
          </graph>
          <p font-size="sm"><b>Approximate break-even:</b> 170 participants, or 36% seat fill.</p>
        </grid-item>
      </grid>
      <p role="caption">Contribution excludes internal hotel labor, room opportunity cost, taxes, payment fees, and capital expenditure. All figures are illustrative USD assumptions using a 30-day month.</p>
    </grid-item>
  </grid>
</section>