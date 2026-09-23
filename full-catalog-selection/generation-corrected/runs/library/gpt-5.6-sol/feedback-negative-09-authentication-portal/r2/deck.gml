<HEAD><style>/* Pipeline — page treatment sheet.
   Structure is the accent (palette-primary); risk is amber (palette-risk); everything else grey.
   Every class below is a named signature move from NOTES.md; paint routes through theme vars only. */

/* ---- Numbered node: outlined cell with a small mono ordinal chip (architecture, data flow, callout keys) ---- */
.node {
  --cell-border-color: var(--palette-primary);
  --cell-border-width: 0.75pt;
  --cell-radius: 0;
  --marker-color: var(--palette-primary);
  --marker-bg: transparent;
  --marker-subtle-bg: transparent;
  --marker-border-color: var(--palette-primary);
  --marker-border-width: 0.75pt;
  --marker-radius: 0;
  --marker-font-weight: 500;
  --marker-inline-size: 20pt;
  --marker-gap: 8pt;
  --grid-divider-color: var(--neutral-border-color);
}

.node .gml-grid-cell__marker {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
}

/* ---- Callout key: the same ordinal chip on a plain ledger, next to a framed figure ---- */
.key {
  --marker-color: var(--palette-primary);
  --marker-bg: transparent;
  --marker-subtle-bg: transparent;
  --marker-border-color: var(--palette-primary);
  --marker-border-width: 0.75pt;
  --marker-radius: 0;
  --marker-font-weight: 500;
  --grid-divider-color: var(--neutral-border-color);
}

.key .gml-grid-cell__marker {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
}

/* ---- Flow connector: an accent arrow glyph in a narrow cell between two nodes (event flow) ---- */
.flow.gml-grid-cell .gml-paragraph {
  font-family: var(--heading-font);
  font-size: calc(19 * var(--type-anchor, 1pt));
  font-weight: 400;
  line-height: 1;
  color: var(--palette-primary);
}

/* ---- Handoff: what crosses a lane seam, in the label voice, aligned under the node it leaves ---- */
.handoff .gml-paragraph[data-role="eyebrow"] {
  letter-spacing: 0.06em;
}

.handoff .hot .gml-paragraph[data-role="eyebrow"],
.handoff .hot.gml-grid-cell .gml-paragraph {
  color: var(--palette-risk);
}

/* ---- Swim lane: stacked lane rows separated by hairlines; lane label pinned left ---- */
.lane {
  --grid-divider-color: var(--neutral-border-color);
  --grid-divider-width: 0.75pt;
  --grid-seam-inset: 0;
}

/* ---- Amber = risk / hot path. One meaning deck-wide. ---- */
.risk.gml-grid-cell {
  --cell-border-color: var(--palette-risk);
  --marker-color: var(--palette-risk);
  --marker-border-color: var(--palette-risk);
  --marker-rule-color: var(--palette-risk);
}

.hot.gml-grid-cell {
  --cell-border-color: var(--palette-risk);
  --marker-color: var(--palette-risk);
  --marker-border-color: var(--palette-risk);
}

.hot .gml-label,
.hot.gml-label {
  --label-fill: var(--palette-risk);
}

/* ---- Hairline ledger: tables and row lists ---- */
.ledger {
  --table-border-width: 0.75pt;
  --table-border-color: var(--neutral-border-color);
  --table-header-color: var(--palette-primary-readable);
  --table-header-weight: 500;
  --table-header-font: var(--heading-font);
  --table-header-bg: transparent;
  --table-stripe-bg: color-mix(in srgb, var(--surface-color) 55%, transparent);
  --table-cell-padding: 7pt 10pt 7pt 4pt;
  --table-radius: 0;
  --grid-divider-color: var(--neutral-border-color);
  --grid-divider-width: 0.75pt;
}

.ledger .gml-table__row[data-header] .gml-table__cell {
  letter-spacing: 0.08em;
  text-transform: uppercase;
  border-bottom: 0.75pt solid var(--palette-primary);
}

.ledger .gml-table__cell p.gml-paragraph {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
}

.ledger .gml-table__row:last-child .gml-table__cell {
  border-bottom: var(--table-border-width) solid var(--table-border-color);
}

.ledger .gml-table__cell.num {
  text-align: end;
}

