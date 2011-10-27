<a href="http://github.com/jwiegley/ledger">
<img style="position: absolute; top: 0; right: 0; border: 0;" src="https://assets2.github.com/img/71eeaab9d563c2b3c590319b398dd35683265e85?repo=&url=http%3A%2F%2Fs3.amazonaws.com%2Fgithub%2Fribbons%2Fforkme_right_gray_6d6d6d.png&path=" alt="Fork me on GitHub" />
</a>

# Welcome to Ledger

Ledger is a powerful, double-entry accounting system that is accessed
from the UNIX command-line. This may put off some users, as there is no
flashy UI, but for those who want unparalleled reporting access to their
data, there really is no alternative.

Here are some of the features of Ledger which set it apart from other
accounting systems:

-   Ledger never creates or modifies your data. Your entries are kept in
    a text file that **you maintain**, and you can rest assured, no
    automated tool will ever change that data.

-   Ledger is 100% currency-agnostic. You can store multiple currencies
    in any account, convert between them, or even pay in one currency
    and receive change in another.

-   Ledger is international. UTF8 is accepted anywhere in data files,
    Ledger uses ISO format dates, attaches no meaning to the naming of
    accounts, and can accept data in either US or European decimal
    formats. It will report currencies back to you following the manner
    of your own entries.

-   Ledger uses a simple set of base commands which can be extended in
    countless ways. You can create monthly reports, average reports,
    check account balances, reconcile accounts, keep track of capital
    gains on stocks, etc.

Ledger, begun in 2003, is written by John Wiegley and released under the BSD license.
It has also inspired several [ports](http://wiki.ledger-cli.org/Ports) to other languages.
You can hear John explain Ledger in the [2011/01/26 FLOSS Weekly podcast](http://twit.tv/floss150).

## Getting started

To get started with Ledger, add entries to a text file in Ledger’s own
textual format. Here’s what an entry might look like:

    2006/10/15 Exxon
        Expenses:Auto:Gas         $10.00
        Liabilities:MasterCard

The amount of data required by Ledger is minimal. It figures out from
looking at your data what you mean by it and how you want it reported
back to you. Accounts are created as they appear; currencies are created
as they’re referenced. Anywhere that a value can be calculated, you can
leave it out — such as the balancing `$-10.00` in the above entry.
Here is a little more about [terminology](http://wiki.ledger-cli.org/Terminology).

Ledger is a double-entry accounting tool, meaning that **all entries
must balance**. If an entry does not balance, it will cause an error and
the report will not be generated. Ledger is always checking the
accuracies of your entries at every run; you won’t ever run into
problems with “unaccounted” sums in an account.

You use the `ledger` command line program to see the balance of your
accounts, or the history of a particular account:

    ledger -f your-file.dat balance
    ledger -f your-file.dat register Expenses

## Documentation

Official ledger documentation, built from the current source:

  [Ledger 2.6.3](https://github.com/jwiegley/ledger/commits/maint) (deprecated)  [Ledger 3.0 `next` branch](https://github.com/jwiegley/ledger/commits/next) (recommended)
  ------------------------------------------------------------------------------ ----------------------------------------------------------------
  [README](2.6/README)                                                           [README-1ST](3.0/README-1ST), [README.textile](3.0/README.textile), [doc/README](3.0/doc/README)
  [NEWS](2.6/NEWS)                                                               [NEWS](3.0/doc/NEWS)
  **[Manual](2.6/ledger.html)** ([pdf](2.6/ledger.pdf))                          **[Manual](3.0/doc/ledger3.html)** ([pdf](3.0/doc/ledger3.pdf)), [man page](3.0/doc/ledger.1.html) (and a somewhat updated [old manual](3.0/doc/ledger.html))
  ------------------------------------------------------------------------------ ---------------------------------------------------------------

The [ledger wiki](https://github.com/jwiegley/ledger/wiki) (alias: wiki.ledger-cli.org)
has more docs and notes.

And [about ledger-cli.org](README.html) documents this site, so you can help improve it.

## Community

**IRC channel**  
Visit us in the [\#ledger](irc://irc.freenode.net/ledger) channel on irc.freenode.net
to get your questions answered quickly. John Wiegley's nick is `johnw`.

**Mail list**  
The [ledger-cli mail list](http://groups.google.com/group/ledger-cli)
*(alias: list.ledger-cli.org)* is the main place for Ledger discussions. Please join
and contribute!  If you'd rather use a NNTP newsreader or gmane's interface,
see [gmane.comp.finance.ledger.general](http://dir.gmane.org/gmane.comp.finance.ledger.general).
Searching the list archive is another good way to find answers.

**Bug tracker**  
Please report bugs in [bugs.ledger-cli.org](http://bugs.ledger-cli.org).

## Download

The Ledger source is available on github:
[http://github.com/jwiegley/ledger](http://github.com/jwiegley/ledger)
*(alias: git.ledger-cli.org)*

Several people in the Open Source community have spent time creating
Ledger binaries for specific platforms, listed below; if you discover
others, please let me know. If you would like to have a binary hosted,
please [send an e-mail](mailto:jwiegley@gmail.com).

### Mac OS X
- [John's ledger-current.dmg.zip](ftp://ftp.newartisans.com/pub/ledger/ledger-current.dmg.zip) (3.0; requires Snow Leopard with boost lib installed)
- `port install ledger` (2.6)
- `fink install ledger` (2.6)
- `brew install ledger` (2.6)
- `brew install ledger --HEAD` (3.0 `next` branch)

### Windows
- [AlexanderAA's binary](http://www.assembla.com/spaces/Goldcoast/documents) (2.6)

### GNU/Linux
- [Debian](http://qa.debian.org/developer.php?packages=ledger) (2.6)
- [Ubuntu](https://launchpad.net/~mbudde/+archive/ledger) (3.0)
- [Gentoo](http://packages.gentoo.org/package/app-office/ledger) (2.6)
- [Arch Linux](http://aur.archlinux.org/packages.php?ID=3086) (2.6)
- [CentOS 6](http://pkgs.org/centos-6-rhel-6/epel-i386/ledger-2.6.3-2.el6.i686.rpm.html) (2.6)
- [Nixpkgs](http://hydra.nixos.org/job/nixpkgs/trunk/ledger/) (2.6)
