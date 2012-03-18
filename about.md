# About the site

The ledger-cli.org site is kept in the main ledger repo's
[`website`](https://github.com/jwiegley/ledger/tree/website) branch.  It
is static html generated from markdown by
[hakyll](http://jaspervdj.be/hakyll).  Commits are announced on #ledger,
and published to ledger-cli.org every 15 minutes.
<!-- Commits are published to ledger-cli.org immediately. -->

Version-specific documentation, with urls beginning `/3.0/` or
`/2.6/`, comes from the ledger docs in the
[`next`](https://github.com/jwiegley/ledger/tree/next) and
[`maint`](https://github.com/jwiegley/ledger/tree/maint) branches
respectively.

<!-- The news feed on the front page comes from this -->
<!-- [yahoo pipe](http://pipes.yahoo.com/simonmichael/ledgernews) aggregating: -->
<!-- some known ledger-user blogs, -->
<!-- identi.ca dents with the #ledgercli hashtag, -->
<!-- and twitter tweets with the #ledgercli hashtag (this last is unreliable since pipes often exceeds its twitter bandwidth.) -->

There is also a wiki, that of the ledger repo on Github, with a convenient
url alias: [wiki.ledger-cli.org](http://wiki.ledger-cli.org).

Some site config that's not kept in the repo:

Apache vhost:
    
    <VirtualHost *:80>
      ServerName ledger-cli.org
      ServerAlias www.ledger-cli.org list.ledger-cli.org git.ledger-cli.org wiki.ledger-cli.org

      RewriteEngine on

      # convenience aliases

      # list.ledger-cli.org -> mail list
      RewriteCond %{HTTP_HOST} ^list.ledger-cli.org$
      RewriteRule ^(.*)                    http://groups.google.com/group/ledger-cli$1 [L]
      RewriteRule ^/(?:lists?)(/(.*)|$) http://groups.google.com/group/ledger-cli$1 [L]

      # git.ledger-cli.org -> git repo
      RewriteCond %{HTTP_HOST} ^git.ledger-cli.org$
      RewriteRule ^(.*)                    http://github.com/jwiegley/ledger$1 [L]

      # wiki.ledger-cli.org -> wiki
      RewriteCond %{HTTP_HOST} ^wiki.ledger-cli.org$
      RewriteRule ^(.*)                    http://github.com/jwiegley/ledger/wiki$1 [L]

      # serve almost everything else from the hakyll-generated website
      RewriteCond %{REQUEST_URI} !^/(cgi-bin|awstats|icons)
      RewriteRule ^(.*) /repos/ledger-website/_site$1 [L]
    </VirtualHost>

Cron rules:

    # pull latest ledger docs
    */15 * * * * simon  cd /repos/ledger;         git pull -q && cd doc && make --quiet
    */15 * * * * simon  cd /repos/ledger2.6;      git pull -q && make --quiet
    # pull latest site, fallback in case github listener not running
    */15 * * * * simon  cd /repos/ledger-website; git pull -q && make --quiet

The current webmaster is <a href="mailto:webmaster@ledger-cli.org">Simon
Michael</a> and all help is welcomed.
