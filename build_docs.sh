#!/bin/bash

set -x

mkdir -p _site/3.0/doc
mkdir -p _site/2.6

curl https://raw.githubusercontent.com/ledger/ledger/v3.1.1/doc/ledger3.texi > ledger3.texi
curl https://raw.githubusercontent.com/ledger/ledger/v2.6.3/ledger.texi > ledger2.texi
curl https://raw.githubusercontent.com/ledger/ledger/v3.1.1/doc/ledger.1 > ledger.1
curl https://raw.githubusercontent.com/ledger/ledger-mode/master/doc/ledger-mode.texi > ledger-mode.texi

makeinfo --force --html --no-split -o _site/3.0/doc/ledger3.html ledger3.texi
makeinfo --force --html --no-split -o _site/3.0/doc/ledger-mode.html ledger-mode.texi

texi2pdf -b -V -o _site/3.0/doc/ledger3.pdf ledger3.texi
groff -mandoc -Thtml ledger.1 > _site/3.0/doc/ledger.1.html

texi2pdf -b -V -o _site/3.0/doc/ledger-mode.pdf ledger-mode.texi

makeinfo --force --html --no-split -o _site/2.6/ledger.html ledger2.texi
texi2pdf -b -V -o _site/2.6/ledger.pdf ledger2.texi

