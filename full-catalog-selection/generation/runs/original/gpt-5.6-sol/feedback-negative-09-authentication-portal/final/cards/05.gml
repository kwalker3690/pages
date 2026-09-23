<section>
  <grid spacing="none">
    <grid-item>
      <labels><label variant="solid">REQUEST · POST /login → sid</label><label variant="outline">SERVER-SIDE SESSION</label></labels>
      <h2>A session is born—without exposing identity</h2>
      <p>The identifier changes at the authentication boundary. The browser keeps only an opaque cookie; identity and role remain in the PostgreSQL-backed session store.</p>
      <grid recipe="process-steps" spacing="medium" vertical-sizing="hug">
        <grid-item colspan="12">
          <h4>Anonymous state</h4>
          <p font-size="sm">The login page may already have an anonymous session for its CSRF token.</p>
        </grid-item>
        <grid-item colspan="12">
          <h4>Regenerate</h4>
          <p font-size="sm">On success, <code>regenerate()</code> replaces the previous identifier to reduce session-fixation risk.</p>
        </grid-item>
        <grid-item colspan="12">
          <h4>Store identity</h4>
          <p font-size="sm"><code>sid</code> maps to student id and role. No password is stored.</p>
        </grid-item>
        <grid-item colspan="12">
          <h4>Set cookie</h4>
          <p font-size="sm"><code>sid=opaque</code><br/>HttpOnly · Secure · SameSite=Lax</p>
        </grid-item>
        <grid-item colspan="12">
          <h4>Resolve again</h4>
          <p font-size="sm"><code>GET /dashboard</code> sends <code>sid</code>; <code>requireAuth</code> resolves server-side state.</p>
        </grid-item>
      </grid>
      <grid spacing="medium" vertical-sizing="hug">
        <grid-item colspan="30" cell-style="subtle">
          <p role="eyebrow">BROWSER STATE</p>
          <h4>Opaque sid only</h4>
        </grid-item>
        <grid-item colspan="30" background-color="palette-3">
          <p role="eyebrow">SERVER STATE</p>
          <h4>student id · role · authenticated session</h4>
        </grid-item>
      </grid>
      <p role="caption">Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html">OWASP Session Management Cheat Sheet</a>.</p>
    </grid-item>
  </grid>
</section>