<section>
  <grid spacing="none">
    <grid-item>
      <labels><label variant="solid">REQUEST · POST /login</label><label variant="outline">ILLUSTRATIVE TRACE</label></labels>
      <h2>One request, seven observable hops</h2>
      <p>The cyan packet stays visible across the stack; violet nodes mark trust boundaries, and mint marks the verified outcome.</p>
      <freeform-block w="840" h="300">
        <box type="image" x="0" y="0" w="840" h="300" sizing="fixed">
          <ai-image aspect-ratio="landscape" image-style="secure-stack-isometric" prompt="Wide matte isometric 3D software architecture landscape with dark graphite server blocks, translucent middleware gates, a database cylinder and a session vault receding in depth, subtle cyan path lighting and violet boundary light, generous dark central field for editable overlays, no text, no arrows, no lettering, no people"></ai-image>
        </box>
        <box type="content" x="0" y="0" w="840" h="300" sizing="fixed" background-color="rgba(5,10,19,0.62)" locked="true"></box>

        <shape preset="rightArrow" x="116" y="143" w="11" h="18" fill="accent" stroke-width="0"></shape>
        <shape preset="rightArrow" x="235" y="143" w="11" h="18" fill="accent" stroke-width="0"></shape>
        <shape preset="rightArrow" x="354" y="143" w="11" h="18" fill="accent" stroke-width="0"></shape>
        <shape preset="rightArrow" x="473" y="143" w="11" h="18" fill="accent" stroke-width="0"></shape>
        <shape preset="rightArrow" x="592" y="143" w="11" h="18" fill="accent" stroke-width="0"></shape>
        <shape preset="rightArrow" x="711" y="143" w="11" h="18" fill="accent" stroke-width="0"></shape>

        <box type="content" x="8" y="93" w="108" h="116" sizing="fixed" background-color="surface" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">BROWSER</p>
          <h4 font-size="13pt">HTTPS form</h4>
          <p font-size="10pt">Submit email, password, and _csrf.</p>
        </box>
        <box type="content" x="127" y="93" w="108" h="116" sizing="fixed" background-color="palette-2" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">EDGE GATE</p>
          <h4 font-size="13pt">Express</h4>
          <p font-size="10pt">Parse input; rate-limit and CSRF middleware run.</p>
        </box>
        <box type="content" x="246" y="93" w="108" h="116" sizing="fixed" background-color="surface" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">ROUTE</p>
          <h4 font-size="13pt">Validate</h4>
          <p font-size="10pt">Check shape and normalize the email.</p>
        </box>
        <box type="content" x="365" y="93" w="108" h="116" sizing="fixed" background-color="palette-2" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">DATA BOUNDARY</p>
          <h4 font-size="13pt">Student lookup</h4>
          <p font-size="10pt">Run a parameterized query.</p>
        </box>
        <box type="content" x="484" y="93" w="108" h="116" sizing="fixed" background-color="surface" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">DECISION</p>
          <h4 font-size="13pt">bcrypt</h4>
          <p font-size="10pt">Compare password with password_hash.</p>
        </box>
        <box type="content" x="603" y="93" w="108" h="116" sizing="fixed" background-color="palette-2" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">SESSION BOUNDARY</p>
          <h4 font-size="13pt">Regenerate</h4>
          <p font-size="10pt">Save server-side session state.</p>
        </box>
        <box type="content" x="722" y="93" w="108" h="116" sizing="fixed" background-color="palette-3" style="padding: 10pt;">
          <p role="eyebrow" font-size="9pt">RESPONSE</p>
          <h4 font-size="13pt">303 + sid</h4>
          <p font-size="10pt">Redirect to /dashboard.</p>
        </box>
      </freeform-block>
      <p role="caption">The browser submits a password once; it never receives the student record, password_hash, role-bearing token, or server session state.</p>
    </grid-item>
  </grid>
</section>