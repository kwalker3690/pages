<section>
  <grid spacing="none">
    <grid-item colspan="34" vertical-align="center">
      <p role="eyebrow">B.Tech Node.js Laboratory · Illustrative teaching prototype</p>
      <h1 font-size="48pt">Inside one secure request</h1>
      <p font-size="lg"><b>Lab challenge:</b> Turn an email and password into an authenticated student session—without storing plaintext passwords or revealing whether an account exists.</p>
      <spacer mode="fixed" size="18pt"></spacer>
      <labels>
        <label variant="outline">form → validation → rate limit → student lookup → bcrypt comparison → session regeneration → dashboard</label>
      </labels>
      <p font-size="sm"><b>Success:</b> The browser receives only an opaque <code>sid</code> cookie; authorization still protects every restricted resource.</p>
    </grid-item>
    <grid-item colspan="26" padding="26pt" background-overlay="tint" background-overlay-intensity="0.18">
      <ai-image background="true" aspect-ratio="portrait" image-style="secure-stack-isometric" prompt="Matte isometric 3D software infrastructure, a single glowing cyan request packet approaching a secure dark-glass student portal framed by a violet trust boundary, a mint-lit session vault visible deeper inside, near-black developer observatory, crisp controlled rim light, no text, no lettering, no people"></ai-image>
      <labels><label variant="outline">ONE REQUEST</label></labels>
      <spacer mode="fill"></spacer>
      <grid spacing="none" vertical-sizing="hug">
        <grid-item background-color="accent" padding="16pt 18pt">
          <p role="eyebrow">REQUEST PACKET</p>
          <h3>POST /login</h3>
          <p font-size="sm">email · password · _csrf</p>
        </grid-item>
      </grid>
    </grid-item>
  </grid>
</section>