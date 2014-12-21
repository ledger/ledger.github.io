---
title: Download - Ledger
---

# Getting ledger

The [ledger source code](http://git.ledger-cli.org/) is available on Github.
[![Build Status](https://travis-ci.org/ledger/ledger.svg?branch=master)](https://travis-ci.org/ledger/ledger)

Several people in the Open Source community have spent time creating
Ledger binaries for specific platforms. If you discover others or would
like to have a binary hosted, please
[let John know](mailto:jwiegley@gmail.com).

  GNU/Linux             Windows           Mac OS X                                                                                        BSD
  --------------------- ----------------- ----------------------------------------------------------------------------------------------- --------------------------
  [Ubuntu][] (3.0.3)    [Windows][] (2.6) [dmg][] (3.0, needs Snow Leopard or Lion)                                                       [FreeBSD][freebsd] package
  [Debian][] (2.6, 3.0)                   [`brew`][] `install` [`ledger`][formula] (3.1)                                                  [OpenBSD][openbsd] package
  [Gentoo][] (2.6)                        [`brew`][] `tap` [`homebrew/versions`][tap]; [`brew`][] `install` [`ledger26`][formula26] (2.6) [NetBSD][netbsd] package
  [Arch][] (3.1)                          [`fink`][] `install` [`ledger`][finkpackage] (2.6)
  [CentOS][] (2.6)                        [`port`][] `install` [`ledger`][portfile] (2.6)
  [Nixpkgs][] (2.6)

[ubuntu]: https://launchpad.net/~mbudde/+archive/ledger)
[debian]: https://tracker.debian.org/pkg/ledger
[gentoo]: http://packages.gentoo.org/package/app-office/ledger
[arch]: https://aur.archlinux.org/packages/ledger/ "Arch Linux"
[centos]: http://pkgs.org/centos-6-rhel-6/epel-i386/ledger-2.6.3-2.el6.i686.rpm.html "CentOS 6"
[nixpkgs]: http://hydra.nixos.org/job/nixpkgs/trunk/ledger/
[windows]: https://github.com/AlexanderAA/ledger_binaries_windows "AlexanderAA's binary"
[dmg]: http://ftp.newartisans.com/pub/ledger/ledger-devel-3.0.0-20120510.dmg "John's ledger.dmg"
[`brew`]: http://brew.sh
[tap]: https://github.com/Homebrew/homebrew-versions
[formula]: http://braumeister.org/formula/ledger
[formula26]: https://github.com/Homebrew/homebrew-versions/blob/master/ledger26.rb
[`port`]: https://www.macports.org/
[portfile]: https://trac.macports.org/browser/trunk/dports/finance/ledger/Portfile
[`fink`]: http://www.finkproject.org/
[finkpackage]: http://pdb.finkproject.org/pdb/package.php/ledger
[freebsd]: http://portsmon.freebsd.org/portoverview.py?category=finance&portname=ledger
[openbsd]: http://cvsweb.openbsd.org/cgi-bin/cvsweb/ports/productivity/ledger/
[netbsd]: http://pkgsrc.se/wip/ledger
