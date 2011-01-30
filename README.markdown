This is the website for ledger, the command-line accounting tool. Here are some notes for site contributors.

The main site pulls every few minutes from the
[ledger-website repo](http://github.com/simonmichael/ledger-website) (the
old wiki promoted to a first-class repo). All old site contributors have
commit access here, and new ones can get it by asking.

The main site is static html pages rendered with
[pandoc](http://johnmacfarlane.net/pandoc) and make. Install pandoc and
run `make` to build html pages.  This is useful for previewing before
committing your changes. `site.tmpl` is the pandoc template defining
site-wide page layout.

Version-specific documentation that appears on the site is pulled from the
main [ledger repo](http://github.com/jwiegley/ledger) and has urls like
`ledger-cli.org/3.0/...`.

Additional setup that's not kept in the repo:

Apache vhost:
    
    <VirtualHost *>
      ServerName ledger-cli.org
      ServerAlias www.ledger-cli.org mail.ledger-cli.org
      RewriteEngine on
      RewriteRule ^(.*) /repos/ledger-website$1 [L]
    </VirtualHost>

Cron rules:

    */15 * * * * simon  cd /repos/ledger;         git pull -q && cd doc && make --quiet
    */15 * * * * simon  cd /repos/ledger2.6;      git pull -q && make --quiet
    */5  * * * * simon  cd /repos/ledger-website; git pull -q && make --quiet
