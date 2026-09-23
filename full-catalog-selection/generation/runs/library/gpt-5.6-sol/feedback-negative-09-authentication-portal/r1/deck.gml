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
<section image-layout="blank" id="ZolFt6k7uC" card-margin-hidden="true"><grid spacing="none"><grid-item id="Fwb_5hCmXF" padding="40pt 24pt 44pt 44pt" colspan="38"><spacer mode="fill"></spacer><p role="eyebrow">B.TECH NODE.JS LAB · ILLUSTRATIVE REQUEST</p><h1 font-size="34pt">Inside one secure request</h1><h3 role="subheading"><b>Lab challenge:</b> Turn an email and password into an authenticated student session without storing plaintext passwords or revealing whether an account exists.</h3><hr color="accent" thickness="sm"><spacer size="20pt"></spacer><grid divider="0.75pt neutral-border" vertical-sizing="hug" class="meta"><grid-item id="E-6eLkV4Nu" colspan="31"><p role="eyebrow">Trace</p><p class="mono">form → validation → rate limit → student lookup → bcrypt comparison → session regeneration → dashboard</p></grid-item><grid-item id="l3jGs92zQE" colspan="29"><p role="eyebrow">Success</p><p>The browser receives only an opaque <code>sid</code> cookie; authorization still protects every restricted resource.</p></grid-item></grid></grid-item><grid-item id="JPWfPGU9Z_" class="field" padding="0" colspan="22"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/1i-PnynxwHjRIv9lTWc_B.png" saved-media-id="nxlo2jr7dfi0698" source="image.ai-generated" fill="true" image-style="data-field" alt="Abstract data-field illustration of one pale-cyan request trace entering from the upper-right edge, passing through a sparse chain of tiny node dots and folding into a protected loop near the lower-right, thin clearly visible hairline strokes on a deep ink-blue-black ground, the left half plain dark ground, matte flat finish, no glow bloom or blur, quiet and non-literal, no letters or numbers, no people" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"></grid-item></grid><notes><p>Follow one illustrative login from the browser to the dashboard. The central constraint is that the password never becomes stored application data, the failure response never confirms account existence, and the browser receives only an opaque session identifier.</p></notes></section>
<section image-layout="blank" id="e8R7ZV67pQ"><grid spacing="none"><grid-item id="zt6LAah4az"><h2>Browser to POST /login</h2><grid spacing="medium" vertical-sizing="fill"><grid-item id="23EdbrDjRn" background-color="surface" padding="18pt 20pt" border="sm solid neutral-border" colspan="34"><grid spacing="none" vertical-sizing="hug"><grid-item id="XJ8m-FQgCy" colspan="42"><p role="eyebrow">ILLUSTRATIVE BROWSER</p></grid-item><grid-item id="j3shqb3ZCO" colspan="18"><p role="caption" align="right" class="mono">https://portal.campus.example/login</p></grid-item></grid><hr color="neutral-border" thickness="sm"><h3>Student sign in</h3><p>Asha enters her campus email and a masked password. The form also carries a server-issued CSRF token.</p><grid direction="vertical" spacing="small" vertical-sizing="fill"><grid-item id="Kv4ZMgAPoN" cell-style="outline" padding="10pt 12pt"><p role="eyebrow">Email</p><p class="mono">asha@campus.example</p></grid-item><grid-item id="ETeqNaM4qN" cell-style="outline" padding="10pt 12pt"><p role="eyebrow">Password</p><p class="mono">••••••••••••</p></grid-item><grid-item id="NBXa4t028i" cell-style="outline" padding="10pt 12pt"><p role="eyebrow">Hidden form field</p><p class="mono">_csrf = <code>server-issued token</code></p></grid-item><grid-item id="9yHCuk6RUK" background-color="accent" vertical-align="center" padding="10pt 12pt"><h4 align="center">Sign in securely</h4></grid-item></grid></grid-item><grid-item id="arAQ92tXnG" colspan="26"><p role="eyebrow">DEVTOOLS · NETWORK</p><grid direction="vertical" spacing="small" vertical-sizing="fill"><grid-item id="AkatyZy33C" cell-style="outline" padding="12pt 14pt"><labels class="tick"><label variant="outline">REQUEST</label></labels><h3>POST /login</h3><p font-size="sm" class="mono">email · password · _csrf</p></grid-item><grid-item id="cjULhQwwAp" padding="12pt 14pt" border="sm solid #6EE7B7"><p role="eyebrow"><span text-color="#6EE7B7">SUCCESS</span></p><h3>303 See Other</h3><p class="mono">Location: /dashboard</p></grid-item><grid-item id="h3NQvjZwbv" padding="12pt 14pt" border="sm solid palette-2"><p role="eyebrow"><span text-color="palette-2">FAILURE</span></p><h3>401 Unauthorized</h3><p>“Email or password is incorrect.”</p></grid-item></grid><aside variant="warning"><p><b>Rule:</b> Never echo or log the password.</p></aside></grid-item></grid></grid-item></grid><notes><p>Asha is illustrative. Point out the three submitted fields, then compare the two outcomes: a successful POST redirects with 303, while every credential failure returns the same 401 message. The password is never echoed or logged.</p></notes></section>
<section image-layout="blank" id="I7KOOn9hyK"><grid spacing="none"><grid-item id="sWWMraWeD-"><h2>One request, seven observable hops</h2><p role="caption"><span text-color="#9B8AFB">TRUST BOUNDARIES</span> · browser ↔ Express application ↔ PostgreSQL-backed state</p><spacer mode="fill"></spacer><grid marker="number" marker-rule="true" marker-position="above" marker-align="start" marker-numbering-format="decimal-leading-zero" spacing="small" vertical-sizing="hug" class="track" style="--marker-gap: 0.6em;"><grid-item id="fAO2Sa0X9x" colspan="9"><h4>Submit</h4><p font-size="12.5pt" role="caption" class="mono">Browser sends the form over HTTPS.</p></grid-item><grid-item id="9oZU5CVoql" colspan="9"><h4>Screen</h4><p font-size="12.5pt" role="caption" class="mono">Express parses input; rate-limit and CSRF middleware run.</p></grid-item><grid-item id="JRRaSUtuyA" colspan="8"><h4>Normalize</h4><p font-size="12.5pt" role="caption" class="mono">The route validates and normalizes the email.</p></grid-item><grid-item id="x7iz4DOZi2" colspan="9"><h4>Lookup</h4><p font-size="12.5pt" role="caption" class="mono">A parameterized query returns the student record.</p></grid-item><grid-item id="B4cG0KNInt" colspan="8"><h4>Compare</h4><p font-size="12.5pt" role="caption" class="mono">bcrypt checks the password against <code>password_hash</code>.</p></grid-item><grid-item id="_jzYNGHUze" border="sm solid #6EE7B7" border-sides="top" colspan="9"><h4>Regenerate</h4><p font-size="12.5pt" role="caption" class="mono">Express replaces, writes and saves the server session.</p></grid-item><grid-item id="BASaHalgRW" border="sm solid #6EE7B7" border-sides="top" colspan="8"><h4>Redirect</h4><p font-size="12.5pt" role="caption" class="mono">303 sets <code>sid</code> and redirects to the dashboard.</p></grid-item></grid><spacer mode="fill"></spacer><p>The same request packet crosses each boundary once; the password stops at comparison, while only the opaque <code>sid</code> returns to the browser.</p></grid-item></grid><notes><p>Walk left to right. Middleware runs before the route, the database lookup is parameterized, and bcrypt compares rather than decrypts. Only after every check succeeds does the application regenerate and save the session, set sid, and redirect.</p></notes></section>
<section image-layout="blank" id="9nUxL1AcLR"><grid spacing="large"><grid-item id="FkhGs_9YnE" colspan="43"><h2>The authentication decision</h2><p role="eyebrow">ILLUSTRATIVE CODE · CONCISE LABORATORY EXAMPLE</p><pre language="javascript"><code>router.post('/login', loginLimiter, csrfProtection,
  async (req, res, next) =&gt; {
    const parsed = loginSchema.safeParse(req.body);
    if (!parsed.success)
      return res.status(400).render('login');

    const user =
      await students.findByEmail(parsed.data.email);
    const hash =
      user?.password_hash ?? DUMMY_BCRYPT_HASH;
    const ok =
      await bcrypt.compare(parsed.data.password, hash);

    if (!user || !ok || user.status !== 'active') {
      return res.status(401).render('login', {
        error: 'Email or password is incorrect.'
      });
    }

    req.session.regenerate(err =&gt; {
      if (err) return next(err);
      req.session.user = { id: user.id, role: user.role };
      req.session.save(err =&gt;
        err ? next(err)
            : res.redirect(303, '/dashboard'));
    });
  });</code></pre><p role="caption">Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication Cheat Sheet</a></p></grid-item><grid-item id="7o_WDdT0kL" colspan="17"><p role="eyebrow">DECISION PATH</p><grid divider="0.75pt neutral-border" marker="number" marker-style="outline" marker-position="inline" direction="vertical" vertical-sizing="fill" class="key ledger" style="--marker-inline-size: 20pt; --marker-gap: 10pt;"><grid-item id="zGd9-GMJjt" vertical-align="center"><h4>Validate first</h4><p>Malformed input returns 400 before lookup.</p></grid-item><grid-item id="QDhU6SgS3s" vertical-align="center"><h4>Always compare</h4><p>A dummy hash avoids a visibly different missing-user path.</p></grid-item><grid-item id="8V9-1KU08t" class="risk" vertical-align="center"><h4>Reject generically</h4><p>Missing, incorrect or inactive all return the same 401 message.</p></grid-item><grid-item id="Nhwxu1ZfPn" vertical-align="center"><h4>Commit the session</h4><p><code>regenerate()</code>, write minimal identity, save, then 303.</p></grid-item></grid><labels class="gate"><label variant="outline" text-color="palette-2">not production-complete</label></labels></grid-item></grid><notes><p>This is deliberately concise laboratory code, not a production-complete route. The important lines are the dummy hash, one generic failure branch, session regeneration, minimal server-side identity, explicit save, and the 303 redirect.</p></notes></section>
