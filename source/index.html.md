---
title: ledger, a powerful command-line accounting system
---

# Welcome to ledger

<div style="float: right; text-align: center; min-width: 250px; max-width:250px; min-height: 500px;">
<b>Tweets (#ledgercli OR #plaintextaccounting):</b>
<a class="twitter-timeline" data-dnt="true" href="https://twitter.com/search?q=%23ledgercli%20OR%20%23plaintextaccounting%20-RT" data-widget-id="539507319734677504" data-chrome="noheader"></a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>

Ledger is a powerful, double-entry accounting system that is accessed from
the UNIX command-line. Ledger, begun in 2003, is written by John Wiegley
and released under the BSD license.  It has also inspired several
[ports](https://github.com/ledger/ledger/wiki/Ports) to other languages.

To get started with Ledger, add transactions to a text file in Ledger’s
own textual format. Here’s what a single transaction might look like:

```
2015/10/12 Exxon
    Expenses:Auto:Gas         $10.00
    Liabilities:MasterCard   $-10.00
```

You use the `ledger` command line program to see the balance of your accounts:

```
$ ledger -f your-file.dat balance
              $10.00  Expenses:Auto:Gas
             $-10.00  Liabilities:MasterCard
--------------------
                   0
```

or the history of a particular account:

```
$ ledger -f your-file.dat register Expenses
15-Oct-12 Exxon               Expenses:Auto:Gas          $10.00      $10.00
```

Read more about Ledger's [features](features.html).
