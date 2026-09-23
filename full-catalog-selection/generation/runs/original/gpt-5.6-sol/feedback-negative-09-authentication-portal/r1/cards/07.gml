<section>
  <grid spacing="none">
    <grid-item>
      <labels><label variant="solid">REQUEST · LIVE TRACE</label><label variant="outline">ILLUSTRATIVE TEST RUN</label></labels>
      <h2>Prove it live, then break it safely</h2>
      <p>Watch the response, cookie, redirect, and protected route together. Authentication succeeds once; authorization is evaluated again at each boundary.</p>
      <grid spacing="none" vertical-sizing="hug">
        <grid-item padding="0" cell-style="subtle">
          <grid spacing="none" direction="vertical">
            <grid-item background-color="surface" padding="9pt 14pt">
              <grid spacing="none" vertical-sizing="hug">
                <grid-item><p font-size="sm">authentication-lab · observable outcomes</p></grid-item>
                <spacer mode="fill"></spacer>
                <grid-item><p font-size="sm">HTTPS · local teaching environment</p></grid-item>
              </grid>
            </grid-item>
            <grid-item padding="0">
              <table borders="rows" striped="false" col-widths="[12,30,58]">
                <tr><th>Result</th><th>Probe</th><th>Expected evidence</th></tr>
                <tr>
                  <td><p font-size="sm"><b>401</b></p></td>
                  <td><p font-size="sm">Wrong credentials</p></td>
                  <td><p font-size="sm">The same “Email or password is incorrect.” message appears, with no authenticated session.</p></td>
                </tr>
                <tr>
                  <td background-color="palette-3"><p font-size="sm"><b>303</b></p></td>
                  <td><p font-size="sm">Valid credentials</p></td>
                  <td><p font-size="sm">A regenerated <code>sid</code> is set and the browser reaches the student dashboard.</p></td>
                </tr>
                <tr>
                  <td background-color="palette-3"><p font-size="sm"><b>PASS</b></p></td>
                  <td><p font-size="sm">Refresh GET /dashboard</p></td>
                  <td><p font-size="sm">The request succeeds through the server-side session resolved by <code>requireAuth</code>.</p></td>
                </tr>
                <tr>
                  <td background-color="palette-2"><p font-size="sm"><b>403</b></p></td>
                  <td><p font-size="sm">Open /admin as a student</p></td>
                  <td><p font-size="sm">Access is denied: authenticated is not authorized.</p></td>
                </tr>
                <tr>
                  <td background-color="palette-3"><p font-size="sm"><b>REJECTED</b></p></td>
                  <td><p font-size="sm">POST /logout, then replay old cookie</p></td>
                  <td><p font-size="sm">Server state is destroyed, <code>sid</code> is cleared, and the old cookie no longer authenticates.</p></td>
                </tr>
              </table>
            </grid-item>
          </grid>
        </grid-item>
      </grid>
      <grid spacing="none" vertical-sizing="hug">
        <grid-item background-color="palette-3" padding="14pt 18pt">
          <h3>Identity is established once, but trust is checked at every boundary.</h3>
        </grid-item>
      </grid>
    </grid-item>
  </grid>
</section>