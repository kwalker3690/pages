<section image-layout="blank" id="EDfcGLJ_ea"><grid spacing="none"><grid-item id="_hI2hHl6de" padding-bottom="24pt"><labels><label variant="solid">REQUEST · POST /login</label><label variant="outline">ILLUSTRATIVE CODE</label></labels><h2>The authentication decision—complete and visible</h2><p font-size="sm"><b>Illustrative, not production-complete.</b> Assumes the project’s async error wrapper and configured session store.</p><grid spacing="medium" vertical-sizing="hug"><grid-item id="AfeOO1gPlf" cell-style="subtle" padding="10pt 12pt" colspan="32"><labels><label variant="outline">VALIDATE + COMPARE</label></labels><pre language="javascript" style="padding: 6pt 8pt; line-height: 1.16; font-size: 12pt;"><code>const parsed = loginSchema.safeParse(req.body);
if (!parsed.success) {
  return res.status(400).render('login');
}
const { email, password } = parsed.data;
const user = await students.findByEmail(email);
const hash = user?.password_hash ?? DUMMY_BCRYPT_HASH;
const ok = await bcrypt.compare(password, hash);
if (!user || !ok || user.status !== 'active') {
  return res.status(401).render('login', {
    error: 'Email or password is incorrect.'
  });
}</code></pre></grid-item><grid-item id="ndUguDlxdX" cell-style="subtle" padding="10pt 12pt" colspan="28"><labels><label variant="outline">REGENERATE + SAVE</label></labels><pre language="javascript" style="padding: 6pt 8pt; line-height: 1.16; font-size: 12pt;"><code>req.session.regenerate(err =&gt; {
  if (err) return next(err);
  req.session.user = {
    id: user.id,
    role: user.role
  };
  req.session.save(err =&gt; {
    if (err) return next(err);
    return res.redirect(303, '/dashboard');
  });
});</code></pre><labels><label variant="solid">BOUNDARY · REPLACE ID BEFORE AUTH STATE</label></labels></grid-item></grid><p font-size="sm">Dummy hash keeps absent-account timing comparable; failures stay generic. Source: <a href="https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html">OWASP Authentication Cheat Sheet</a>.</p></grid-item></grid></section>