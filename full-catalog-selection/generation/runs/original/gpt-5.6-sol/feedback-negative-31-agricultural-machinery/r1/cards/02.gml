<section>
  <grid spacing="none">
    <grid-item>
      <h2>Three numbers define field efficiency</h2>
      <p>The recurring example starts with three operating inputs. Keep their units fixed and enter efficiency as a decimal.</p>
      <grid divider="sm neutral-border" vertical-sizing="hug">
        <grid-item colspan="20" vertical-align="center">
          <display size="md">2.0<span font-size="20pt"> m</span></display>
          <h4>Working width</h4>
        </grid-item>
        <grid-item colspan="20" vertical-align="center">
          <display size="md">5.0<span font-size="20pt"> km/h</span></display>
          <h4>Operating speed</h4>
        </grid-item>
        <grid-item colspan="20" vertical-align="center">
          <display size="md"><span text-color="accent">0.70</span></display>
          <h4>Field efficiency</h4>
        </grid-item>
      </grid>
      <grid spacing="medium" vertical-sizing="hug">
        <grid-item colspan="30" cell-style="subtle">
          <h3>Capacity ladder</h3>
          <p role="eyebrow">Theoretical capacity</p>
          <formula>C_t=\frac{2.0\times5.0}{10}=1.00\ \text{ha/hour}</formula>
          <p role="eyebrow">Effective capacity</p>
          <formula>C_e=C_t\times0.70=0.70\ \text{ha/hour}</formula>
        </grid-item>
        <grid-item colspan="30" cell-style="subtle">
          <h3>Losses become cost</h3>
          <formula>\eta_f=\frac{C_e}{C_t}=0.70</formula>
          <p>Field efficiency captures turning, overlap, refilling, adjustment and stoppage losses.</p>
          <formula>\frac{\$54/\text{hour}}{0.70\ \text{ha/hour}}=\$77.14/\text{ha}</formula>
        </grid-item>
      </grid>
      <p role="caption">Method: <a href="https://www.extension.iastate.edu/agdm/crops/html/a3-24.html">Iowa State University Extension</a>.</p>
    </grid-item>
  </grid>
</section>