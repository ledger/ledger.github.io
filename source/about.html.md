---
title: About the site - Ledger
---

# About the site

The ledger-cli.org site is kept in the
[ledger.github.io](https://github.com/ledger/ledger.github.io) repo ([changes](https://github.com/ledger/ledger.github.io/commits/master)).
It is static html generated from markdown by [middleman](https://middlemanapp.com).
Commits will normally appear on ledger-cli.org immediately, otherwise on the hour.

Documentation comes from the
[ledger docs in the `master`](https://github.com/ledger/ledger/tree/master/doc)
branch.

There is also a wiki, that of the ledger repo on GitHub, with a convenient
url alias: [wiki.ledger-cli.org](https://wiki.ledger-cli.org).

The site is built using [GitHub Actions](https://github.com/ledger/ledger.github.io/actions) and
deploys to [GitHub Pages](https://pages.github.com).

[Cloudflare Redirect Rules](https://developers.cloudflare.com/rules/url-forwarding/single-redirects/examples/)
are used to serve `git`, `wiki`, and `list` subdomain redirects and to redirect the apex domain to `www`.
