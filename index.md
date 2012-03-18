# Welcome to Ledger

Ledger is a powerful, double-entry accounting system that is accessed from
the UNIX command-line. Ledger, begun in 2003, is written by John Wiegley
and released under the BSD license.  It has also inspired several
[ports](http://wiki.ledger-cli.org/Ports) to other languages.

To get started with Ledger, add transactions to a text file in Ledger’s
own textual format. Here’s what a single transaction might look like:

    2006/10/15 Exxon
        Expenses:Auto:Gas         $10.00
        Liabilities:MasterCard   $-10.00

You use the `ledger` command line program to see the balance of your accounts:

    $ ledger -f your-file.dat balance
                  $10.00  Expenses:Auto:Gas
                 $-10.00  Liabilities:MasterCard
    --------------------
                       0

or the history of a particular account:

    $ ledger -f your-file.dat register Expenses
    06-Oct-15 Exxon               Expenses:Auto:Gas          $10.00      $10.00

Read more about Ledger's [features](features.html).
