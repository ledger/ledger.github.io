<a href="http://github.com/jwiegley/ledger">
<img style="position: absolute; top: 0; right: 0; border: 0;" src="https://assets2.github.com/img/71eeaab9d563c2b3c590319b398dd35683265e85?repo=&url=http%3A%2F%2Fs3.amazonaws.com%2Fgithub%2Fribbons%2Fforkme_right_gray_6d6d6d.png&path=" alt="Fork me on GitHub" />
</a>

# Welcome to Ledger

This is ledger's new site, hopefully soon replacing the [old site](https://github.com/jwiegley/ledger/wiki).

Ledger is a powerful, double-entry accounting system that is accessed
from the UNIX command-line. This may put off some users, as there is no
flashy UI, but for those who want unparalleled reporting access to their
data, there really is no alternative.

For those just joining us, please check out the page on basic
[Terminology](Terminology.html), which will help you if you ever try to
read the [source](http://github.com/jwiegley/ledger) .

Also, there have been several [Ports](Ports.html) of the Ledger
architecture to other languages. Check those out, if you have a
linguistic preference!

## Features

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

## Getting started

To get started with Ledger, you must manage a text file in Ledger’s own
textual format. Here’s what an entry might look like:

    2006/10/15 Exxon
        Expenses:Auto:Gas         $10.00
        Liabilities:MasterCard

The amount of data required by Ledger is minimal. It figures out from
looking at your data what you mean by it and how you want it reported
back to you. Accounts are created as they appear; currencies are created
as they’re referenced. Anywhere that a value can be calculated, you can
leave it out — such as the balancing `$-10.00` in the above entry.

Ledger is a double-entry accounting tool, meaning that **all entries
must balance**. If an entry does not balance, it will cause an error and
the report will not be generated. Ledger is always checking the
accuracies of your entries at every run; you won’t ever run into
problems with “unaccounted” sums in an account.

You use the ledger command line program to see the balance of your
accounts, or the history of a particular account

    ledger -f your-file.dat balance
    ledger -f your-file.dat registry Expenses

## Documentation

  ---------------------------------------------------- ----------------------------------------------------------------
  **Ledger 2.6.3**                                     **Ledger 3.0 pre**
  [Manual](2.6/ledger.html), [(PDF)](2.6/ledger.pdf)   [Old manual](3.0/ledger.html), [(PDF)](3.0/ledger.pdf)
                                                       [New manual draft](3.0/ledger3.html), [(PDF)](3.0/ledger3.pdf)
                                                       [ledger (1) man page](3.0/ledger.1.html)
  [README](2.6/README)                                 [README](3.0/README)
  [NEWS](2.6/NEWS)                                     [NEWS](3.0/NEWS)
  [LICENSE](2.6/LICENSE)                               [LICENSE](3.0/LICENSE)
                                                       [LICENSE-sha1](3.0/LICENSE-sha1)
                                                       [LICENSE-utfcpp](3.0/LICENSE-utfcpp)
  ---------------------------------------------------- ----------------------------------------------------------------

## Mailing list

There is a
[forum/mailing-list](http://groups.google.com/group/ledger-cli) for the
discussion of issues pertaining to ledger. Please join and contribute!
Google Groups also supports RSS, if you prefer that.

Or, if you’d rather read your messages over NNTP using a News Reader
like Gnus, visit the [Gmane
mirror](http://dir.gmane.org/gmane.comp.finance.ledger.general) .

## IRC

Usually the fastest way to get your questions answered is to visit us on
IRC, where I can usually be found most days. We are on the [\#ledger
channel on irc.freenode.net](irc://irc.freenode.net/ledger) . My nick is
“johnw”.

## Reporting bugs

Please report bugs on Ledger’s
[Bugzilla](http://newartisans.com/bugzilla/enter_bug.cgi).

## Tips and Tricks

-   [OnReconciling](OnReconciling.html)
-   [Multiple Currencies](Multiple-currencies.html)
-   Various tools at [http://joyful.com/Ledger](http://joyful.com/Ledger)

## Platform binaries

Several people in the Open Source community have spent time creating
Ledger distributions for specific platforms. Below is a list of the
ports I know of; if you discover others, please let me know. If you
would like to host a binary on this server, please [send me an
e-mail](mailto:jwiegley@gmail.com) .

  Platform                  Download link
  ------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Mac OS X (Snow Leopard)   [ftp://ftp.newartisans.com/pub/ledger/ledger-current.dmg.zip](ftp://ftp.newartisans.com/pub/ledger/ledger-current.dmg.zip)
  Mac OS X (Leopard)        [ftp://ftp.newartisans.com/pub/ledger/ledger-Leopard-g290cac7.dmg.zip](ftp://ftp.newartisans.com/pub/ledger/ledger-Leopard-g290cac7.dmg.zip)
  Windows                   [http://www.assembla.com/spaces/Goldcoast/documents](http://www.assembla.com/spaces/Goldcoast/documents)
  Debian Linux              [http://qa.debian.org/developer.php?packages=ledger](http://qa.debian.org/developer.php?packages=ledger)
  Ubuntu PPA                [https://launchpad.net/\~mbudde/+archive/ledger](https://launchpad.net/~mbudde/+archive/ledger) (development snapshots)
  Gentoo Linux              [http://tstotts.net/linux/ebuilds.html](http://tstotts.net/linux/ebuilds.html)
  Homebrew                  [http://github.com/mxcl/homebrew/blob/master/Library/Formula/ledger.rb](http://github.com/mxcl/homebrew/blob/master/Library/Formula/ledger.rb)
  CentOS 5 (64-bit)         See below

For CentOS 5 users (64-bit only right now), create the file
`/etc/yum.repos.d/newartisans.repo` with these contents:

    [newartisans]
    name=New Artisans LLC $releasever - $basearch
    baseurl=http://ftp.newartisans.com/yum/rhel/$releasever/$basearch
    enabled=1
    gpgcheck=0

Once this is done, run `yum install ledger`.
