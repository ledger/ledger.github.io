# About the site

This is the website for ledger, the command-line accounting tool.

Commits to the
[ledger-website repo](http://github.com/simonmichael/ledger-website) are
applied immediately to ledger-cli-org (and announced on #ledger). You can
get commit access by asking.

The main site is static html pages rendered with pandoc and make.
`site.tmpl` is the pandoc template defining layout for the main site.  To
preview changes locally before committing, install
[pandoc](http://johnmacfarlane.net/pandoc), run `make`, and browse
`index.html`.

Version-specific documentation is pulled from the main
[ledger repo](http://github.com/jwiegley/ledger) and has urls like
`ledger-cli.org/3.0/...`.

Site config that's not kept in the repo:

Apache vhost:
    
    <VirtualHost *>
      ServerName ledger-cli.org
      ServerAlias www.ledger-cli.org mail.ledger-cli.org
      RewriteEngine on
      RewriteRule ^(.*) /repos/ledger-website$1 [L]
    </VirtualHost>

Angel (daemon manager) config:

    # listen for github post-receive notifications, pull latest site
    [ledger-website-listener]
    directory  /repos/ledger-website
    stdout     /repos/ledger-website/github-listener.log
    stderr     /repos/ledger-website/github-listener.log
    exec       github-listener.py 8080 'sudo -u simon git pull && make'
    delay      1

Cron rules:

    # pull latest ledger docs
    */15 * * * * simon  cd /repos/ledger;         git pull -q && cd doc && make --quiet
    */15 * * * * simon  cd /repos/ledger2.6;      git pull -q && make --quiet
    # pull latest site, fallback in case github listener not running
    */15 * * * * simon  cd /repos/ledger-website; git pull -q && make --quiet

Planet sidebar: the feed comes from http://pipes.yahoo.com/simonmichael/ledger ,
which aggregates

- some known blogs
- twitter #ledgercli hashtag
- identi.ca #ledger hashtag