/* ---- Metric: light-weight mono figure with tabular numerals ---- */
.metric .gml-heading-text,
.metric.gml-heading-text,
.metric .gml-display {
  font-variant-numeric: tabular-nums;
  letter-spacing: -0.02em;
}

/* ---- Callout plate: lifted panel beside a chart or figure holding one figure and one sentence ---- */
.plate.gml-grid-cell {
  --cell-radius: 0;
}

.plate.gml-grid-cell > .gml-grid-cell__content {
  --block-gap: 8pt;
}

/* ---- Ambient data field: image cell on openers, square-cornered, no mat ---- */
.field.gml-grid-cell {
  --cell-radius: 0;
}

.field .gml-figure__img {
  border-radius: 0;
}

/* An image band leading a text cell sits a clear step above its heading, so band, head, and prose read as nested groups */
.gml-grid.field .gml-grid-cell__content {
  --heading-gap-above: 22pt;
}

/* ---- Framed figure: supplied screenshot in a thin structural frame ---- */
.frame.gml-grid-cell {
  --cell-radius: 0;
}

.frame .gml-figure__img {
  border-radius: 0;
}

/* ---- Flag pill: outlined mono label for a flag, version, or gate ---- */
.tick .gml-label,
.tick.gml-label {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
  letter-spacing: 0.02em;
  border-radius: 0;
  text-transform: none;
}

.gate .gml-label,
.gate.gml-label {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
  letter-spacing: 0.02em;
  border-radius: 0;
  text-transform: none;
  --label-fill: var(--palette-risk);
}

/* ---- Legend: a row of small mono keys under a diagram or chart ---- */
.legend .gml-label,
.legend.gml-label {
  font-family: var(--heading-font);
  font-size: calc(10.5 * var(--type-anchor, 1pt));
  letter-spacing: 0.04em;
  border-radius: 0;
}

/* ---- Meta: mono metadata line (owners, status, review date) ---- */
.meta .gml-paragraph,
.meta.gml-paragraph {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
  letter-spacing: 0.02em;
}

/* ---- Mono: a body paragraph carrying values, versions, or latencies in the system voice ---- */
.mono .gml-paragraph,
.mono.gml-paragraph {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
}

/* ---- Card chrome: the mono meta footer rides the native margin bands ---- */
.gml-card__footer {
  font-family: var(--heading-font);
  letter-spacing: 0.04em;
  color: var(--body-color-muted);
}

/* ---- Track: a ruled stage ledger — leading-zero ordinal in the accent over a hairline accent rule ---- */
.track {
  --marker-color: var(--palette-primary);
  --marker-rule-color: var(--palette-primary);
  --marker-rule-thickness: 0.75pt;
  --marker-font-weight: 500;
}

