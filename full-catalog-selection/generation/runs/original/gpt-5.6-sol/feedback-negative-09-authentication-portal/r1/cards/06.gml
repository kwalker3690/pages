<section>
  <grid spacing="none">
    <grid-item>
      <labels><label variant="solid">REQUEST · CONTROL MAP</label></labels>
      <h2>Controls mapped to concrete failures</h2>
      <grid spacing="medium" vertical-sizing="fill">
        <grid-item colspan="44">
          <table borders="rows" striped="false" col-widths="[34,66]">
            <tr><th>Failure</th><th>Concrete control</th></tr>
            <tr>
              <td><p font-size="sm"><b>Credential guessing</b></p></td>
              <td><p font-size="sm">Rate-limit login attempts and return one generic failure.</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Injection</b></p></td>
              <td><p font-size="sm">Validate input and use parameterized database queries.</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Session fixation</b></p></td>
              <td><p font-size="sm">Regenerate the session identifier after authentication.</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Cookie theft</b></p></td>
              <td><p font-size="sm">Use HTTPS with HttpOnly, Secure, and SameSite.</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>CSRF</b></p></td>
              <td><p font-size="sm">Verify a server-issued token on state-changing forms.</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Broken access control</b></p></td>
              <td><p font-size="sm"><code>requireRole('admin')</code> returns 403 to an authenticated student.</p></td>
            </tr>
            <tr>
              <td><p font-size="sm"><b>Logout replay</b></p></td>
              <td><p font-size="sm">Destroy server state and clear <code>sid</code>.</p></td>
            </tr>
          </table>
          <p role="caption">Sources: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication</a> · <a href="https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html">OWASP Session Management</a>.</p>
        </grid-item>
        <grid-item colspan="16" vertical-align="center" align="center">
          <ai-image width="220pt" height="230pt" aspect-ratio="square" image-style="secure-stack-isometric" prompt="Matte isometric 3D security shield enclosing a small opaque session vault and dark browser-cookie capsule, cyan edge light, violet trust-boundary ring and mint verified lock, deep graphite materials, no text, no lettering, no logos, no people"></ai-image>
          <grid spacing="none" vertical-sizing="hug">
            <grid-item background-color="palette-2" padding="14pt 16pt">
              <p role="eyebrow">COOKIE-THEFT CONTROL</p>
              <h4>HTTPS + HttpOnly + Secure + SameSite</h4>
            </grid-item>
          </grid>
        </grid-item>
      </grid>
    </grid-item>
  </grid>
</section>