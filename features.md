# Features

Ledger is a powerful, double-entry accounting system that is accessed
from the UNIX command-line. This may put off some users, as there is no
flashy UI, but for those who want unparalleled reporting access to their
data, there really is no alternative.

Here are some of the features of Ledger which set it apart from other
accounting systems:

-   Ledger never creates or modifies your data. Your entries are kept in
    a text file that **you maintain**, and you can rest assured, no
    automated tool will ever change that data.

- The amount of data required by Ledger is minimal. It figures out from
  looking at your data what you mean by it and how you want it reported
  back to you. Accounts are created as they appear; currencies are created
  as they’re referenced. Anywhere that a value can be calculated, you can
  leave it out.

- Ledger is a double-entry accounting tool, meaning that **all entries
  must balance**. If an entry does not balance, it will cause an error and
  the report will not be generated. Ledger is always checking the
  accuracies of your entries at every run; you won’t ever run into
  problems with “unaccounted” sums in an account.

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

Read the [docs](docs.html) to learn more.