<section image-layout="blank" id="Om_79jqKRu"><grid spacing="none"><grid-item id="pA8YpDKvFL"><h2>A session is born—without exposing identity</h2><p role="caption"><span text-color="#9B8AFB">TRUST BOUNDARIES</span> · browser state remains opaque; identity is resolved inside the application.</p><spacer mode="fill"></spacer><grid marker="number" marker-size="small" marker-style="outline" marker-position="inline" marker-align="start" spacing="none" vertical-sizing="hug" class="node"><grid-item id="g-zQvGappi" vertical-align="center" cell-style="outline" padding="12pt 10pt" colspan="12"><h4>Anonymous session</h4><p role="caption">The login page may already hold a session for its CSRF token.</p></grid-item><grid-item id="LOQxEMFHSo" class="flow" marker="none" align="center" vertical-align="center" colspan="2"><p>→</p></grid-item><grid-item id="94mRoQSGGk" vertical-align="center" cell-style="outline" padding="12pt 10pt" colspan="14"><h4>regenerate()</h4><p role="caption">Success replaces the previous identifier, reducing session-fixation risk.</p></grid-item><grid-item id="_Zbh0yHNLe" class="flow" marker="none" align="center" vertical-align="center" colspan="2"><p>→</p></grid-item><grid-item id="WLtZgCw8I-" vertical-align="center" cell-style="outline" padding="12pt 10pt" colspan="14"><h4>Server store</h4><p role="caption"><code>sid</code> maps to student id and role in PostgreSQL-backed state; no password is stored.</p></grid-item><grid-item id="Jly75DxCt4" class="flow" marker="none" align="center" vertical-align="center" colspan="2"><p>→</p></grid-item><grid-item id="gMSKhN2r1X" vertical-align="center" cell-style="outline" padding="12pt 10pt" border="sm solid #6EE7B7" colspan="14"><h4>Browser cookie</h4><p role="caption"><code>sid=opaque</code> · HttpOnly · Secure · SameSite=Lax</p></grid-item></grid><spacer mode="fill"></spacer><grid spacing="none" vertical-sizing="hug"><grid-item id="P_z5I-oR8a" cell-style="outline" padding="10pt 12pt" colspan="12"><p role="eyebrow">NEXT REQUEST</p><h4>GET /dashboard</h4></grid-item><grid-item id="W0eve8DnfK" class="flow" align="center" vertical-align="center" colspan="3"><p>→</p></grid-item><grid-item id="EL3-vvkVeJ" cell-style="outline" padding="10pt 12pt" colspan="12"><p role="eyebrow">COOKIE</p><h4>Browser sends sid</h4></grid-item><grid-item id="ljTZh5IZZm" class="flow" align="center" vertical-align="center" colspan="3"><p>→</p></grid-item><grid-item id="T6N6QW1rld" cell-style="outline" padding="10pt 12pt" colspan="13"><p role="eyebrow">MIDDLEWARE</p><h4>requireAuth resolves state</h4></grid-item><grid-item id="UMbB_4vAan" class="flow" align="center" vertical-align="center" colspan="3"><p>→</p></grid-item><grid-item id="H8voE3uoBh" padding="10pt 12pt" border="sm solid #6EE7B7" colspan="14"><p role="eyebrow"><span text-color="#6EE7B7">VERIFIED</span></p><h4>Student dashboard</h4></grid-item></grid><p role="caption">Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html">OWASP Session Management Cheat Sheet</a></p></grid-item></grid><notes><p>The anonymous session may exist only to support CSRF. Authentication regenerates its identifier, stores only the student id and role on the server, and returns an opaque cookie. On the next request, requireAuth resolves that server-side state before the dashboard is shown.</p></notes></section>
<section image-layout="blank" id="Rt1zL4NOmw"><grid spacing="none"><grid-item id="mpLWVs_6Be"><h2>Controls mapped to concrete failures</h2><table col-widths="[20,43,37]" header-row="true" borders="rows" striped="true" class="ledger"><tbody><tr><td><p>Threat</p></td><td><p>Control in this request</p></td><td><p>Concrete failure or rejection</p></td></tr><tr><td><p><b>Credential guessing</b></p></td><td><p>Rate-limit login attempts and return one generic failure.</p></td><td><p>Guesses are slowed; 401 does not reveal whether the account exists.</p></td></tr><tr><td><p><b>Injection</b></p></td><td><p>Validate input and use parameterized database queries.</p></td><td><p>Malformed input is rejected; submitted text is not executable SQL.</p></td></tr><tr><td><p><b>Session fixation</b></p></td><td><p>Run <code>regenerate()</code> after authentication.</p></td><td><p>The pre-authentication identifier does not become the authenticated <code>sid</code>.</p></td></tr><tr><td><p><b>Cookie theft</b></p></td><td><p>Use HTTPS with HttpOnly, Secure and SameSite=Lax.</p></td><td><p>The cookie is constrained in transit, script access and cross-site sending.</p></td></tr><tr><td><p><b>CSRF</b></p></td><td><p>Verify a server-issued token on login and <code>POST /logout</code>.</p></td><td><p>A missing or invalid token rejects the state-changing request.</p></td></tr><tr><td><p><b>Broken access control</b></p></td><td><p><code>requireRole('admin')</code> protects the restricted route.</p></td><td><p>An authenticated student opening <code>/admin</code> receives 403.</p></td></tr><tr><td><p><b>Logout replay</b></p></td><td><p>Destroy server state and clear <code>sid</code>.</p></td><td><p>Replaying the old cookie no longer resolves an authenticated session.</p></td></tr></tbody></table><spacer mode="fill"></spacer><p><b>Authenticated is not authorized:</b> every restricted resource still enforces its own role boundary.</p><p role="caption">Sources: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication</a> · <a href="https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html">OWASP Session Management</a></p></grid-item></grid><notes><p>Read this as a failure map, not a checklist of buzzwords. Each control has a visible rejection condition that can be demonstrated: generic 401, validation failure, replaced sid, CSRF rejection, 403 for the student role, and an invalid old cookie after logout.</p></notes></section>
<section image-layout="blank" id="AbTUjdqCFM"><grid spacing="none"><grid-item id="nha7nvNloq" colspan="40"><h2>Prove it live, then break it safely</h2><p role="eyebrow">EXPECTED EVIDENCE · ILLUSTRATIVE DEMO</p><grid divider="0.75pt neutral-border" marker="symbol" marker-label="✓" marker-style="outline" marker-position="inline" direction="vertical" vertical-sizing="fill" class="ledger" style="--marker-inline-size: 22pt; --marker-gap: 10pt; --marker-color: #6EE7B7; --marker-border-color: #6EE7B7;"><grid-item id="HDCF8u5Oev" vertical-align="center"><h4>Wrong credentials</h4><p>The same 401 message appears and no authenticated session is created.</p></grid-item><grid-item id="Z_jV_5TG6f" vertical-align="center"><h4>Valid credentials</h4><p>A 303 response carries a regenerated <code>sid</code> to the student dashboard.</p></grid-item><grid-item id="iz2qP6FVZn" vertical-align="center"><h4>Refresh GET /dashboard</h4><p><code>requireAuth</code> resolves the server-side session and the page still succeeds.</p></grid-item><grid-item id="bUvMpIqqIh" vertical-align="center"><h4>Open /admin as a student</h4><p><code>requireRole('admin')</code> returns 403: authenticated is not authorized.</p></grid-item><grid-item id="WdLQswxRiT" vertical-align="center"><h4>POST /logout, then replay</h4><p>The server destroys the session; the old cookie fails.</p></grid-item></grid></grid-item><grid-item id="D9R6IMQX98" class="field" background-overlay="tint" background-overlay-intensity="0.35" padding="32pt 28pt 44pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/oJZZpTGXhTjxTdMNVIXMY.png" saved-media-id="s4zfbqyccn8s0om" source="image.ai-generated" background="true" image-style="data-field" alt="Abstract data-field illustration of one pale-cyan request trace completing a loop through a sparse test grid, with several small branch traces ending cleanly and one old path fading into plain dark ground, thin clearly visible hairline strokes and sparse tiny node dots on a deep ink-blue-black ground, dense detail confined to the upper-right edge, matte flat finish, no glow bloom or blur, no letters or numbers, no people" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><spacer mode="fill"></spacer><p role="eyebrow">REFLECTION</p><hr color="accent" thickness="sm" width="xs"><h3>Identity is established once, but trust is checked at every boundary.</h3></grid-item></grid><notes><p>Run the happy path only after showing the failures. Keep the test identities illustrative and use no real secrets. End on the distinction between authentication and authorization: the session establishes identity, but every route still decides whether that identity may proceed.</p></notes></section>