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

Ledger is written by John Wiegley and released under the BSD license. It
has also inspired several [Ports](Ports.html) to other languages.
Have a listen to [FLOSS Weekly 150: Ledger](http://twit.tv/floss150), recorded 2011/1/26!

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
Here is a little more about [Terminology](Terminology.html).

Ledger is a double-entry accounting tool, meaning that **all entries
must balance**. If an entry does not balance, it will cause an error and
the report will not be generated. Ledger is always checking the
accuracies of your entries at every run; you won’t ever run into
problems with “unaccounted” sums in an account.

You use the `ledger` command line program to see the balance of your
accounts, or the history of a particular account

    ledger -f your-file.dat balance
    ledger -f your-file.dat register Expenses


## Support

### Mail list

The [ledger-cli mail list](http://groups.google.com/group/ledger-cli)  (alias: list.ledger-cli.org)
is for the discussion of issues pertaining to Ledger. Please join and
contribute!  Google Groups also supports RSS, if you prefer that.  Or, if
you’d rather read your messages over NNTP using a newsreader like Gnus,
use the
[gmane.comp.finance.ledger.general](http://dir.gmane.org/gmane.comp.finance.ledger.general)
gmane newsgroup.

### IRC channel

Usually the fastest way to get your questions answered is to visit us on
IRC, where I can usually be found most days. We are on the
[\#ledger](irc://irc.freenode.net/ledger) channel on irc.freenode.net . My
nick is “johnw”.

### Reporting bugs

Please report bugs on Ledger’s bug tracker: 
[bugs.ledger-cli.org](http://bugs.ledger-cli.org).


## Documentation

Here is the official ledger documentation, built from the current source:

  ---------------------------------------------------- ----------------------------------------------------------------
  **Ledger 2.6.3**                                     **Ledger 3.0 pre-release (master branch)**
  [Manual](2.6/ledger.html), [(PDF)](2.6/ledger.pdf)   [Old manual](3.0/doc/ledger.html), [(PDF)](3.0/doc/ledger.pdf)
                                                       [New manual draft](3.0/doc/ledger3.html), [(PDF)](3.0/doc/ledger3.pdf)
                                                       [ledger (1) man page](3.0/doc/ledger.1.html)
  [README](2.6/README)                                 [README-1ST](3.0/README-1ST), [README.textile](3.0/README.textile), [doc/README](3.0/doc/README)
  [NEWS](2.6/NEWS)                                     [NEWS](3.0/doc/NEWS)
  [LICENSE](2.6/LICENSE)                               [LICENSE](3.0/doc/LICENSE), [LICENSE-sha1](3.0/doc/LICENSE-sha1), [LICENSE-utfcpp](3.0/doc/LICENSE-utfcpp)
  ---------------------------------------------------- ----------------------------------------------------------------

You can find more docs at the [wiki](https://github.com/jwiegley/ledger/wiki)
(alias: wiki.ledger-cli.org).

And here is more [about this site](README.html) - please help make it better.

## Download

The Ledger source is available on github:
[http://github.com/jwiegley/ledger](http://github.com/jwiegley/ledger) (alias: git.ledger-cli.org)

Several people in the Open Source community have spent time creating
Ledger binaries for specific platforms, listed below; if you discover
others, please let me know. If you would like to have a binary hosted,
please [send an e-mail](mailto:jwiegley@gmail.com).

  Platform                                   Download link
  ------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Mac OS X (Snow Leopard)                    [ftp://ftp.newartisans.com/pub/ledger/ledger-current.dmg.zip](ftp://ftp.newartisans.com/pub/ledger/ledger-current.dmg.zip)
  Windows                                    [http://www.assembla.com/spaces/Goldcoast/documents](http://www.assembla.com/spaces/Goldcoast/documents)
  GNU/Linux:
  &nbsp; Debian                              [http://qa.debian.org/developer.php?packages=ledger](http://qa.debian.org/developer.php?packages=ledger)
  &nbsp; Ubuntu PPA  (development snapshots) [https://launchpad.net/\~mbudde/+archive/ledger](https://launchpad.net/~mbudde/+archive/ledger)
  &nbsp; Gentoo                              [http://tstotts.net/linux/ebuilds.html](http://tstotts.net/linux/ebuilds.html)
  &nbsp; Homebrew                            [http://github.com/mxcl/homebrew/blob/master/Library/Formula/ledger.rb](http://github.com/mxcl/homebrew/blob/master/Library/Formula/ledger.rb)
  &nbsp; CentOS 5 (64-bit)                   See below
  &nbsp; Arch Linux                          [http://aur.archlinux.org/packages.php?ID=3086](http://aur.archlinux.org/packages.php?ID=3086)


### Installation tips

#### Centos

For CentOS 5 users (64-bit only right now), create the file
`/etc/yum.repos.d/newartisans.repo` with these contents:

    [newartisans]
    name=New Artisans LLC $releasever - $basearch
    baseurl=http://ftp.newartisans.com/yum/rhel/$releasever/$basearch
    enabled=1
    gpgcheck=0

Once this is done, run `yum install ledger`.