.track .gml-grid-cell__marker {
  font-family: var(--heading-font);
  font-variant-numeric: tabular-nums;
}</style></HEAD>
<section image-layout="blank" id="j4la2Epu4G" card-margin-hidden="true"><grid spacing="none"><grid-item id="K8rX0FpzGc" padding="40pt 24pt 44pt 44pt" colspan="38"><spacer mode="fill"></spacer><p role="eyebrow">NODE.JS LAB · PROPOSED REFERENCE IMPLEMENTATION</p><h1 font-size="28pt">Student Authentication Portal:<br>what happens between “Log in” and “Welcome, Priya”</h1><h3 role="subheading">A live walk through password storage, signed cookies, middleware and the limit of stateless logout.</h3><spacer size="20pt"></spacer><grid divider="0.75pt neutral-border" vertical-sizing="hug" class="meta"><grid-item id="PX_kDHoK_2" colspan="20"><p role="eyebrow">STACK</p><p class="mono">Node.js · Express · MongoDB</p></grid-item><grid-item id="pYE74Gajrk" colspan="20"><p role="eyebrow">SESSION</p><p class="mono">JWT in httpOnly cookie</p></grid-item><grid-item id="yN9TF0FyRj" colspan="20"><p role="eyebrow">DEMO PATH</p><p class="mono">Register · Login · Profile · Logout</p></grid-item></grid></grid-item><grid-item id="WKPhJgrkvo" class="field" padding="0" colspan="22"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/VzU_T2n4U2KHWI4kJWYf_.png" saved-media-id="v4869ij0mgjodq5" source="image.ai-generated" fill="true" image-style="data-field" alt="Abstract data-field illustration of a browser request entering from the upper right as thin parallel pale-cyan line traces, crossing a sparse boundary of tiny node dots and converging into one verified session path near the lower centre, deep ink-blue-black ground, matte flat finish, large plain dark region along the left edge, no glow bloom, no blur, no letters or numbers, no people" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>Frame the demonstration as one proposed design, not supplied application code. The audience will see the credential move from registration through a protected profile request and then reach the unresolved revocation limit.</p></notes></section>
<section image-layout="blank" id="YsdMLNvvFk"><grid spacing="none"><grid-item id="GooGTD8E9n"><h2>A fast hash is a broken hash, which is why this lab starts at the database</h2><p>The naive portal stores the password. The slightly-less-naive one stores SHA-256. Both fail.</p><spacer mode="fill"></spacer><grid spacing="medium"><grid-item id="xevI2UXHLB" class="risk" cell-style="outline" padding="18pt" colspan="20"><p role="eyebrow">PLAINTEXT</p><h3>The breach reveals everything</h3><p>A password must never be a database field, log line or response value.</p></grid-item><grid-item id="FsEg1aW8sB" class="risk" cell-style="outline" padding="18pt" colspan="20"><p role="eyebrow">SHA-256</p><h3>Speed becomes the attack</h3><p>Stolen hashes can be guessed quickly. A unique salt defeats precomputed lookup tables, but it does not slow each guess.</p></grid-item><grid-item id="SIqzx3yzoH" cell-style="outline" padding="18pt" colspan="20"><p role="eyebrow">PASSWORD HASHING</p><h3>Deliberately expensive</h3><p>OWASP prefers Argon2id with at least 19 MiB, 2 iterations and parallelism 1. bcrypt is the legacy option at work factor 10 or more, with a 72-byte limit.</p></grid-item></grid><spacer size="16pt"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="WHJRCmOSkz" class="plate" background-color="surface" padding="14pt 18pt" colspan="44"><p><b>Lab choice:</b> bcrypt at cost 12. It installs cleanly, and its self-describing output makes the database demonstration readable.</p></grid-item><grid-item id="el8Ju7fw7q" vertical-align="center" padding-left="16pt" colspan="16"><p role="caption"><a href="https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html">OWASP Password Storage Cheat Sheet</a></p></grid-item></grid><spacer mode="fill"></spacer></grid-item></grid><notes><p>Stress that salt and slowness solve different problems. Salt defeats reuse of precomputed tables. The work factor makes every fresh guess expensive. bcrypt cost 12 is the lab’s illustrative choice, not OWASP’s first-choice algorithm.</p></notes></section>
<section image-layout="blank" id="9eSQ33ALOq"><grid spacing="none"><grid-item id="SvBZc4z9MT"><h2>Three tiers, one trust boundary, and everything interesting happens at the middle one</h2><p>No application code ships with this deck. This is the proposed reference implementation for the lab build.</p><custom-code>
        <style>
          .auth-arch { font-family: var(--heading-font); color: var(--body-color); }
          .auth-arch svg { width: 100%; height: auto; display: block; }
          .auth-arch .aa-plane { fill: var(--surface-color); stroke: var(--palette-primary); stroke-width: 1; }
          .auth-arch .aa-depth { fill: none; stroke: var(--neutral-border-color); stroke-width: 1; }
          .auth-arch .aa-api { fill: var(--surface-color); stroke: var(--palette-primary); stroke-width: 2; }
          .auth-arch .aa-boundary { fill: none; stroke: var(--palette-risk); stroke-width: 1.5; stroke-dasharray: 6 5; }
          .auth-arch .aa-flow { fill: none; stroke: var(--palette-primary); stroke-width: 1.5; }
          .auth-arch .aa-head { fill: var(--heading-color); font-size: 17px; font-weight: 700; }
          .auth-arch .aa-copy { fill: var(--body-color); font-family: var(--body-font); font-size: 14px; }
          .auth-arch .aa-label { fill: var(--palette-primary); font-size: 11px; letter-spacing: 1.2px; }
          .auth-arch .aa-risk { fill: var(--palette-risk); font-size: 11px; letter-spacing: 1.1px; }
          .auth-arch .aa-chip { fill: var(--card-color); stroke: var(--neutral-border-color); stroke-width: 1; }
          .auth-arch .aa-chip-text { fill: var(--body-color); font-size: 12px; text-anchor: middle; }
        </style>
        <div class="auth-arch">
          <svg width="860" height="286" viewBox="0 0 860 286" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Three-tier student authentication architecture showing the browser, Express API and MongoDB, with a trust boundary between browser and API">
            <defs>
              <marker id="auth-arrow" markerWidth="9" markerHeight="7" refX="8" refY="3.5" orient="auto"><path d="M0,0 L9,3.5 L0,7 Z" fill="var(--palette-primary)"></path></marker>
            </defs>
            <path class="aa-boundary" d="M286 20 L286 258"></path>
            <text class="aa-risk" x="274" y="277" text-anchor="middle">TRUST BOUNDARY</text>

            <polygon class="aa-depth" points="28,78 222,50 250,68 56,96"></polygon>
            <polygon class="aa-plane" points="28,78 222,50 222,174 28,202"></polygon>
            <text class="aa-label" x="48" y="101">CLIENT</text>
            <text class="aa-head" x="48" y="128">Browser</text>
            <text class="aa-copy" x="48" y="151">HTML/CSS + fetch()</text>
            <text class="aa-copy" x="48" y="172">credentials: "include"</text>

            <polygon class="aa-depth" points="330,62 548,31 578,50 360,81"></polygon>
            <polygon class="aa-api" points="330,62 548,31 548,190 330,221"></polygon>
            <text class="aa-label" x="352" y="88">AUTHORITY</text>
            <text class="aa-head" x="352" y="116">Node.js + Express API</text>
            <text class="aa-copy" x="352" y="141">/register · /login</text>
            <text class="aa-copy" x="352" y="163">/profile · /logout</text>
            <text class="aa-copy" x="352" y="185">auth middleware guards identity</text>

            <polygon class="aa-depth" points="650,84 817,60 840,77 673,101"></polygon>
            <polygon class="aa-plane" points="650,84 817,60 817,184 650,208"></polygon>
            <text class="aa-label" x="670" y="108">DATA</text>
            <text class="aa-head" x="670" y="135">MongoDB</text>
            <text class="aa-copy" x="670" y="158">Student model</text>
            <text class="aa-copy" x="670" y="179">rollNo · email · hash</text>

            <line class="aa-flow" x1="229" y1="120" x2="322" y2="108" marker-end="url(#auth-arrow)"></line>
            <text class="aa-label" x="275" y="98" text-anchor="middle">HTTPS + COOKIE</text>
            <line class="aa-flow" x1="552" y1="120" x2="642" y2="110" marker-end="url(#auth-arrow)"></line>
            <text class="aa-label" x="598" y="98" text-anchor="middle">QUERY / STORE</text>

            <rect class="aa-chip" x="321" y="239" width="116" height="28"></rect>
            <text class="aa-chip-text" x="379" y="258">bcryptjs</text>
            <rect class="aa-chip" x="445" y="239" width="116" height="28"></rect>
            <text class="aa-chip-text" x="503" y="258">jsonwebtoken</text>
            <rect class="aa-chip" x="569" y="239" width="116" height="28"></rect>
            <text class="aa-chip-text" x="627" y="258">cookie-parser</text>
            <rect class="aa-chip" x="693" y="239" width="139" height="28"></rect>
            <text class="aa-chip-text" x="762.5" y="258">express-rate-limit</text>
          </svg>
        </div>
      </custom-code><p role="caption">The client holds no authority and cannot read the token. The plaintext password is never stored, logged or returned.</p></grid-item></grid><notes><p>The trust boundary sits before the API. The browser supplies input and automatically returns the cookie, but all validation, identity and authorization decisions occur in Express. MongoDB receives only the bcrypt hash.</p></notes></section>
