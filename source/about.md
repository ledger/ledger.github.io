---
title: About the site
---

# About the site

This site is kept in the
[ledger.github.io](https://git.ledger-cli.org/ledger.github.io) repo ([changes](https://git.ledger-cli.org/ledger.github.io/commits/master)).
It is static html generated from [Markdown] by [MkDocs].
Merged commits will usually appear on ledger-cli.org within a few minutes.

Documentation is generated from the
[`doc/` directory in the `master` branch](https://git.ledger-cli.org/ledger/tree/master/doc)
of ledger's repository.

The site is built using [GitHub Actions](https://git.ledger-cli.org/ledger.github.io/actions) and
deploys to [GitHub Pages](https://pages.github.com).

There is also a wiki, that of the ledger repo on GitHub, with a convenient
url alias: [wiki.ledger-cli.org](https://wiki.ledger-cli.org).

[Cloudflare Redirect Rules](https://developers.cloudflare.com/rules/url-forwarding/single-redirects/examples/)
are used to serve `git`, `wiki`, and `list` subdomain redirects and to redirect the `www` subdomain to the apex domain.


[Markdown]: https://daringfireball.net/projects/markdown/
[MkDocs]: https://www.mkdocs.org
