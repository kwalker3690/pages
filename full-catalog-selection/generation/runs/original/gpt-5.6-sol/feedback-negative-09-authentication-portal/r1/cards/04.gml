<section>
  <grid spacing="none">
    <grid-item>
      <labels><label variant="solid">REQUEST · POST /login</label><label variant="outline">ILLUSTRATIVE CODE</label></labels>
      <h2>The authentication decision</h2>
      <p><b>Concise laboratory example—not a production-complete route.</b> The decisive sequence is validate, compare, return one generic failure, then regenerate and save.</p>
      <grid spacing="none" vertical-sizing="hug">
        <grid-item padding="0" cell-style="subtle">
          <grid spacing="none" direction="vertical">
            <grid-item background-color="surface" padding="9pt 14pt">
              <grid spacing="none" vertical-sizing="hug">
                <grid-item><p font-size="sm">login.route.js</p></grid-item>
                <spacer mode="fill"></spacer>
                <grid-item>
                  <labels>
                    <label variant="outline">VALIDATE</label>
                    <label variant="outline">COMPARE</label>
                    <label variant="outline">REGENERATE</label>
                  </labels>
                </grid-item>
              </grid>
            </grid-item>
            <grid-item padding="14pt 18pt">
              <pre language="javascript"><code>router.post('/login', loginLimiter, csrfProtection, async (req, res, next) =&gt; {
  const parsed = loginSchema.safeParse(req.body);
  if (!parsed.success) return res.status(400).render('login');

  const user = await students.findByEmail(parsed.data.email);
  const hash = user?.password_hash ?? DUMMY_BCRYPT_HASH;
  const ok = await bcrypt.compare(parsed.data.password, hash);

  if (!user || !ok || user.status !== 'active')
    return res.status(401).render('login', {
      error: 'Email or password is incorrect.'
    });

  req.session.regenerate(err =&gt; { if (err) return next(err);
    req.session.user = { id: user.id, role: user.role };
    req.session.save(err =&gt; err ? next(err) : res.redirect(303, '/dashboard'));
  });
});</code></pre>
            </grid-item>
          </grid>
        </grid-item>
      </grid>
      <p role="caption">The dummy bcrypt hash keeps the comparison path uniform when no account is found. Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication Cheat Sheet</a>.</p>
    </grid-item>
  </grid>
</section>