<section image-layout="blank" id="TmWG2k3Ooi"><grid spacing="none"><grid-item id="c-yBRZxFKG"><h2>Registration: the stored string carries its own salt, cost, and algorithm</h2><p><code>POST /api/auth/register</code>. Validate, reject duplicates, hash, store. Then open the database and read the hash aloud.</p><grid spacing="medium"><grid-item id="oSV6ER-3yr" cell-style="outline" padding="16pt" colspan="30"><p role="eyebrow">REQUEST → API</p><h4>Hash before persistence</h4><p font-size="sm" class="mono"><code>const hash = await bcrypt.hash(req.body.password, 12)</code></p><p font-size="sm" class="mono"><code>await Student.create({ rollNo, email, hash })</code></p></grid-item><grid-item id="MHCPByZGs9" class="plate" background-color="surface" padding="16pt" border="sm solid accent" colspan="30"><p role="eyebrow">RESPONSE · 201</p><h4>Return identity, never the hash</h4><p>The body contains the student’s name and roll number. A response body is another place sensitive data can leak from.</p></grid-item></grid><spacer size="16pt"></spacer><p role="eyebrow">ONE 60-CHARACTER DATABASE FIELD</p><grid spacing="none"><grid-item id="h9hbqGU4du" background-color="palette-1" padding="12pt" colspan="8"><h4><code>$2b$</code></h4><p role="caption">variant</p></grid-item><grid-item id="gr-kWMmq2N" background-color="surface" padding="12pt" border="sm solid accent" colspan="8"><h4><code>12$</code></h4><p role="caption">cost</p></grid-item><grid-item id="xpuxoj4Hpp" background-color="surface" padding="12pt" border="sm solid neutral-border" colspan="20"><h4><code>Xy7…</code></h4><p role="caption">next 22 characters · salt</p></grid-item><grid-item id="ddgXg5_yFl" background-color="surface" padding="12pt" border="sm solid neutral-border" colspan="24"><h4><code>…</code></h4><p role="caption">remaining 31 characters · digest</p></grid-item></grid><spacer size="12pt"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="2qYzlRJS9a" colspan="44"><p><b>Cost 12 means 2^12 key-setup rounds.</b> The cost is logarithmic, so increasing it by one doubles the work. No separate salt column is required.</p></grid-item><grid-item id="oDDwHYRBWJ" padding-left="16pt" colspan="16"><p role="caption"><a href="https://passlib.readthedocs.io/en/stable/lib/passlib.hash.bcrypt.html">Passlib bcrypt format reference</a></p></grid-item></grid></grid-item></grid><notes><p>The live demonstration should pause on the stored value. Point out the variant, cost, embedded salt and digest. Two students choosing the same password still receive different stored strings because bcrypt generates a unique salt.</p></notes></section>
<section image-layout="blank" id="uWJhGIXT_y"><grid spacing="none"><grid-item id="tjrhET0C3g"><h2>Login: compare, sign, and hand the token to the browser as a cookie it cannot read</h2><p><code>bcrypt.compare</code> reads the salt from the stored string and repeats the hash. A match allows the API to sign a token.</p><grid spacing="small"><grid-item id="xGQ9mun6yr" cell-style="outline" padding="14pt" colspan="18"><p role="eyebrow">REQUEST</p><h4><code>POST /api/auth/login</code></h4><p>Email and password arrive over HTTPS. Unknown email and wrong password follow the same failure path.</p></grid-item><grid-item id="UT5ebYXoVk" class="plate" background-color="surface" padding="14pt" border="sm solid accent" colspan="28"><p role="eyebrow">SUCCESS · 200</p><p font-size="11pt" class="mono"><code>const token = jwt.sign({ sub: student._id, role: "student" }, process.env.JWT_SECRET, { expiresIn: "15m" })</code></p><p font-size="11pt" class="mono"><code>Set-Cookie: token=&lt;header&gt;.&lt;payload&gt;.&lt;signature&gt;; Max-Age=900; Path=/; HttpOnly; Secure; SameSite=Strict</code></p></grid-item><grid-item id="KI301YMvoI" class="risk" cell-style="outline" padding="14pt" colspan="14"><p role="eyebrow">FAILURE · 401</p><h4>Invalid credentials</h4><p>One message prevents account enumeration.</p></grid-item></grid><spacer size="14pt"></spacer><p role="eyebrow">COMPACT JWT · EXACTLY TWO DOTS, THREE PARTS</p><grid spacing="none"><grid-item id="2GF3bSZC1D" background-color="surface" padding="12pt" border="sm solid accent" colspan="18"><h4>header</h4><p role="caption">algorithm + token type</p></grid-item><grid-item id="px4OT9rbIT" class="flow" align="center" vertical-align="center" colspan="2"><p>.</p></grid-item><grid-item id="4nn0lIsHMG" background-color="surface" padding="12pt" border="sm solid neutral-border" colspan="18"><h4>payload</h4><p role="caption"><code>sub</code> · <code>role</code> · <code>exp</code></p></grid-item><grid-item id="eduqcUYQyw" class="flow" align="center" vertical-align="center" colspan="2"><p>.</p></grid-item><grid-item id="mXTXb1F2d-" background-color="surface" padding="12pt" border="sm solid neutral-border" colspan="20"><h4>signature</h4><p role="caption">detects any edit</p></grid-item></grid><spacer size="10pt"></spacer><p>JWT content is encoded and signed, not encrypted. The payload is readable, so claims contain no marks, fees or personal data. Drive <code>secure: true</code> from the environment because it requires HTTPS.</p><p role="caption"><a href="https://auth0.com/docs/secure/tokens/json-web-tokens/json-web-token-structure">Auth0: JSON Web Token structure</a></p></grid-item></grid><notes><p>Copy the cookie value from DevTools into jwt.io during the demonstration. The payload appears as plain JSON. Then explain that the signature, rather than secrecy, proves the server minted the token and that its claims were not edited.</p></notes></section>
<section image-layout="blank" id="pKkbE00qaC"><grid spacing="none"><grid-item id="dQdNXD0rIC"><h2>Authorization lives in 12 lines of middleware</h2><p><code>GET /api/student/profile</code> never sees an unverified request. The guard either attaches an identity or ends the request.</p><custom-code><style>.auth-flow { font-family: var(--heading-font); }.auth-flow svg { width: 100%; height: auto; display: block; }.auth-flow .af-node { fill: var(--surface-color); stroke: var(--palette-primary); stroke-width: 1; }.auth-flow .af-gate { fill: var(--surface-color); stroke: var(--palette-primary); stroke-width: 2; }.auth-flow .af-risk { fill: var(--card-color); stroke: var(--palette-risk); stroke-width: 1.5; }.auth-flow .af-line { fill: none; stroke: var(--palette-primary); stroke-width: 1.5; }.auth-flow .af-branch { fill: none; stroke: var(--palette-risk); stroke-width: 1.2; stroke-dasharray: 5 4; }.auth-flow .af-head { fill: var(--heading-color); font-size: 15px; font-weight: 700; text-anchor: middle; }.auth-flow .af-copy { fill: var(--body-color); font-family: var(--body-font); font-size: 12px; text-anchor: middle; }.auth-flow .af-risk-text { fill: var(--palette-risk); font-size: 14px; font-weight: 700; text-anchor: middle; }.auth-flow .af-shield { fill: none; stroke: var(--palette-primary); stroke-width: 2; }</style><div class="auth-flow"><svg width="860" height="226" viewBox="0 0 860 226" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Authorization flow from a request cookie through cookie-parser and JWT verification to a protected handler, with 401 and 403 branches"><defs><marker id="af-arrow" markerWidth="9" markerHeight="7" refX="8" refY="3.5" orient="auto"><path d="M0,0 L9,3.5 L0,7 Z" fill="var(--palette-primary)"></path></marker><marker id="af-arrow-risk" markerWidth="9" markerHeight="7" refX="8" refY="3.5" orient="auto"><path d="M0,0 L9,3.5 L0,7 Z" fill="var(--palette-risk)"></path></marker></defs><rect class="af-node" x="18" y="34" width="154" height="74"></rect><text class="af-head" x="95" y="63">Request + cookie</text><text class="af-copy" x="95" y="86">req.cookies.token</text><rect class="af-node" x="218" y="34" width="154" height="74"></rect><text class="af-head" x="295" y="63">cookie-parser</text><text class="af-copy" x="295" y="86">server-side read</text><rect class="af-gate" x="418" y="24" width="154" height="94"></rect><path class="af-shield" d="M495 39 L516 47 L513 70 C510 83 502 91 495 95 C488 91 480 83 477 70 L474 47 Z"></path><path class="af-shield" d="M485 66 L492 73 L505 57"></path><text class="af-head" x="495" y="108">verify gate</text><rect class="af-node" x="618" y="34" width="154" height="74"></rect><text class="af-head" x="695" y="63">Protected handler</text><text class="af-copy" x="695" y="86">identity from req.user</text><line class="af-line" x1="172" y1="71" x2="210" y2="71" marker-end="url(#af-arrow)"></line><line class="af-line" x1="372" y1="71" x2="410" y2="71" marker-end="url(#af-arrow)"></line><line class="af-line" x1="572" y1="71" x2="610" y2="71" marker-end="url(#af-arrow)"></line><rect class="af-risk" x="118" y="164" width="168" height="56"></rect><text class="af-risk-text" x="202" y="187">401</text><text class="af-copy" x="202" y="207">missing · expired · tampered</text><path class="af-branch" d="M95 108 V136 H202 V156" marker-end="url(#af-arrow-risk)"></path><path class="af-branch" d="M495 118 V136 H202"></path><rect class="af-risk" x="574" y="164" width="202" height="56"></rect><text class="af-risk-text" x="675" y="187">403</text><text class="af-copy" x="675" y="207">valid identity · insufficient role</text><path class="af-branch" d="M695 108 V156" marker-end="url(#af-arrow-risk)"></path></svg></div></custom-code><grid spacing="medium" vertical-sizing="hug"><grid-item id="toB1br9Pqf" class="plate" background-color="surface" padding="12pt 16pt" colspan="34"><p font-size="sm" class="mono"><code>const payload = jwt.verify(token, process.env.JWT_SECRET, { algorithms: ["HS256"] })</code></p><p font-size="sm" class="mono"><code>req.user = payload; next()</code></p></grid-item><grid-item id="NuzASBozWu" class="risk" cell-style="outline" padding="12pt 16pt" colspan="26"><p>The browser sends the cookie automatically. State-changing routes therefore need a CSRF token. <code>SameSite=strict</code> is defence in depth, not a replacement.</p></grid-item></grid><p role="caption">Live test: edit one cookie character in DevTools and repeat the request. <a href="https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html">OWASP CSRF Prevention Cheat Sheet</a></p></grid-item></grid><notes><p>Walk the path from left to right. Missing, expired and tampered credentials all stop with 401. A verified student reaching a faculty-only route is known but forbidden, so that case is 403. The request body never supplies identity.</p></notes></section>
<section image-layout="blank" id="JCFvKTpQp5"><grid spacing="none"><grid-item id="ieYeN7tD31"><h2>Logout, expiry, and the one limit we cannot design away</h2><p>Four decisions are worth defending in the viva. The final gap stays open.</p><grid spacing="small"><grid-item id="QPNO2bqrTr" cell-style="outline" padding="14pt 16pt" colspan="30"><p role="eyebrow">COOKIE, NOT LOCALSTORAGE</p><p>Injected script can read localStorage. An <code>httpOnly</code> cookie contains that exposure, though XSS still defeats CSRF defences.</p></grid-item><grid-item id="8ADjMVY5gt" cell-style="outline" padding="14pt 16pt" colspan="30"><p role="eyebrow">SECRET MANAGEMENT</p><p><code>JWT_SECRET</code> lives in <code>.env</code>, which is gitignored. Commit only <code>.env.example</code>.</p></grid-item><grid-item id="WQBslMmFAP" cell-style="outline" padding="14pt 16pt" colspan="30"><p role="eyebrow">LOGIN DOOR</p><p><code>express-rate-limit</code> caps attempts per IP inside a fixed <code>windowMs</code> and returns <code>429</code> past the limit.</p></grid-item><grid-item id="T1ON8M7Vs4" cell-style="outline" padding="14pt 16pt" colspan="30"><p role="eyebrow">LOGOUT</p><p><code>POST /api/auth/logout</code> calls <code>res.clearCookie("token")</code> with the same attributes. This removes the browser’s copy.</p></grid-item></grid><spacer size="16pt"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="XiS86C7aGf" background-color="palette-2" vertical-align="center" padding="16pt" colspan="14"><p role="eyebrow">HONEST LIMIT</p><display size="md" font-size="30pt" class="metric">15 min</display></grid-item><grid-item id="YKCdmeOFuw" class="plate" background-color="surface" padding="16pt 20pt" border="sm solid palette-2" colspan="46"><h3>A copied token still verifies until <code>exp</code></h3><p>Logout cannot revoke a copy taken beforehand. Closing the remaining window needs short-lived access tokens with refresh rotation, or a <code>jti</code> denylist checked on every request. Either choice reintroduces server-side state.</p></grid-item></grid><p role="caption"><a href="https://github.com/express-rate-limit/express-rate-limit/blob/main/readme.md">express-rate-limit documentation</a> · <a href="https://owasp.org/www-community/SameSite">OWASP SameSite guidance</a></p></grid-item></grid><notes><p>End on the limit rather than smoothing it over. Clearing the cookie is effective for the browser in front of us, but it cannot invalidate another copy. Refresh rotation or a denylist can close the window only by adding state.</p></notes></section>