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
<section image-layout="blank" id="ZolFt6k7uC" card-margin-hidden="true"><grid spacing="none"><grid-item id="UC_FaMIqQt" padding="40pt 24pt 44pt 44pt" colspan="38"><spacer mode="fill"></spacer><p role="eyebrow">B.TECH NODE.JS LAB · ILLUSTRATIVE REQUEST</p><h1 font-size="34pt">Inside one secure request</h1><h3 role="subheading"><b>Lab challenge:</b> Turn an email and password into an authenticated student session—without storing plaintext passwords or revealing whether an account exists.</h3><hr color="accent" thickness="sm"><spacer size="20pt"></spacer><grid divider="0.75pt neutral-border" vertical-sizing="hug" class="meta"><grid-item id="VSHsUBooce" colspan="31"><p role="eyebrow">Trace</p><p font-size="16pt" class="mono">form → validation → rate limit → lookup → bcrypt → session → dashboard</p></grid-item><grid-item id="8731NM7OVi" colspan="29"><p role="eyebrow">Success</p><p font-size="16pt">The browser receives only an opaque <code>sid</code>; each restricted route still authorizes the resolved identity.</p></grid-item></grid></grid-item><grid-item id="YiBy4eaVvr" class="field" background-overlay="tint" background-overlay-intensity="0.64" padding="30pt 24pt" colspan="22"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/1i-PnynxwHjRIv9lTWc_B.png" saved-media-id="nxlo2jr7dfi0698" source="image.ai-generated" background="true" image-style="data-field" alt="Abstract pale-cyan request trace on a deep ink-blue-black ground" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><p role="eyebrow">ONE PACKET · THREE TRUST ZONES</p><grid direction="vertical" spacing="small" vertical-sizing="fill"><grid-item id="hNzm_hrVpw" background-color="surface" padding="12pt 14pt" border="sm solid neutral-border"><h3 font-size="18pt">Browser</h3><p font-size="16pt" class="mono">POST /login<br>email · password · _csrf</p></grid-item><grid-item id="jJB8gsv9oU" align="center"><p font-size="18pt" align="center">↓</p></grid-item><grid-item id="VDjIsSUEbI" background-color="surface" padding="12pt 14pt" border="sm solid accent"><h3 font-size="18pt">Express</h3><p font-size="16pt">Validate, limit, compare, regenerate and authorize.</p></grid-item><grid-item id="eCeAqx-tsH" align="center"><p font-size="18pt" align="center">↓</p></grid-item><grid-item id="lBFAwLON4W" background-color="surface" padding="12pt 14pt" border="sm solid neutral-border"><h3 font-size="18pt">PostgreSQL state</h3><p font-size="16pt">Student record + server-side session; no plaintext password.</p></grid-item></grid></grid-item></grid><notes><p>Follow one illustrative login from the browser through Express and PostgreSQL-backed state. The password is compared, never decrypted or stored by the application. The browser receives only an opaque session identifier, and authorization remains a route-level decision.</p></notes></section>
<section image-layout="blank" id="e8R7ZV67pQ"><grid spacing="none"><grid-item id="rORo0oizmj"><h2>Browser → POST /login</h2><grid spacing="medium" vertical-sizing="fill"><grid-item id="93hxWUdH4a" background-color="surface" padding="16pt 18pt" border="sm solid neutral-border" colspan="34"><grid spacing="none" vertical-sizing="hug"><grid-item id="P8thqIN5oR" colspan="34"><p role="eyebrow">ILLUSTRATIVE BROWSER</p></grid-item><grid-item id="0Va9uuj0Wj" colspan="26"><p role="caption" align="right" class="mono">portal.example/login</p></grid-item></grid><hr color="neutral-border" thickness="sm"><h3>Student sign in</h3><p font-size="16pt">A masked password and server-issued CSRF token travel with the campus email.</p><grid direction="vertical" spacing="small" vertical-sizing="hug"><grid-item id="RjVt00HLPP" cell-style="outline" padding="8pt 10pt"><p role="eyebrow">Email</p><p font-size="16pt" class="mono">asha@campus.example</p></grid-item><grid-item id="-YwqRiN1Ua" cell-style="outline" padding="8pt 10pt"><p role="eyebrow">Password</p><p font-size="16pt" class="mono">••••••••••••</p></grid-item><grid-item id="KBRRWMZQ5A" cell-style="outline" padding="8pt 10pt"><p role="eyebrow">Hidden field</p><p font-size="16pt" class="mono">_csrf = <code>server-issued token</code></p></grid-item><grid-item id="0t3m5Jg8k-" background-color="accent" vertical-align="center" padding="9pt 10pt"><h4 font-size="17pt" align="center">Sign in securely</h4></grid-item></grid></grid-item><grid-item id="tT8gqygAmN" colspan="26"><p role="eyebrow">DEVTOOLS · NETWORK</p><grid direction="vertical" spacing="small" vertical-sizing="hug"><grid-item id="6aAvSiWZ-F" cell-style="outline" padding="10pt 12pt"><labels class="tick"><label variant="outline">REQUEST</label></labels><h3 font-size="18pt">POST /login</h3><p font-size="16pt" class="mono">email · password · _csrf</p></grid-item><grid-item id="S5MWMNMWFi" padding="10pt 12pt" border="sm solid #6EE7B7"><p role="eyebrow"><span text-color="#6EE7B7">SUCCESS</span></p><h3 font-size="18pt">303 See Other</h3><p font-size="16pt" class="mono">Location: /dashboard</p></grid-item><grid-item id="3SQRnMnBaF" padding="10pt 12pt" border="sm solid palette-2"><p role="eyebrow"><span text-color="palette-2">FAILURE</span></p><h3 font-size="18pt">401 Unauthorized</h3><p font-size="16pt">“Email or password is incorrect.”</p></grid-item></grid><aside variant="warning"><p font-size="16pt"><b>Rule:</b> Never echo or log the password.</p></aside></grid-item></grid></grid-item></grid><notes><p>Asha is illustrative. Compare the two outcomes: success redirects with 303, while every credential failure returns the same 401 message. No real token or password appears in the demonstration.</p></notes></section>
<section image-layout="blank" id="I7KOOn9hyK"><grid spacing="none"><grid-item id="0J2NYB-_8P"><h2>One request, seven observable hops</h2><p role="caption"><span text-color="#9B8AFB">ILLUSTRATIVE TRACE</span> · the vertical movement marks trust-boundary crossings.</p><freeform-block w="872" h="286"><box type="content" w="872" h="76" sizing="fixed" locked="true" background-color="surface" style="opacity: 0.48; border: 0.75pt solid var(--neutral-border-color); border-radius: 0;"><p></p></box><box type="content" y="88" w="872" sizing="fixed" locked="true" background-color="surface" style="opacity: 0.72; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p></p></box><box type="content" y="200" w="872" h="76" sizing="fixed" locked="true" background-color="surface" style="opacity: 0.48; border: 0.75pt solid var(--neutral-border-color); border-radius: 0;"><p></p></box><box type="content" x="12" y="7" w="120"><p role="eyebrow">BROWSER</p></box><box type="content" x="12" y="95" w="150"><p role="eyebrow">EXPRESS APPLICATION</p></box><box type="content" x="12" y="207" w="180"><p role="eyebrow">POSTGRESQL-BACKED STATE</p></box><box type="content" x="20" y="24" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p font-size="16pt"><b>Submit</b><br><span text-color="muted">HTTPS form</span></p></box><box type="content" x="136" y="112" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p font-size="16pt"><b>Screen</b><br><span text-color="muted">limit + CSRF</span></p></box><box type="content" x="252" y="112" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p font-size="16pt"><b>Normalize</b><br><span text-color="muted">schema + email</span></p></box><box type="content" x="368" y="214" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p font-size="16pt"><b>Lookup</b><br><span text-color="muted">parameterized SQL</span></p></box><box type="content" x="484" y="112" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p font-size="16pt"><b>Compare</b><br><span text-color="muted">bcrypt + dummy hash</span></p></box><box type="content" x="600" y="112" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid var(--accent-color); border-radius: 0;"><p font-size="16pt"><b>Regenerate</b><br><span text-color="muted">new sid + save</span></p></box><box type="content" x="716" y="24" w="100" h="58" sizing="fixed" background-color="surface" style="padding: 6pt; border: 0.75pt solid rgb(110, 231, 183); border-radius: 0;"><p font-size="16pt"><b>Redirect</b><br><span text-color="muted">303 + opaque cookie</span></p></box><box type="content" x="119" y="66" w="24"><p font-size="20pt" align="center">↘</p></box><box type="content" x="235" y="126" w="24"><p font-size="20pt" align="center">→</p></box><box type="content" x="351" y="174" w="24"><p font-size="20pt" align="center">↘</p></box><box type="content" x="467" y="174" w="24"><p font-size="20pt" align="center">↗</p></box><box type="content" x="583" y="126" w="24"><p font-size="20pt" align="center">→</p></box><box type="content" x="699" y="66" w="24"><p font-size="20pt" align="center">↗</p></box></freeform-block><p font-size="18pt">The password stops at comparison. Only the regenerated, opaque <code>sid</code> returns to the browser.</p></grid-item></grid><notes><p>Read the path from left to right. The request enters Express, crosses to PostgreSQL for a parameterized lookup, returns for bcrypt comparison, and leaves only after session regeneration and save complete.</p></notes></section>
<section image-layout="blank" id="9nUxL1AcLR"><grid spacing="large"><grid-item id="vGxlBX8-TW" colspan="43"><h2>The authentication decision</h2><p role="eyebrow">ILLUSTRATIVE CODE · CONCISE LABORATORY EXAMPLE</p><pre language="javascript"><code>router.post('/login', loginLimiter, csrfProtection,
 async (req, res, next) =&gt; {
  const p = loginSchema.safeParse(req.body);
  if (!p.success) return res.sendStatus(400);
  const user = await students.findByEmail(p.data.email);
  const hash = user?.password_hash ?? DUMMY_BCRYPT_HASH;
  const ok = await bcrypt.compare(p.data.password, hash);
  const fail = { error: 'Email or password is incorrect.' };
  if (!user || !ok || user.status !== 'active')
    return res.status(401).render('login', fail);
  req.session.regenerate(err =&gt; {
    if (err) return next(err);
    req.session.user = { id: user.id, role: user.role };
    req.session.save(err =&gt; err ? next(err) :
      res.redirect(303, '/dashboard'));
  });
});</code></pre><p role="caption">Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication Cheat Sheet</a></p></grid-item><grid-item id="I5DH3bIH94" colspan="17"><p role="eyebrow">DECISION PATH</p><grid divider="0.75pt neutral-border" marker="number" marker-style="outline" marker-position="inline" direction="vertical" vertical-sizing="fill" class="key ledger" style="--marker-inline-size: 20pt; --marker-gap: 10pt;"><grid-item id="xtD_nzfyZZ" vertical-align="center"><h4 font-size="17pt">Validate + normalize</h4><p font-size="16pt"><code>loginSchema</code> rejects malformed input and normalizes the email.</p></grid-item><grid-item id="opuRaM9TNY" vertical-align="center"><h4 font-size="17pt">Always compare</h4><p font-size="16pt">A dummy hash avoids a visibly shorter missing-user path.</p></grid-item><grid-item id="UWmkZTRrxW" class="risk" vertical-align="center"><h4 font-size="17pt">Reject generically</h4><p font-size="16pt">Missing, incorrect and inactive all receive the same 401 wording.</p></grid-item><grid-item id="hT7HoM7fCz" vertical-align="center"><h4 font-size="17pt">Commit before redirect</h4><p font-size="16pt">Regenerate, write minimal identity, save, then send 303.</p></grid-item></grid><labels class="gate"><label variant="outline" text-color="palette-2">not production-complete</label></labels><p role="caption">Assumes Express 5 or the project’s chosen async error wrapper.</p></grid-item></grid><notes><p>The route is a teaching excerpt. Emphasize the dummy hash, generic failure, session regeneration, minimal server-side identity, explicit save, and redirect only after persistence succeeds.</p></notes></section>
<section image-layout="blank" id="Om_79jqKRu"><grid spacing="none"><grid-item id="RGYzK1Z-qc"><h2>A session is born—without putting identity in the cookie</h2><p role="caption"><span text-color="#9B8AFB">ILLUSTRATIVE SESSION FLOW</span> · the browser holds an opaque identifier; the application resolves identity from server-side state.</p><spacer mode="fill"></spacer><grid marker="number" marker-size="small" marker-style="outline" marker-position="inline" marker-align="start" spacing="none" vertical-sizing="hug" class="node"><grid-item id="4kDtWGacLs" vertical-align="center" cell-style="outline" padding="12pt 10pt" colspan="12"><h4 font-size="17pt">Anonymous session</h4><p font-size="16pt">May hold only the login page’s CSRF state.</p></grid-item><grid-item id="Cb9CKpQK9e" class="flow" marker="none" align="center" vertical-align="center" colspan="2"><p>→</p></grid-item><grid-item id="Nixvx-I_vb" vertical-align="center" cell-style="outline" padding="12pt 10pt" colspan="14"><h4 font-size="17pt">regenerate()</h4><p font-size="16pt">Replaces the pre-authentication identifier.</p></grid-item><grid-item id="MoJlXMnOzf" class="flow" marker="none" align="center" vertical-align="center" colspan="2"><p>→</p></grid-item><grid-item id="ppNGxmXJvz" vertical-align="center" cell-style="outline" padding="12pt 10pt" colspan="14"><h4 font-size="17pt">Server store</h4><p font-size="16pt"><code>sid</code> maps to student id + role; no password.</p></grid-item><grid-item id="u6CIfIFdZE" class="flow" marker="none" align="center" vertical-align="center" colspan="2"><p>→</p></grid-item><grid-item id="DDyM0RoAxF" vertical-align="center" cell-style="outline" padding="12pt 10pt" border="sm solid #6EE7B7" colspan="14"><h4 font-size="17pt">Browser cookie</h4><p font-size="16pt"><code>sid=opaque</code> · HttpOnly · Secure · SameSite=Lax</p></grid-item></grid><p role="eyebrow" align="right">OPAQUE SID RETURNS WITH THE NEXT REQUEST ↙</p><grid spacing="none" vertical-sizing="hug"><grid-item id="8L2LMfkT2L" cell-style="outline" padding="10pt 12pt" colspan="12"><p role="eyebrow">NEXT REQUEST</p><h4 font-size="17pt">GET /dashboard</h4></grid-item><grid-item id="MRdnBcKPGf" class="flow" align="center" vertical-align="center" colspan="3"><p>→</p></grid-item><grid-item id="GgBv9Bu0ze" cell-style="outline" padding="10pt 12pt" colspan="12"><p role="eyebrow">COOKIE</p><h4 font-size="17pt">Browser sends sid</h4></grid-item><grid-item id="KUyW3Q22EV" class="flow" align="center" vertical-align="center" colspan="3"><p>→</p></grid-item><grid-item id="SKcicUgrLH" cell-style="outline" padding="10pt 12pt" colspan="13"><p role="eyebrow">MIDDLEWARE</p><h4 font-size="17pt">requireAuth resolves state</h4></grid-item><grid-item id="Wr3iGGNp1f" class="flow" align="center" vertical-align="center" colspan="3"><p>→</p></grid-item><grid-item id="9OkJSpKxYj" padding="10pt 12pt" border="sm solid #6EE7B7" colspan="14"><p role="eyebrow"><span text-color="#6EE7B7">VERIFIED</span></p><h4 font-size="17pt">Student dashboard</h4></grid-item></grid><p role="caption">Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html">OWASP Session Management Cheat Sheet</a></p></grid-item></grid><notes><p>The anonymous session may exist for CSRF state. Authentication replaces its identifier, stores only student id and role on the server, and returns an opaque cookie. The next request must resolve that state before the dashboard is shown.</p></notes></section>
<section image-layout="blank" id="Rt1zL4NOmw"><grid spacing="none"><grid-item id="LSfLKXX61C"><h2>Controls mapped to concrete failures</h2><h3 role="subheading">Each control earns its place by producing an observable rejection or reducing a specific exposure.</h3><grid spacing="large" vertical-sizing="fill"><grid-item id="LGWYIgPmgh" colspan="30"><grid divider="0.75pt neutral-border" direction="vertical" vertical-sizing="fill" class="ledger"><grid-item id="v1URZaMfma" padding="9pt 10pt"><h4 font-size="17pt">Credential guessing</h4><p font-size="16pt"><b>Rate limit + generic 401</b> → slows attempts and hides whether an account exists.</p></grid-item><grid-item id="FPPY3WBkN-" padding="9pt 10pt"><h4 font-size="17pt">Injection</h4><p font-size="16pt"><b>Schema validation + parameterized SQL</b> → rejects malformed input; submitted text is not executed.</p></grid-item><grid-item id="NZV5zfUZ05" padding="9pt 10pt"><h4 font-size="17pt">Session fixation</h4><p font-size="16pt"><code><b>regenerate()</b></code><b> after authentication</b> → the pre-authentication identifier is not promoted.</p></grid-item><grid-item id="hcjv0htu8f" padding="9pt 10pt"><h4 font-size="17pt">Cookie theft</h4><p font-size="16pt"><b>HTTPS + HttpOnly + Secure + SameSite=Lax</b> → reduces exposure; it does not prevent every form of theft.</p></grid-item></grid></grid-item><grid-item id="covldKq-Xs" colspan="30"><grid divider="0.75pt neutral-border" direction="vertical" vertical-sizing="fill" class="ledger"><grid-item id="UbJ8jmRuai" padding="9pt 10pt"><h4 font-size="17pt">CSRF</h4><p font-size="16pt"><b>Verify the server-issued token</b> on login and <code>POST /logout</code> → missing or invalid tokens are rejected.</p></grid-item><grid-item id="u6sQz-Ocok" padding="9pt 10pt"><h4 font-size="17pt">Broken access control</h4><p font-size="16pt"><code><b>requireRole('admin')</b></code> → an authenticated student opening <code>/admin</code> receives 403.</p></grid-item><grid-item id="zGby0jJTz_" padding="9pt 10pt"><h4 font-size="17pt">Logout replay</h4><p font-size="16pt"><b>Destroy server state + clear </b><code><b>sid</b></code> → the old cookie no longer resolves an authenticated session.</p></grid-item></grid></grid-item></grid><p font-size="18pt"><b>Authenticated is not authorized:</b> every restricted resource still enforces its own role boundary.</p><p role="caption">Sources: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication</a> · <a href="https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html">OWASP Session Management</a></p></grid-item></grid><notes><p>Demonstrate a visible outcome for each control. Cookie flags mitigate specific exposure paths but cannot make all cookie theft impossible. Authentication establishes identity; authorization still decides whether that identity may access a resource.</p></notes></section>
<section image-layout="blank" id="AbTUjdqCFM"><grid spacing="none"><grid-item id="w5Wj0hwfRI" colspan="40"><h2>Prove it live, then break it safely</h2><p role="eyebrow">EXPECTED EVIDENCE · ILLUSTRATIVE DEMO</p><grid divider="0.75pt neutral-border" marker="symbol" marker-label="✓" marker-style="outline" marker-position="inline" direction="vertical" vertical-sizing="fill" class="ledger" style="--marker-inline-size: 22pt; --marker-gap: 10pt; --marker-color: #6EE7B7; --marker-border-color: #6EE7B7;"><grid-item id="SmY14QZP3f" vertical-align="center"><h4 font-size="17pt">Wrong credentials</h4><p font-size="16pt">Generic 401; no authenticated session is created.</p></grid-item><grid-item id="DjecjyFIfl" vertical-align="center"><h4 font-size="17pt">Valid credentials</h4><p font-size="16pt">303 redirects with a regenerated opaque <code>sid</code>.</p></grid-item><grid-item id="OpzTKRZjYQ" vertical-align="center"><h4 font-size="17pt">Refresh GET /dashboard</h4><p font-size="16pt"><code>requireAuth</code> resolves the server-side session.</p></grid-item><grid-item id="6Rdok2usbt" vertical-align="center"><h4 font-size="17pt">Open /admin as a student</h4><p font-size="16pt"><code>requireRole('admin')</code> returns 403.</p></grid-item><grid-item id="6oHRZU8qTA" vertical-align="center"><h4 font-size="17pt">POST /logout, then replay</h4><p font-size="16pt">The old cookie no longer resolves after session destruction.</p></grid-item></grid></grid-item><grid-item id="9o-8ulVjck" class="field" background-overlay="tint" background-overlay-intensity="0.68" padding="30pt 26pt 44pt" colspan="20"><img src="https://cdn-staging.gamma.app/QWjS6fBfpt/generated-images/oJZZpTGXhTjxTdMNVIXMY.png" saved-media-id="s4zfbqyccn8s0om" source="image.ai-generated" background="true" image-style="data-field" alt="Abstract pale-cyan request trace completing a loop through a sparse test grid" meta="{&quot;width&quot;:1248,&quot;height&quot;:1664}"><p role="eyebrow">FINAL AUTHORIZATION LOOP</p><grid marker="number" marker-style="outline" marker-position="inline" direction="vertical" spacing="small" vertical-sizing="hug" class="node" style="--marker-inline-size: 20pt; --marker-gap: 8pt;"><grid-item id="h5KYRO8J_L" background-color="surface" padding="9pt 10pt"><h4 font-size="17pt">Browser presents sid</h4></grid-item><grid-item id="LPtYXHF8bT" background-color="surface" padding="9pt 10pt"><h4 font-size="17pt">requireAuth resolves identity</h4></grid-item><grid-item id="ps9FH5PvL2" background-color="surface" padding="9pt 10pt"><h4 font-size="17pt">requireRole checks permission</h4></grid-item><grid-item id="8lwrSjDfep" background-color="surface" padding="9pt 10pt" border="sm solid #6EE7B7"><h4 font-size="17pt">Route proceeds—or rejects</h4></grid-item></grid><spacer mode="fill"></spacer><p role="eyebrow">REFLECTION</p><hr color="accent" thickness="sm" width="xs"><h3>Identity is established once; trust is checked at every boundary.</h3></grid-item></grid><notes><p>Show failures before the happy path and use only illustrative identities. End with the authorization loop: the cookie identifies a server-side session, authentication resolves identity, and each restricted route independently checks permission.</p></notes></section>