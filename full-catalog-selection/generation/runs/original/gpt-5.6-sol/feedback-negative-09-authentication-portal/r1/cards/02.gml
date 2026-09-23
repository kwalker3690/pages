<section>
  <grid spacing="none">
    <grid-item>
      <labels><label variant="solid">REQUEST · POST /login</label><label variant="outline">ILLUSTRATIVE</label></labels>
      <h2>Browser to POST /login</h2>
      <p>Asha enters <b>asha@campus.example</b>, a masked password, and a server-issued CSRF token. The password is never echoed or logged.</p>
      <grid spacing="medium" vertical-sizing="fill">
        <grid-item colspan="38" padding="0" cell-style="subtle">
          <grid spacing="none" direction="vertical">
            <grid-item rowspan="7" background-color="surface" padding="9pt 14pt">
              <grid spacing="none" vertical-sizing="hug">
                <grid-item><p font-size="sm">● ● ●</p></grid-item>
                <spacer mode="fill"></spacer>
                <grid-item><p font-size="sm">https://portal.campus.example/login</p></grid-item>
              </grid>
            </grid-item>
            <grid-item rowspan="53" padding="20pt 24pt">
              <p role="eyebrow">STUDENT AUTHENTICATION PORTAL</p>
              <h3>Sign in</h3>
              <p font-size="sm">Email</p>
              <grid spacing="none" vertical-sizing="hug">
                <grid-item background-color="surface" padding="10pt 12pt"><p>asha@campus.example</p></grid-item>
              </grid>
              <p font-size="sm">Password</p>
              <grid spacing="none" vertical-sizing="hug">
                <grid-item background-color="surface" padding="10pt 12pt"><p>••••••••••••</p></grid-item>
              </grid>
              <p font-size="sm">CSRF token</p>
              <grid spacing="none" vertical-sizing="hug">
                <grid-item background-color="surface" padding="10pt 12pt"><p font-size="sm">server-issued token</p></grid-item>
              </grid>
              <grid spacing="none" vertical-sizing="hug">
                <grid-item background-color="accent" padding="10pt 12pt"><p align="center"><b>Sign in securely</b></p></grid-item>
              </grid>
            </grid-item>
          </grid>
        </grid-item>
        <grid-item colspan="22">
          <grid direction="vertical" spacing="small" vertical-sizing="fill">
            <grid-item cell-style="subtle">
              <p role="eyebrow">DEVTOOLS · REQUEST</p>
              <h4>POST /login</h4>
              <p font-size="sm">email · password · _csrf</p>
            </grid-item>
            <grid-item background-color="palette-3">
              <p role="eyebrow">SUCCESS</p>
              <h4>303 See Other</h4>
              <p font-size="sm">Location: /dashboard<br/>Set-Cookie: sid=opaque</p>
            </grid-item>
            <grid-item cell-style="subtle">
              <p role="eyebrow">FAILURE</p>
              <h4>401</h4>
              <p font-size="sm">“Email or password is incorrect.”</p>
            </grid-item>
            <grid-item background-color="palette-2">
              <p role="eyebrow">NON-NEGOTIABLE</p>
              <p font-size="sm"><b>Never echo or log the password.</b></p>
            </grid-item>
          </grid>
        </grid-item>
      </grid>
    </grid-item>
  </grid>
</section>