<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Copyright (c) 2003-2009, John Wiegley.  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

- Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.

- Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.

- Neither the name of New Artisans LLC nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. -->
<!-- Created by GNU Texinfo 5.2, http://www.gnu.org/software/texinfo/ -->
<head>
<title>Ledger 2.6.3: Command-Line Accounting</title>

<meta name="description" content="Ledger: Command-Line Accounting">
<meta name="keywords" content="Ledger: Command-Line Accounting">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="#Top" rel="start" title="Top">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<link href="dir.html#Top" rel="up" title="(dir)">
<style type="text/css">
<!--
a.summary-letter {text-decoration: none}
blockquote.smallquotation {font-size: smaller}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
div.indentedblock {margin-left: 3.2em}
div.lisp {margin-left: 3.2em}
div.smalldisplay {margin-left: 3.2em}
div.smallexample {margin-left: 3.2em}
div.smallindentedblock {margin-left: 3.2em; font-size: smaller}
div.smalllisp {margin-left: 3.2em}
kbd {font-style:oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
pre.smalldisplay {font-family: inherit; font-size: smaller}
pre.smallexample {font-size: smaller}
pre.smallformat {font-family: inherit; font-size: smaller}
pre.smalllisp {font-size: smaller}
span.nocodebreak {white-space:nowrap}
span.nolinebreak {white-space:nowrap}
span.roman {font-family:serif; font-weight:normal}
span.sansserif {font-family:sans-serif; font-weight:normal}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en" bgcolor="#FFFFFF" text="#000000" link="#0000FF" vlink="#800080" alink="#FF0000">
<h1 class="settitle" align="center">Ledger 2.6.3: Command-Line Accounting</h1>

<dialog open style="font-size: 120%;">
  <p>
  This is the documentation for the outdated and deprecated version 2.6.3 of Ledger.
  <br>
  Documentation for the current version is found <a href="/doc/ledger3.html">here</a>.
  </p>
</dialog>


<a name="SEC_Contents"></a>
<h2 class="contents-heading" style="margin-top: 10rem;">Table of Contents</h2>

<div class="contents">

<ul class="no-bullet">
  <li><a name="toc-Introduction-1" href="#Introduction">1 Introduction</a>
  <ul class="no-bullet">
    <li><a name="toc-Building-the-program-1" href="#Building-the-program">1.1 Building the program</a></li>
    <li><a name="toc-Getting-help-1" href="#Getting-help">1.2 Getting help</a></li>
  </ul></li>
  <li><a name="toc-Running-Ledger-1" href="#Running-Ledger">2 Running Ledger</a>
  <ul class="no-bullet">
    <li><a name="toc-Usage-overview-1" href="#Usage-overview">2.1 Usage overview</a>
    <ul class="no-bullet">
      <li><a name="toc-Checking-balances" href="#Checking-balances">2.1.1 Checking balances</a>
      <ul class="no-bullet">
        <li><a name="toc-Sub_002daccount-balances" href="#Sub_002daccount-balances">2.1.1.1 Sub-account balances</a></li>
        <li><a name="toc-Specific-account-balances" href="#Specific-account-balances">2.1.1.2 Specific account balances</a></li>
      </ul></li>
      <li><a name="toc-The-register-report" href="#The-register-report">2.1.2 The register report</a>
      <ul class="no-bullet">
        <li><a name="toc-Specific-register-queries" href="#Specific-register-queries">2.1.2.1 Specific register queries</a></li>
      </ul></li>
      <li><a name="toc-Selecting-transactions" href="#Selecting-transactions">2.1.3 Selecting transactions</a>
      <ul class="no-bullet">
        <li><a name="toc-By-date" href="#By-date">2.1.3.1 By date</a></li>
        <li><a name="toc-By-status" href="#By-status">2.1.3.2 By status</a></li>
        <li><a name="toc-By-relationship" href="#By-relationship">2.1.3.3 By relationship</a></li>
        <li><a name="toc-By-budget" href="#By-budget">2.1.3.4 By budget</a></li>
        <li><a name="toc-By-value-expression" href="#By-value-expression">2.1.3.5 By value expression</a></li>
      </ul></li>
      <li><a name="toc-Massaging-register-output" href="#Massaging-register-output">2.1.4 Massaging register output</a>
      <ul class="no-bullet">
        <li><a name="toc-Summarizing" href="#Summarizing">2.1.4.1 Summarizing</a></li>
        <li><a name="toc-Quick-periods" href="#Quick-periods">2.1.4.2 Quick periods</a></li>
        <li><a name="toc-Ordering-and-width" href="#Ordering-and-width">2.1.4.3 Ordering and width</a></li>
        <li><a name="toc-Averages-and-percentages" href="#Averages-and-percentages">2.1.4.4 Averages and percentages</a></li>
        <li><a name="toc-Reporting-total-data" href="#Reporting-total-data">2.1.4.5 Reporting total data</a></li>
        <li><a name="toc-Display-by-value-expression" href="#Display-by-value-expression">2.1.4.6 Display by value expression</a></li>
        <li><a name="toc-Change-report-format" href="#Change-report-format">2.1.4.7 Change report format</a></li>
      </ul></li>
      <li><a name="toc-Standard-queries" href="#Standard-queries">2.1.5 Standard queries</a></li>
      <li><a name="toc-Reporting-balance-totals" href="#Reporting-balance-totals">2.1.6 Reporting balance totals</a></li>
      <li><a name="toc-Reporting-percentages" href="#Reporting-percentages">2.1.7 Reporting percentages</a></li>
    </ul></li>
    <li><a name="toc-Commands-1" href="#Commands">2.2 Commands</a>
    <ul class="no-bullet">
      <li><a name="toc-balance" href="#balance">2.2.1 balance</a></li>
      <li><a name="toc-register" href="#register">2.2.2 register</a></li>
      <li><a name="toc-print" href="#print">2.2.3 print</a></li>
      <li><a name="toc-output" href="#output">2.2.4 output</a></li>
      <li><a name="toc-xml" href="#xml">2.2.5 xml</a></li>
      <li><a name="toc-emacs" href="#emacs">2.2.6 emacs</a></li>
      <li><a name="toc-equity" href="#equity">2.2.7 equity</a></li>
      <li><a name="toc-prices" href="#prices">2.2.8 prices</a></li>
      <li><a name="toc-entry" href="#entry">2.2.9 entry</a></li>
    </ul></li>
    <li><a name="toc-Options-1" href="#Options">2.3 Options</a>
    <ul class="no-bullet">
      <li><a name="toc-Basic-options-1" href="#Basic-options">2.3.1 Basic options</a></li>
      <li><a name="toc-Report-filtering-1" href="#Report-filtering">2.3.2 Report filtering</a></li>
      <li><a name="toc-Output-customization-1" href="#Output-customization">2.3.3 Output customization</a></li>
      <li><a name="toc-Commodity-reporting-1" href="#Commodity-reporting">2.3.4 Commodity reporting</a></li>
      <li><a name="toc-Environment-variables-1" href="#Environment-variables">2.3.5 Environment variables</a></li>
    </ul></li>
    <li><a name="toc-Format-strings-1" href="#Format-strings">2.4 Format strings</a></li>
    <li><a name="toc-Value-expressions-1" href="#Value-expressions">2.5 Value expressions</a>
    <ul class="no-bullet">
      <li><a name="toc-Variables" href="#Variables">2.5.1 Variables</a>
      <ul class="no-bullet">
        <li><a name="toc-Transaction_002faccount-details" href="#Transaction_002faccount-details">2.5.1.1 Transaction/account details</a></li>
        <li><a name="toc-Calculated-totals" href="#Calculated-totals">2.5.1.2 Calculated totals</a></li>
      </ul></li>
      <li><a name="toc-Functions" href="#Functions">2.5.2 Functions</a></li>
      <li><a name="toc-Operators" href="#Operators">2.5.3 Operators</a></li>
      <li><a name="toc-Complex-expressions" href="#Complex-expressions">2.5.4 Complex expressions</a></li>
    </ul></li>
    <li><a name="toc-Period-expressions-1" href="#Period-expressions">2.6 Period expressions</a></li>
    <li><a name="toc-File-format-1" href="#File-format">2.7 File format</a></li>
    <li><a name="toc-Some-typical-queries-1" href="#Some-typical-queries">2.8 Some typical queries</a>
    <ul class="no-bullet">
      <li><a name="toc-Reporting-monthly-expenses" href="#Reporting-monthly-expenses">2.8.1 Reporting monthly expenses</a></li>
      <li><a name="toc-Visualizing-with-Gnuplot" href="#Visualizing-with-Gnuplot">2.8.2 Visualizing with Gnuplot</a>
      <ul class="no-bullet">
        <li><a name="toc-Typical-plots" href="#Typical-plots">2.8.2.1 Typical plots</a></li>
      </ul></li>
    </ul></li>
    <li><a name="toc-Budgeting-and-forecasting-1" href="#Budgeting-and-forecasting">2.9 Budgeting and forecasting</a>
    <ul class="no-bullet">
      <li><a name="toc-Budgeting" href="#Budgeting">2.9.1 Budgeting</a></li>
      <li><a name="toc-Forecasting" href="#Forecasting">2.9.2 Forecasting</a></li>
    </ul></li>
  </ul></li>
  <li><a name="toc-Keeping-a-ledger-1" href="#Keeping-a-ledger">3 Keeping a ledger</a>
  <ul class="no-bullet">
    <li><a name="toc-Stating-where-money-goes-1" href="#Stating-where-money-goes">3.1 Stating where money goes</a></li>
    <li><a name="toc-Assets-and-Liabilities-1" href="#Assets-and-Liabilities">3.2 Assets and Liabilities</a>
    <ul class="no-bullet">
      <li><a name="toc-Tracking-reimbursable-expenses" href="#Tracking-reimbursable-expenses">3.2.1 Tracking reimbursable expenses</a></li>
    </ul></li>
    <li><a name="toc-Commodities-and-Currencies-1" href="#Commodities-and-Currencies">3.3 Commodities and Currencies</a>
    <ul class="no-bullet">
      <li><a name="toc-Commodity-price-histories" href="#Commodity-price-histories">3.3.1 Commodity price histories</a></li>
      <li><a name="toc-Commodity-equivalencies" href="#Commodity-equivalencies">3.3.2 Commodity equivalencies</a></li>
    </ul></li>
    <li><a name="toc-Accounts-and-Inventories-1" href="#Accounts-and-Inventories">3.4 Accounts and Inventories</a></li>
    <li><a name="toc-Understanding-Equity-1" href="#Understanding-Equity">3.5 Understanding Equity</a></li>
    <li><a name="toc-Dealing-with-Petty-Cash-1" href="#Dealing-with-Petty-Cash">3.6 Dealing with Petty Cash</a></li>
    <li><a name="toc-Working-with-multiple-funds-and-accounts-1" href="#Working-with-multiple-funds-and-accounts">3.7 Working with multiple funds and accounts</a></li>
    <li><a name="toc-Archiving-previous-years-1" href="#Archiving-previous-years">3.8 Archiving previous years</a></li>
    <li><a name="toc-Virtual-transactions-1" href="#Virtual-transactions">3.9 Virtual transactions</a></li>
    <li><a name="toc-Automated-transactions-1" href="#Automated-transactions">3.10 Automated transactions</a></li>
    <li><a name="toc-Using-Emacs-to-Keep-Your-Ledger-1" href="#Using-Emacs-to-Keep-Your-Ledger">3.11 Using Emacs to Keep Your Ledger</a></li>
    <li><a name="toc-Using-GnuCash-to-Keep-Your-Ledger-1" href="#Using-GnuCash-to-Keep-Your-Ledger">3.12 Using GnuCash to Keep Your Ledger</a></li>
    <li><a name="toc-Using-timeclock-to-record-billable-time-1" href="#Using-timeclock-to-record-billable-time">3.13 Using timeclock to record billable time</a></li>
  </ul></li>
  <li><a name="toc-Using-XML-1" href="#Using-XML">4 Using XML</a></li>
</ul>
</div>


<a name="Top"></a>
<div class="header">
<p>
Next: <a href="#Introduction" accesskey="n" rel="next">Introduction</a>, Previous: <a href="dir.html#Top" accesskey="p" rel="prev">(dir)</a>, Up: <a href="dir.html#Top" accesskey="u" rel="up">(dir)</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Overview"></a>
<h1 class="top">Overview</h1>

<p>Copyright (c) 2003-2009, John Wiegley.  All rights reserved.
</p>
<p>Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:
</p>
<p>- Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
</p>
<p>- Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.
</p>
<p>- Neither the name of New Artisans LLC nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.
</p>
<p>THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
&quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
</p>

<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; <a href="#Introduction" accesskey="1">Introduction</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Running-Ledger" accesskey="2">Running Ledger</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Keeping-a-ledger" accesskey="3">Keeping a ledger</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Using-XML" accesskey="4">Using XML</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>

<hr>
<a name="Introduction"></a>
<div class="header">
<p>
Next: <a href="#Running-Ledger" accesskey="n" rel="next">Running Ledger</a>, Previous: <a href="#Top" accesskey="p" rel="prev">Top</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Introduction-1"></a>
<h2 class="chapter">1 Introduction</h2>

<p>Ledger is an accounting tool with the moxie to exist.  It provides no
bells or whistles, and returns the user to the days before user
interfaces were even a twinkling in their father&rsquo;s CRT.
</p>
<p>What it does offer is a double-entry accounting ledger with all the
flexibility and muscle of its modern day cousins, without any of the
fat.  Think of it as the Bran Muffin of accounting tools.
</p>
<p>To use it, you need to start keeping a ledger.  This is the basis of
all accounting, and if you haven&rsquo;t started yet, now is the time to
learn.  The little booklet that comes with your checkbook is a ledger,
so we&rsquo;ll describe double-entry accounting in terms of that.
</p>
<p>A checkbook ledger records debits (subtractions, or withdrawals) and
credits (additions, or deposits) with reference to a single account:
the checking account.  Where the money comes from, and where it goes
to, are described in the payee field, where you write the person or
company&rsquo;s name.  The ultimate aim of keeping a checkbook ledger is to
know how much money is available to spend.  That&rsquo;s really the aim of
all ledgers.
</p>
<p>What computers add is the ability to walk through these transactions,
and tell you things about your spending habits; to let you devise
budgets and get control over your spending; to squirrel away money
into virtual savings account without having to physically move money
around; etc.  As you keep your ledger, you are recording information
about your life and habits, and sometimes that information can start
telling you things you aren&rsquo;t aware of.  Such is the aim of all good
accounting tools.
</p>
<p>The next step up from a checkbook ledger, is a ledger that keeps track
of all your accounts, not just checking.  In such a ledger, you record
not only who gets paid&mdash;in the case of a debit&mdash;but where the money
came from.  In a checkbook ledger, its assumed that all the money
comes from your checking account.  But in a general ledger, you write
transaction two-lines: the source account and target account.
<em>There must always be a debit from at least one account for every
credit made to another account</em>.  This is what is meant by
&ldquo;double-entry&rdquo; accounting: the ledger must always balance to zero,
with an equal number of debits and credits.
</p>
<p>For example, let&rsquo;s say you have a checking account and a brokerage
account, and you can write checks from both of them.  Rather than keep
two checkbooks, you decide to use one ledger for both.  In this
general ledger you need to record a payment to Pacific Bell for your
monthly phone bill.  The cost is $23.00, let&rsquo;s say, and you want to
pay it from your checking account.  In the general ledger you need to
say where the money came from, in addition to where it&rsquo;s going to.
The entry might look like this:
</p>
<div class="smallexample">
<pre class="smallexample">9/29  BAL  Pacific Bell              $-200.00   $-200.00
           Equity:Opening Balances    $200.00
9/29  BAL  Checking                   $100.00    $100.00
           Equity:Opening Balances   $-100.00
9/29  100  Pacific Bell                $23.00     $23.00
           Checking                   $-23.00
</pre></div>

<p>The first line shows a payment to Pacific Bell for $23.00.  Because
there is no &ldquo;balance&rdquo; in a general ledger&mdash;it&rsquo;s always zero&mdash;we
write in the total balance of all payments to &ldquo;Pacific Bell&rdquo;, which
now is $223.00 (previously the balance was $200.00).  This is done by
looking at the last entry for &ldquo;Pacific Bell&rdquo; in the ledger, adding
$23.00 to that amount, and writing the total in the balance column.
And the money came from &ldquo;Checking&rdquo;&mdash;a withdrawal of $23.00&mdash;which
leaves the ending balance in &ldquo;Checking&rdquo; at $77.00.  This is a very
manual procedure; but that&rsquo;s where computers come in...
</p>
<p>The transaction must balance to $0: $23 went to Pacific Bell, $23 came
from Checking.  There is nothing left over to be accounted for, since
the money has simply moved from one account to another.  This is the
basis of double-entry accounting: that money never pops in or out of
existence; it is always a transaction from one account to another.
</p>
<p>Keeping a general ledger is the same as keeping two separate ledgers:
One for Pacific Bell and one for Checking.  In that case, each time a
payment is written into one, you write a corresponding withdrawal into
the other.  This makes it easier to write in a &ldquo;running balance&rdquo;,
since you don&rsquo;t have to look back at the last time the account was
referenced&mdash;but it also means having a lot of ledger books, if you
deal with multiple accounts.
</p>
<p>Enter the beauty of computerized accounting.  The purpose of the
Ledger program is to make general ledger accounting simple, by keeping
track of the balances for you.  Your only job is to enter the
transactions.  If a transaction does not balance, Ledger displays an
error and indicates the incorrect transaction.<a name="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<p>In summary, there are two aspects of Ledger use: updating the ledger
data file, and using the Ledger tool to view the summarized result of
your entries.
</p>
<p>And just for the sake of example&mdash;as a starting point for those who
want to dive in head-first&mdash;here are the ledger entries from above,
formatting as the ledger program wishes to see them:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29 Pacific Bell
     Payable:Pacific Bell            $-200.00
     Equity:Opening Balances

2004/09/29 Checking
     Accounts:Checking                $100.00
     Equity:Opening Balances

2004/09/29 Pacific Bell
     Payable:Pacific Bell              $23.00
     Accounts:Checking
</pre></div>

<p>The account balances and registers in this file, if saved as
<samp>ledger.dat</samp>, could be reported using:
</p>
<div class="example">
<pre class="example">$ ledger -f ledger.dat balance
$ ledger -f ledger.dat register checking
$ ledger -f ledger.dat register bell
</pre></div>

<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; <a href="#Building-the-program" accesskey="1">Building the program</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Getting-help" accesskey="2">Getting help</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>

<hr>
<a name="Building-the-program"></a>
<div class="header">
<p>
Next: <a href="#Getting-help" accesskey="n" rel="next">Getting help</a>, Previous: <a href="#Introduction" accesskey="p" rel="prev">Introduction</a>, Up: <a href="#Introduction" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Building-the-program-1"></a>
<h3 class="section">1.1 Building the program</h3>

<p>Ledger is written in ANSI C++, and should compile on any platform.  It
depends on the GNU multiprecision integer library (libgmp), and the
Perl regular expression library (libpcre).  It was developed using GNU
make and gcc 3.3, on a PowerBook running OS/X.
</p>
<p>To build and install once you have these libraries on your system,
enter these commands:
</p>
<div class="example">
<pre class="example">./configure &amp;&amp; make install
</pre></div>

<hr>
<a name="Getting-help"></a>
<div class="header">
<p>
Previous: <a href="#Building-the-program" accesskey="p" rel="prev">Building the program</a>, Up: <a href="#Introduction" accesskey="u" rel="up">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Getting-help-1"></a>
<h3 class="section">1.2 Getting help</h3>

<p>If you need help on how to use Ledger, or run into problems, you can
just the Ledger mailing list at the following Web address:
</p>
<div class="example">
<pre class="example">https://lists.sourceforge.net/lists/listinfo/ledger-discuss
</pre></div>

<p>You can also find help at the &lsquo;<samp>#ledger</samp>&rsquo; channel on the IRC server
&lsquo;<samp>irc.freenode.net</samp>&rsquo;.
</p>
<hr>
<a name="Running-Ledger"></a>
<div class="header">
<p>
Next: <a href="#Keeping-a-ledger" accesskey="n" rel="next">Keeping a ledger</a>, Previous: <a href="#Introduction" accesskey="p" rel="prev">Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Running-Ledger-1"></a>
<h2 class="chapter">2 Running Ledger</h2>

<p>Ledger has a very simple command-line interface, named&mdash;enticing
enough&mdash;<code>ledger</code>.  It supports a few reporting commands, and
a large number of options for refining the output from those commands.
The basic syntax of any ledger command is:
</p>
<div class="example">
<pre class="example">ledger [OPTIONS...] COMMAND [ARGS...]
</pre></div>

<p>Command options must always precede the command word.  After the
command word there may appear any number of arguments.  For most
commands, these arguments are regular expressions that cause the
output to relate only to transactions matching those regular
expressions.  For the <code>entry</code> command, the arguments have a
special meaning, described below.
</p>
<p>The regular expressions arguments always match the account name that a
transaction refers to.  To match on the payee of the entry instead,
precede the regular expression with &lsquo;<samp>--</samp>&rsquo;.  For example, the
following balance command reports account totals for rent, food and
movies, but only those whose payee matches Freddie:
</p>
<div class="example">
<pre class="example">ledger bal rent food movies -- freddie
</pre></div>

<p>There are many, many command options available with the
<code>ledger</code> command, and it takes a while to master them.
However, none of them are required to use the basic reporting
commands.
</p>
<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; <a href="#Usage-overview" accesskey="1">Usage overview</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Commands" accesskey="2">Commands</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Options" accesskey="3">Options</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Format-strings" accesskey="4">Format strings</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Value-expressions" accesskey="5">Value expressions</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Period-expressions" accesskey="6">Period expressions</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#File-format" accesskey="7">File format</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Some-typical-queries" accesskey="8">Some typical queries</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Budgeting-and-forecasting" accesskey="9">Budgeting and forecasting</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>

<hr>
<a name="Usage-overview"></a>
<div class="header">
<p>
Next: <a href="#Commands" accesskey="n" rel="next">Commands</a>, Previous: <a href="#Running-Ledger" accesskey="p" rel="prev">Running Ledger</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Usage-overview-1"></a>
<h3 class="section">2.1 Usage overview</h3>

<p>Before getting into the details of how to run Ledger, it will be
easier to introduce the features in the context of their typical
usage.  To that end, this section presents a series of recipes,
gradually introducing all of the command-line features of Ledger.
</p>
<p>For the purpose of these examples, assume the environment variable
<var>LEDGER</var> is set to the file <samp>sample.dat</samp> (which is included
in the distribution), and that the contents of that file are:
</p>
<div class="smallexample">
<pre class="smallexample">= /^Expenses:Books/
  (Liabilities:Taxes)             -0.10

~ Monthly
  Assets:Bank:Checking          $500.00
  Income:Salary

2004/05/01 * Checking balance
  Assets:Bank:Checking        $1,000.00
  Equity:Opening Balances

2004/05/01 * Investment balance
  Assets:Brokerage              50 AAPL @ $30.00
  Equity:Opening Balances

2004/05/14 * Pay day
  Assets:Bank:Checking          $500.00
  Income:Salary

2004/05/27 Book Store
  Expenses:Books                 $20.00
  Liabilities:MasterCard

2004/05/27 (100) Credit card company
  Liabilities:MasterCard         $20.00
  Assets:Bank:Checking
</pre></div>

<p>This sample file demonstrates a basic principle of accounting which it
is recommended you follow: Keep all of your accounts under five parent
Assets, Liabilities, Income, Expenses and Equity.  It is important to
do so in order to make sense out of the following examples.
</p>
<a name="Checking-balances"></a>
<h4 class="subsection">2.1.1 Checking balances</h4>

<p>Ledger has seven basic commands, but by far the most often used are
<code>balance</code> and <code>register</code>.  To see a summary balance of
all accounts, use:
</p>
<div class="example">
<pre class="example">ledger bal
</pre></div>

<p><code>bal</code> is a short-hand for <code>balance</code>.  This command
prints out the summary totals of the five parent accounts used in
<samp>sample.dat</samp>:
</p>
<div class="smallexample">
<pre class="smallexample">           $1,480.00
             50 AAPL  Assets
          $-2,500.00  Equity
              $20.00  Expenses
            $-500.00  Income
              $-2.00  Liabilities
--------------------
          $-1,502.00
             50 AAPL    
</pre></div>

<p>None of the child accounts are shown, just the parent account totals.
We can see that in &lsquo;<samp>Assets</samp>&rsquo; there is $1,480.00, and 50 shares of
Apple stock.  There is also a negative grand total.  Usually the grand
total is zero, which means that all accounts balance<a name="DOCF2" href="#FOOT2"><sup>2</sup></a>.  In this case, since the 50 shares
of Apple stock cost $1,500.00 dollars, then these two amounts balance
each other in the grand total.  The extra $2.00 comes from a virtual
transaction being added by the automatic entry at the top of the file.
The entry is virtual because the account name was surrounded by
parentheses in an automatic entry.  Automatic entries will be
discussed later, but first let&rsquo;s remove the virtual transaction from
the balance report by using the <samp>--real</samp> option:
</p>
<div class="example">
<pre class="example">ledger --real bal
</pre></div>

<p>Now the report is:
</p>
<div class="smallexample">
<pre class="smallexample">           $1,480.00
             50 AAPL  Assets
          $-2,500.00  Equity
              $20.00  Expenses
            $-500.00  Income
--------------------
          $-1,500.00
             50 AAPL    
</pre></div>

<p>Since the liability was a virtual transaction, it has dropped from the
report and we see that final total is balanced.
</p>
<p>But we only know that it balances because <samp>sample.dat</samp> is quite
simple, and we happen to know that the 50 shares of Apple stock cost
$1,500.00.  We can verify that things really balance by reporting the
Apple shares in terms of their cost, instead of their quantity.  To do
this requires the <samp>--basis</samp>, or <samp>-B</samp>, option:
</p>
<div class="example">
<pre class="example">ledger --real -B bal
</pre></div>

<p>This command reports:
</p>
<div class="smallexample">
<pre class="smallexample">           $2,980.00  Assets
          $-2,500.00  Equity
              $20.00  Expenses
            $-500.00  Income
</pre></div>

<p>With the basis cost option, the grand total has disappeared, as it is
now zero.  The confirms that the cost of everything balances to zero,
<em>which must always be true</em>.  Reporting the real basis cost
should never yield a remainder<a name="DOCF3" href="#FOOT3"><sup>3</sup></a>.
</p>
<a name="Sub_002daccount-balances"></a>
<h4 class="subsubsection">2.1.1.1 Sub-account balances</h4>

<p>The totals reported by the balance command are only the topmost parent
accounts.  To see the totals of all child accounts as well, use the
<samp>-s</samp> option:
</p>
<div class="example">
<pre class="example">ledger --real -B -s bal
</pre></div>

<p>This reports:
</p>
<div class="smallexample">
<pre class="smallexample">           $2,980.00  Assets
           $1,480.00    Bank:Checking
           $1,500.00    Brokerage
          $-2,500.00  Equity:Opening Balances
              $20.00  Expenses:Books
            $-500.00  Income:Salary
</pre></div>

<p>This shows that the &lsquo;<samp>Assets</samp>&rsquo; total is made up from two child
account, but that the total for each of the other accounts comes from
one child account.
</p>
<p>Sometimes you may have a lot of children, nested very deeply, but only
want to report the first two levels.  This can be done with a display
predicate, using a value expression.  In the value expression,
<code>T</code> represents the reported total, and <code>l</code> is the display
level for the account:
</p>
<div class="example">
<pre class="example">ledger --real -B -d &quot;T&amp;l&lt;=2&quot; bal
</pre></div>

<p>This reports:
</p>
<div class="smallexample">
<pre class="smallexample">           $2,980.00  Assets
           $1,480.00    Bank
           $1,500.00    Brokerage
          $-2,500.00  Equity:Opening Balances
              $20.00  Expenses:Books
            $-500.00  Income:Salary
</pre></div>

<p>Instead of reporting &lsquo;<samp>Bank:Checking</samp>&rsquo; as a child of &lsquo;<samp>Assets</samp>&rsquo;,
it report only &lsquo;<samp>Bank</samp>&rsquo;, since that account is a nesting level of
2, while &lsquo;<samp>Checking</samp>&rsquo; is at level 3.
</p>
<p>To review the display predicate used&mdash;<code>T&amp;l&lt;=2</code>&mdash;this rather
terse expression means: Display an account only if it has a non-zero
total (<code>T</code>), and its nesting level is less than or equal to 2
(<code>l&lt;=2</code>).
</p>
<a name="Specific-account-balances"></a>
<h4 class="subsubsection">2.1.1.2 Specific account balances</h4>

<p>While reporting the totals for all accounts can be useful, most often
you will want to check the balance of a specific account or accounts.
To do this, put one or more account names after the balance command.
Since these names are really regular expressions, you can use partial
names if you wish:
</p>
<div class="example">
<pre class="example">ledger bal checking
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">           $1,480.00  Assets:Bank:Checking
</pre></div>

<p>Any number of names may be used:
</p>
<div class="example">
<pre class="example">ledger bal checking broker liab
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">           $1,480.00  Assets:Bank:Checking
             50 AAPL  Assets:Brokerage
              $-2.00  Liabilities
</pre></div>

<p>In this case no grand total is reported, because you are asking for
specific account balances.
</p>
<p>For those comfortable with regular expressions, any Perl regexp is
allowed:
</p>
<div class="example">
<pre class="example">ledger bal ^assets.*checking ^liab
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">           $1,480.00  Assets:Bank:Checking
              $-2.00  Liabilities:Taxes
</pre></div>

<a name="The-register-report"></a>
<h4 class="subsection">2.1.2 The register report</h4>

<p>While the <code>balance</code> command can be very handy for checking
account totals, by far the most powerful of Ledger&rsquo;s reporting tools
is the <code>register</code> command.  In fact, internally both commands
use the same logic, but report the results differently:
<code>balance</code> shows the summary totals, while <code>register</code>
reports each transaction and how it contributes to that total.
</p>
<p>Paradoxically, the most basic form of <code>register</code> is almost
never used, since it displays every transaction:
</p>
<div class="example">
<pre class="example">ledger reg
</pre></div>

<p><code>reg</code> is a short-hand for <code>register</code>.  This command
reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/01 Checking balance     Assets:Bank:Checking      $1,000.00    $1,000.00
                                Equity:Opening Balan..   $-1,000.00            0
2004/05/01 Investment balance   Assets:Brokerage            50 AAPL      50 AAPL
                                Equity:Opening Balan..   $-1,500.00   $-1,500.00
                                                                         50 AAPL
2004/05/14 Pay day              Assets:Bank:Checking        $500.00   $-1,000.00
                                                                         50 AAPL
                                Income:Salary              $-500.00   $-1,500.00
                                                                         50 AAPL
2004/05/27 Book Store           Expenses:Books               $20.00   $-1,480.00
                                                                         50 AAPL
                                Liabilities:MasterCard      $-20.00   $-1,500.00
                                                                         50 AAPL
                                (Liabilities:Taxes)          $-2.00   $-1,502.00
                                                                         50 AAPL
2004/05/27 Credit card company  Liabilities:MasterCard       $20.00   $-1,482.00
                                                                         50 AAPL
                                Assets:Bank:Checking        $-20.00   $-1,502.00
                                                                         50 AAPL
</pre></div>

<p>This rather verbose output shows every account transaction in
<samp>sample.dat</samp>, and how it affects the running total.  The final
total is identical to what we saw with the plain <code>balance</code>
command.  To see how things really balance, we can use &lsquo;<samp>--real
-B</samp>&rsquo;, just as we did with <code>balance</code>:
</p>
<div class="example">
<pre class="example">ledger --real -B reg
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/01 Checking balance     Assets:Bank:Checking      $1,000.00    $1,000.00
                                Equity:Opening Balan..   $-1,000.00            0
2004/05/01 Investment balance   Assets:Brokerage          $1,500.00    $1,500.00
                                Equity:Opening Balan..   $-1,500.00            0
2004/05/14 Pay day              Assets:Bank:Checking        $500.00      $500.00
                                Income:Salary              $-500.00            0
2004/05/27 Book Store           Expenses:Books               $20.00       $20.00
                                Liabilities:MasterCard      $-20.00            0
2004/05/27 Credit card company  Liabilities:MasterCard       $20.00       $20.00
                                Assets:Bank:Checking        $-20.00            0
</pre></div>

<p>Here we see that everything balances to zero in the end, as it must.
</p>
<a name="Specific-register-queries"></a>
<h4 class="subsubsection">2.1.2.1 Specific register queries</h4>

<p>The most common use of the register command is to summarize
transactions based on the account(s) they affect.  Using
<samp>sample.dat</samp> as as example, we could look at all book purchases
using:
</p>
<div class="example">
<pre class="example">ledger reg books
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 Book Store           Expenses:Books               $20.00       $20.00
</pre></div>

<p>If a double-dash (&lsquo;<samp>--</samp>&rsquo;) occurs in the list of regular
expressions, any following arguments are matched against payee names,
instead of account names:
</p>
<div class="example">
<pre class="example">ledger reg ^liab -- credit
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 Credit card company  Liabilities:MasterCard       $20.00       $20.00
</pre></div>

<p>There are many reporting options for tailoring which transactions are
found, and also how to summarize the various amounts and totals that
result.  These are plumbed in greater depth below.
</p>
<a name="Selecting-transactions"></a>
<h4 class="subsection">2.1.3 Selecting transactions</h4>

<p>Although the easiest way to use the register is to report all the
transactions affecting a set of accounts, it can often result in more
information than you want.  To cope with an ever-growing amount of
data, there are several options which can help you pinpoint your
report to exactly the transactions that interest you most.  This is
called the &ldquo;calculation&rdquo; phase of Ledger.  All of its related
options are documented under <samp>--help-calc</samp>.
</p>
<a name="By-date"></a>
<h4 class="subsubsection">2.1.3.1 By date</h4>


<p><samp>--current</samp>(<samp>-c</samp>) displays entries occurring on or
before the current date.  Any entry recorded for a future date will be
ignored, as if it had not been seen.  This is useful if you happen to
pre-record entries, but still wish to view your balances in terms of
what is available today.
</p>

<p><samp>--begin DATE</samp> (<samp>-b DATE</samp>) limits the report to only
those entries occurring on or after <var>DATE</var>.  The running total in
the register will start at zero with the first transaction, even if
there are earlier entries.
</p>
<p>To limit the display only, but still add earlier transactions to the
running total, use the display expression &lsquo;<samp>-d 'd&gt;=[DATE]'</samp>&rsquo;):
</p>
<div class="example">
<pre class="example">ledger --basis -b may -d 'd&gt;=[5/14]' reg ^assets
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/14 Pay day              Assets:Bank:Checking        $500.00    $3,000.00
2004/05/27 Credit card company  Assets:Bank:Checking        $-20.00    $2,980.00
</pre></div>

<p>In this example, the displayed transactions start from &lsquo;<samp>5/14</samp>&rsquo;,
but the calculated total starts from the beginning of &lsquo;<samp>may</samp>&rsquo;.
</p>
<p><samp>--end DATE</samp> (<samp>-e DATE</samp>) states when reporting should
end, both calculation and display.  The ending date is inclusive.
</p>
<p>The <var>DATE</var> argument to the <samp>-b</samp> and <samp>-e</samp> options can
be rather flexible.  Assuming the current date to be November 15,
2004, then all of the following are equivalent:
</p>
<div class="example">
<pre class="example">ledger -b oct bal
ledger -b &quot;this oct&quot; bal
ledger -b 2004/10 bal
ledger -b 10 bal
ledger -b last bal
ledger -b &quot;last month&quot; bal
</pre></div>


<p>To constrain the report to a specific time period, use
<samp>--period</samp> (<samp>-p</samp>).  A time period may have both a
beginning and an end, or neither, as well as a specified interval.
Here are a few examples:
</p>
<div class="example">
<pre class="example">ledger -p 2004 bal
ledger -p august bal
ledger -p &quot;from aug to oct&quot; bal
ledger -p &quot;daily from 8/1 to 8/15&quot; bal
ledger -p &quot;weekly since august&quot; bal
ledger -p &quot;monthly from feb to oct&quot; bal
ledger -p &quot;quarterly in 2004&quot; bal
ledger -p yearly bal
</pre></div>

<p>See <a href="#Period-expressions">Period expressions</a> for more on syntax.  Also, all of the
options <samp>-b</samp>, <samp>-e</samp> and <samp>-p</samp> may be used together,
but whatever information occurs last takes priority.  An example of
such usage (in a script, perhaps) would be:
</p>
<div class="example">
<pre class="example">ledger -b 2004 -e 2005 -p monthly reg ^expenses
</pre></div>

<p>This command is identical to:
</p>
<div class="example">
<pre class="example">ledger -p &quot;monthly in 2004&quot; reg ^expenses
</pre></div>

<p>The transactions within a period may be sorted using
<samp>--period-sort</samp>, which takes a value expression.  This is
similar to the <samp>--sort</samp> option, except that it sorts within
each period entry, rather than sorting all transactions in the report.
See the documentation on <samp>--sort</samp> below for more details.
</p>
<a name="By-status"></a>
<h4 class="subsubsection">2.1.3.2 By status</h4>

<p>By default, all regular transactions are included in each report.  To
limit the report to certain kinds of transactions, use one or more of
the following options:
</p>
<dl compact="compact">
<dt><samp>-C, --cleared</samp></dt>
<dd><p>Consider only cleared transactions.
</p></dd>
<dt><samp>-U, --uncleared</samp></dt>
<dd><p>Consider only uncleared and pending transactions.
</p></dd>
<dt><samp>-R, --real</samp></dt>
<dd><p>Consider only real (non-virtual) transactions.
</p></dd>
<dt><samp>-L, --actual</samp></dt>
<dd><p>Consider only actual (non-automated) transactions.
</p></dd>
</dl>

<p>Cleared transactions are indicated by an asterix placed just before
the payee name in a transaction.  The meaning of this flag is up to
the user, but typically it means that an entry has been seen on a
financial statement.  Pending transactions use an exclamation mark in
the same position, but are mainly used only by reconciling software.
Uncleared transactions are for things like uncashed checks, credit
charges that haven&rsquo;t appeared on a statement yet, etc.
</p>
<p>Real transactions are all non-virtual transactions, where the account
name is not surrounded by parentheses or square brackets.  Virtual
transactions are useful for showing a transfer of money that never
really happened, like money set aside for savings without actually
transferring it from the parent account.
</p>
<p>Actual transactions are those not generated, either as part of an
automated entry, or a budget or forecast report.  A useful of when you
might like to filter out generated transactions is with a budget:
</p>
<div class="example">
<pre class="example">ledger --budget --actual reg ^expenses
</pre></div>

<p>This command outputs all transactions affecting a budgeted account,
but without subtracting the budget amount (because the generated
transactions are suppressed with <samp>--actual</samp>).  The report shows
how much you actually spent on budgeted items.
</p>
<a name="By-relationship"></a>
<h4 class="subsubsection">2.1.3.3 By relationship</h4>


<p>Normally, a register report includes only the transactions that match
the regular expressions specified after the command word.  For
example, to report all expenses:
</p>
<div class="example">
<pre class="example">ledger reg ^expenses
</pre></div>

<p>This reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 Book Store           Expenses:Books               $20.00       $20.00
</pre></div>

<p>Using <samp>--related</samp> (<samp>-r</samp>) reports the transactions that
did not match your query, but only in entries that otherwise would
have matched.  This has the effect of indicating where money came
from, or when to:
</p>
<div class="example">
<pre class="example">ledger -r reg ^expenses
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 Book Store           Liabilities:MasterCard       $20.00       $20.00
</pre></div>

<a name="By-budget"></a>
<h4 class="subsubsection">2.1.3.4 By budget</h4>


<p>There is more information about budgeting and forecasting in
<a href="#Budgeting-and-forecasting">Budgeting and forecasting</a>.  Basically, if you have any period
entries in your ledger file, you can use these options.  A period
entry looks like:
</p>
<div class="example">
<pre class="example">~ Monthly
  Assets:Bank:Checking         $500.00
  Income:Salary
</pre></div>

<p>The difference from a regular entry is that the first line begins with
a tilde (~), and instead of a payee there&rsquo;s a period expression
(<a href="#Period-expressions">Period expressions</a>).  Otherwise, a period entry is in every
other way the same as a regular entry.
</p>
<p>With such an entry in your ledger file, the <samp>--budget</samp> option
will report only transactions that match a budgeted account.  Using
<samp>sample.dat</samp> from above:
</p>
<div class="example">
<pre class="example">ledger --budget reg ^income
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/01 Budget entry         Income:Salary               $500.00      $500.00
2004/05/14 Pay day              Income:Salary              $-500.00            0
</pre></div>

<p>The final total is zero, indicating that the budget matched exactly
for the reported period.  Budgeting is most often helpful with period
reporting; for example, to show monthly budget results use
<samp>--budget -p monthly</samp>.
</p>

<p>The <samp>--add-budget</samp> option reports all matching transactions in
addition to budget transactions; while <samp>--unbudgeted</samp> shows
only those that don&rsquo;t match a budgeted account.  To summarize:
</p>
<dl compact="compact">
<dt><samp>--budget</samp></dt>
<dd><p>Show transactions matching budgeted accounts.
</p></dd>
<dt><samp>--unbudgeted</samp></dt>
<dd><p>Show transactions matching unbudgeted accounts.
</p></dd>
<dt><samp>--add-budget</samp></dt>
<dd><p>Show both budgeted and unbudgeted transactions together (i.e., add the
generated budget transactions to the regular report).
</p></dd>
</dl>


<p>A report with the <samp>--forecast</samp> option will add budgeted
transactions while the specified value expression is true.  For
example:
</p>
<div class="example">
<pre class="example">ledger --forecast 'd&lt;[2005] reg ^income
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/14 Pay day              Income:Salary              $-500.00     $-500.00
2004/12/01 Forecast entry       Income:Salary              $-500.00   $-1,000.00
2005/01/01 Forecast entry       Income:Salary              $-500.00   $-1,500.00
</pre></div>

<p>The date this report was made was November 5, 2004; the reason the
first forecast entry is in december is that forecast entries are only
added for the future, and they only stop after the value expression
has matched at least once, which is why the January entry appears.  A
forecast report can be very useful for determining when money will run
out in an account, or for projecting future cash flow:
</p>
<div class="example">
<pre class="example">ledger --forecast 'd&lt;[2008]' -p yearly reg ^inc ^exp
</pre></div>

<p>This reports balances projected income against projected expenses,
showing the resulting total in yearly intervals until 2008.  For the
case of <samp>sample.dat</samp>, which has no budgeted expenses, the result
of the above command (in November 2004) is:
</p>
<div class="smallexample">
<pre class="smallexample">2004/01/01 - 2004/12/31         Income:Salary            $-1,000.00   $-1,000.00
                                Expenses:Books               $20.00     $-980.00
2005/01/01 - 2005/12/31         Income:Salary            $-6,000.00   $-6,980.00
2006/01/01 - 2006/12/31         Income:Salary            $-6,000.00  $-12,980.00
2007/01/01 - 2007/12/31         Income:Salary            $-6,000.00  $-18,980.00
2008/01/01 - 2008/01/01         Income:Salary              $-500.00  $-19,480.00
</pre></div>

<a name="By-value-expression"></a>
<h4 class="subsubsection">2.1.3.5 By value expression</h4>


<p>Value expressions can be quite complex, and are treated more fully in
<a href="#Value-expressions">Value expressions</a>.  They can be used for limiting a report with
<samp>--limit</samp> (<samp>-l</samp>).  The following command report income
since august, but expenses since october:
</p>
<div class="example">
<pre class="example">ledger -l '(/income/&amp;d&gt;=[aug])|(/expenses/&amp;d&gt;=[oct])' reg
</pre></div>

<p>The basic form of this value expression is &lsquo;<samp>(A&amp;B)|(A&amp;B)</samp>&rsquo;.  The
&lsquo;<samp>A</samp>&rsquo; in each part matches against an account name with
&lsquo;<samp>/name/</samp>&rsquo;, while each &lsquo;<samp>B</samp>&rsquo; part compares the date of the
transaction (&lsquo;<samp>d</samp>&rsquo;) with a specified month.  The resulting report
will contain only transactions which match the value expression.
</p>

<p>Another use of value expressions is to calculate the amount reported
for each line of a register report, or for computing the subtotal of
each account shown in a balance report.  This example divides each
transaction amount by two:
</p>
<div class="example">
<pre class="example">ledger -t 'a/2' reg ^exp
</pre></div>

<p>The <samp>-t</samp> option doesn&rsquo;t affect the running total, only how the
transaction amount is displayed.  To change the running total, use
<samp>-T</samp>.  In that case, you will likely want to use the total
(&lsquo;<samp>O</samp>&rsquo;) instead of the amount (&lsquo;<samp>a</samp>&rsquo;):
</p>
<div class="example">
<pre class="example">ledger -T 'O/2' reg ^exp
</pre></div>

<a name="Massaging-register-output"></a>
<h4 class="subsection">2.1.4 Massaging register output</h4>

<p>Even after filtering down your data to just the transactions you&rsquo;re
interested in, the default reporting method of one transaction per
line is often still too much.  To combat this complexity, it is
possible to ask Ledger to report the details to you in many different
forms, summarized in various ways.  This is the &ldquo;display&rdquo; phase of
Ledger, and is documented under <samp>--help-disp</samp>.
</p>
<a name="Summarizing"></a>
<h4 class="subsubsection">2.1.4.1 Summarizing</h4>


<p>When multiple transactions relate to a single entry, they are reported
as part of that entry.  For example, in the case of <samp>sample.dat</samp>:
</p>
<div class="example">
<pre class="example">ledger reg -- book
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 Book Store           Expenses:Books               $20.00       $20.00
                                Liabilities:MasterCard      $-20.00            0
                                (Liabilities:Taxes)          $-2.00       $-2.00
</pre></div>

<p>All three transactions are part of one entry, and as such the entry
details are printed only once.  To report every entry on a single
line, use <samp>-n</samp> to collapse entries with multiple transactions:
</p>
<div class="example">
<pre class="example">ledger -n reg -- book
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 Book Store           &lt;Total&gt;                      $-2.00       $-2.00
</pre></div>

<p>In the balance report, <samp>-n</samp> causes the grand total not to be
displayed at the bottom of the report.
</p>

<p>If an account occurs more than once in a report, it is possible to
combine them all and report the total per-account, using <samp>-s</samp>.
For example, this command:
</p>
<div class="example">
<pre class="example">ledger -B reg ^assets
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/01 Checking balance     Assets:Bank:Checking      $1,000.00    $1,000.00
2004/05/01 Investment balance   Assets:Brokerage          $1,500.00    $2,500.00
2004/05/14 Pay day              Assets:Bank:Checking        $500.00    $3,000.00
2004/05/27 Credit card company  Assets:Bank:Checking        $-20.00    $2,980.00
</pre></div>

<p>But if the <samp>-s</samp> option is added, the result becomes:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/01 - 2004/05/29         Assets:Bank:Checking      $1,480.00    $1,480.00
                                Assets:Brokerage          $1,500.00    $2,980.00
</pre></div>

<p>When account subtotaling is used, only one entry is printed, and the
date and name reflect the range of the combined transactions.
</p>

<p>With <samp>-P</samp>, transactions relating to the same payee are
combined.  In this case, the date of the combined entry is that of the
latest transaction.
</p>

<p><samp>-x</samp> changes the payee name for each transaction to be the same
as the commodity it uses.  This can be especially useful combined with
other options, like <samp>-P</samp>.  For example:
</p>
<div class="example">
<pre class="example">ledger -Px reg ^assets
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 $                    Assets:Bank:Checking      $1,480.00    $1,480.00
2004/05/01 AAPL                 Assets:Brokerage            50 AAPL    $1,480.00
                                                                         50 AAPL
</pre></div>

<p>This reports shows the subtotal for each commodity held, and where it
is located.  To see the basis cost, or initial investment, add
<samp>-B</samp>.  Applied to the example above:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/29 $                    Assets:Bank:Checking      $1,480.00    $1,480.00
2004/05/01 AAPL                 Assets:Brokerage          $1,500.00    $2,980.00
</pre></div>


<p>The only other options which affect summarized totals is <samp>-E</samp>,
which works only in the balance report.  In this case, it shows
matching accounts with a zero a balance, which are ordinarily
excluded.  This can be useful to see all the accounts involved in a
report, even if some have no total.
</p>
<a name="Quick-periods"></a>
<h4 class="subsubsection">2.1.4.2 Quick periods</h4>

<p>Although the <samp>-p</samp> option (also <samp>--period</samp>) is much more
versatile, there are other options to make the most common period
reports easier:
</p>
<dl compact="compact">
<dt><samp>-W, --weekly</samp></dt>
<dd><p>Show weekly sub-totals.  Same as &lsquo;<samp>-p weekly</samp>&rsquo;.
</p></dd>
<dt><samp>-M, --monthly</samp></dt>
<dd><p>Show monthly sub-totals.  Same as &lsquo;<samp>-p monthly</samp>&rsquo;.
</p></dd>
<dt><samp>-Y, --yearly</samp></dt>
<dd><p>Show yearly sub-totals.  Same as &lsquo;<samp>-p yearly</samp>&rsquo;.
</p></dd>
</dl>


<p>There is one kind of period report cannot be done with <samp>-p</samp>.
This is the <samp>--dow</samp>, or &ldquo;days of the week&rdquo; report, which
shows summarized totals for each day of the week.  The following
examples shows a &ldquo;day of the week&rdquo; report of income and expenses:
</p>
<div class="example">
<pre class="example">ledger --dow reg ^inc ^exp
</pre></div>

<p>Reports:
</p>
<div class="smallexample">
<pre class="smallexample">2004/05/27 Thursdays            Expenses:Books               $20.00       $20.00
2004/05/14 Fridays              Income:Salary              $-500.00     $-480.00
</pre></div>

<a name="Ordering-and-width"></a>
<h4 class="subsubsection">2.1.4.3 Ordering and width</h4>


<p>The transactions displayed in a report are shown in the same order as
they appear in the ledger file.  To change the order and sort a
report, use the <samp>--sort</samp> option.  <samp>--sort</samp> takes a value
expression to determine the value to sort against, making it possible
to sort according to complex criteria.  Here are some simple and
useful examples:
</p>
<div class="example">
<pre class="example">ledger --sort d reg ^exp    # sort by date
ledger --sort t reg ^exp    # sort by amount total
ledger --sort -t reg ^exp   # reverse sort by amount total
ledger --sort Ut reg ^exp   # sort by abs amount total
</pre></div>

<p>For the balance report, you will want to use &lsquo;<samp>T</samp>&rsquo; instead of
&lsquo;<samp>t</samp>&rsquo;:
</p>
<div class="example">
<pre class="example">ledger --sort T reg ^exp    # sort by amount total
ledger --sort -T reg ^exp   # reverse sort by amount total
ledger --sort UT reg ^exp   # sort by abs amount total
</pre></div>

<p>The <samp>--sort</samp> options sorts all transactions in a report.  If
periods are used (such as <samp>--monthly</samp>), this can get somewhat
confusing.  In that case, you&rsquo;ll probably want to sort within periods
using <samp>--period-sort</samp> instead of <samp>--sort</samp>.
</p>

<p>And if the register seems too cramped, and you have a lot of screen
real estate, you can use <samp>-w</samp> to format the report within 132
acolumns, instead of 80.  You are more likely then to see full payee
and account names, as well as properly formatted totals when
long-named commodities are used.
</p>
<p>If you want only the first or last N entries to be printed&mdash;which can
be very useful for viewing the last 10 entries in your checking
account, while also showing the cumulative balance from all
entries&mdash;use the <samp>--head</samp> and/or <samp>--tail</samp> options.  The
two options may be used simultaneously, for example:
</p>
<div class="example">
<pre class="example">ledger --tail 20 reg checking
</pre></div>

<p>If the output from your command is very long, Ledger can output the
data to a pager utility, such as <code>more</code> or <code>less</code>:
</p>
<div class="example">
<pre class="example">ledger --pager /usr/bin/less reg checking
</pre></div>

<a name="Averages-and-percentages"></a>
<h4 class="subsubsection">2.1.4.4 Averages and percentages</h4>


<p>To see the running total changed to a running average, use
<samp>-A</samp>.  The final transaction&rsquo;s total will be the overall
average of all displayed transactions.  The works in conjunction with
period reporting, so that you can see your monthly average expenses
with:
</p>
<div class="example">
<pre class="example">ledger -AM  reg ^expenses:food
ledger -AMn reg ^expenses
</pre></div>

<p>This works in the balance report too:
</p>
<div class="example">
<pre class="example">ledger -AM  bal ^expenses:food
ledger -AMs bal ^expenses
</pre></div>


<p>The <samp>-D</samp> option changes the running average into a deviation
from the running average.  This only makes sense in the register
report, however.
</p>
<div class="example">
<pre class="example">ledger -DM reg ^expenses:food
</pre></div>


<p>In the balance report only, <samp>-%</samp> changes the reported totals
into a percentage of the parent account.  This kind of report is
confusing if negative amounts are involved, and doesn&rsquo;t work at all if
multiple commodities occur in an account&rsquo;s history.  It has a somewhat
limited usefulness, therefore, but in certain cases it can be handy,
such as reviewing overall expenses:
</p>
<div class="example">
<pre class="example">ledger -%s -S T bal ^expenses
</pre></div>

<a name="Reporting-total-data"></a>
<h4 class="subsubsection">2.1.4.5 Reporting total data</h4>


<p>Normally in the <code>xml</code> report, only transaction amounts are
printed.  To include the running total under a &lsquo;<samp>&lt;total&gt;</samp>&rsquo; tag, use
<samp>--totals</samp>.  This does not affect any other report.
</p>

<p>In the register report only, the output can be changed with
<samp>-j</samp> to show only the date and the amount&mdash;without
commodities.  This only makes sense if a single commodity appears in
the report, but can be quite useful for scripting, or passing the data
to Gnuplot.  To show only the date and running total, use <samp>-J</samp>.
</p>
<a name="Display-by-value-expression"></a>
<h4 class="subsubsection">2.1.4.6 Display by value expression</h4>


<p>With <samp>-d</samp> you can decide which transactions (or accounts in the
balance report) are displayed, according to a value expression.  The
computed total is not affected, only the display.  This can be very
useful for shortening a report without changing the running total:
</p>
<div class="example">
<pre class="example">ledger -d 'd&gt;=[last month]' reg checking
</pre></div>

<p>This command shows the checking account&rsquo;s register, beginning from
last month, but with the running total reflecting the entire history
of the account.
</p>
<a name="Change-report-format"></a>
<h4 class="subsubsection">2.1.4.7 Change report format</h4>


<p>When dates are printed in any report, the default format is
&lsquo;<samp>%Y/%m/%d</samp>&rsquo;, which yields dates of the form &lsquo;<samp>YYYY/mm/dd</samp>&rsquo;.
This can be changed with <samp>-y</samp>, whose argument is a
<code>strftime</code> string&mdash;see your system&rsquo;s C library documentation for
the allowable codes.  Mostly you will want to use &lsquo;<samp>%Y</samp>&rsquo;, &lsquo;<samp>%m</samp>&rsquo;
and &lsquo;<samp>%d</samp>&rsquo;, in whatever combination is convenient for your locale.
</p>

<p>To change the format of the entire reported line, use <samp>-F</samp>.  It
supports quite a large number of options, which are all documented in
<a href="#Format-strings">Format strings</a>.  In addition, each specific kind of report
(except for <code>xml</code>) can be changed using one of the following
options:
</p>
<dl compact="compact">
<dt><samp>--balance-format</samp></dt>
<dd><p><code>balance</code> report.  Default:
</p><div class="smallexample">
<pre class="smallexample">%20T  %2_%-a\n
</pre></div>

</dd>
<dt><samp>--register-format</samp></dt>
<dd><p><code>register</code> report.  Default:
</p><div class="smallexample">
<pre class="smallexample">%D %-.20P %-.22A %12.66t %12.80T\n%/%32|%-.22A %12.66t %12.80T\n
</pre></div>

</dd>
<dt><samp>--print-format</samp></dt>
<dd><p><code>print</code> report.  Default:
</p><div class="smallexample">
<pre class="smallexample">%D  %-.35P %-.38A %22.108t %22.132T\n%/%48|%-.38A %22.108t %22.132T\n
</pre></div>

</dd>
<dt><samp>--plot-amount-format</samp></dt>
<dd><p><code>register</code> report when <samp>-j</samp> (plot amount) is used.  Default:
</p><div class="smallexample">
<pre class="smallexample">%D %(St)\n
</pre></div>

</dd>
<dt><samp>--plot-total-format</samp></dt>
<dd><p><code>register</code> report when <samp>-J</samp> (plot total) is used.  Default:
</p><div class="smallexample">
<pre class="smallexample">%D %(ST)\n
</pre></div>

</dd>
<dt><samp>--equity-format</samp></dt>
<dd><p><code>equity</code> report.  Default:
</p><div class="smallexample">
<pre class="smallexample">\n%D %Y%C%P\n    %-34W  %12o%n\n%/    %-34W  %12o%n\n
</pre></div>

</dd>
<dt><samp>--prices-format</samp></dt>
<dd><p><code>prices</code> report.  Default:
</p><div class="smallexample">
<pre class="smallexample">\n%D %Y%C%P\n%/    %-34W  %12t\n
</pre></div>

</dd>
<dt><samp>--wide-register-format</samp></dt>
<dd><p><code>register</code> report when <samp>-w</samp> (wide) is used.  Default:
</p><div class="smallexample">
<pre class="smallexample">%D  %-.35P %-.38A %22.108t %22.132T\n%/%48|%-.38A %22.108t %22.132T\n
</pre></div>
</dd>
</dl>

<a name="Standard-queries"></a>
<h4 class="subsection">2.1.5 Standard queries</h4>

<p>If your ledger file uses the standard top-level accounts: Assets,
Liabilities, Income, Expenses, Equity: then the following queries will
enable you to generate some typical accounting reports from your data.
</p>
<p>Your <em>net worth</em> can be determined by balancing assets against
liabilities:
</p>
<div class="example">
<pre class="example">ledger bal ^assets ^liab
</pre></div>

<p>By removing long-term investment and loan accounts, you can see your
current net liquidity (or liquid net worth):
</p>
<div class="example">
<pre class="example">ledger bal ^assets ^liab -retirement -brokerage -loan
</pre></div>

<p>Balancing expenses against income yields your <em>cash flow</em>, or net
profit/loss:
</p>
<div class="example">
<pre class="example">ledger bal ^exp ^inc
</pre></div>

<p>In this case, if the number is positive it means you spent more than
you earned during the report period.
</p>

<p>The most often used command is the &ldquo;balance&rdquo; command:
</p>
<div class="example">
<pre class="example">export LEDGER=/home/johnw/doc/ledger.dat
ledger balance
</pre></div>

<p>Here I&rsquo;ve set my Ledger environment variable to point to where my
ledger file is hiding.  Thereafter, I needn&rsquo;t specify it again.
</p>
<a name="Reporting-balance-totals"></a>
<h4 class="subsection">2.1.6 Reporting balance totals</h4>

<p>The balance command prints out the summarized balances of all my
top-level accounts, excluding sub-accounts.  In order to see the
balances for a specific account, just specify a regular expression
after the balance command:
</p>
<div class="example">
<pre class="example">ledger balance expenses:food
</pre></div>

<p>This will show all the money that&rsquo;s been spent on food, since the
beginning of the ledger.  For food spending just this month
(September), use:
</p>
<div class="example">
<pre class="example">ledger -p sep balance expenses:food
</pre></div>

<p>Or maybe you want to see all of your assets, in which case the -s
(show sub-accounts) option comes in handy:
</p>
<div class="example">
<pre class="example">ledger -s balance ^assets
</pre></div>

<p>To exclude a particular account, use a regular expression with a
leading minus sign.  The following will show all expenses, but without
food spending:
</p>
<div class="example">
<pre class="example">ledger balance expenses -food
</pre></div>

<a name="Reporting-percentages"></a>
<h4 class="subsection">2.1.7 Reporting percentages</h4>

<p>There is no built-in way to report transaction amounts or account
balances in terms of percentages
</p>
<hr>
<a name="Commands"></a>
<div class="header">
<p>
Next: <a href="#Options" accesskey="n" rel="next">Options</a>, Previous: <a href="#Usage-overview" accesskey="p" rel="prev">Usage overview</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Commands-1"></a>
<h3 class="section">2.2 Commands</h3>

<a name="balance"></a>
<h4 class="subsection">2.2.1 balance</h4>

<p>The <code>balance</code> command reports the current balance of all
accounts.  It accepts a list of optional regexps, which confine the
balance report to the matching accounts.  If an account contains
multiple types of commodities, each commodity&rsquo;s total is reported
separately.
</p>
<a name="register"></a>
<h4 class="subsection">2.2.2 register</h4>

<p>The <code>register</code> command displays all the transactions occurring
in a single account, line by line.  The account regexp must be
specified as the only argument to this command.  If any regexps occur
after the required account name, the register will contain only those
transactions that match.  Very useful for hunting down a particular
transaction.
</p>
<p>The output from <code>register</code> is very close to what a typical
checkbook, or single-account ledger, would look like.  It also shows a
running balance.  The final running balance of any register should
always be the same as the current balance of that account.
</p>
<p>If you have Gnuplot installed, you may plot the amount or running
total of any register by using the script <samp>report</samp>, which is
included in the Ledger distribution.  The only requirement is that you
add either <samp>-j</samp> or <samp>-J</samp> to your register command, in
order to plot either the amount or total column, respectively.
</p>
<a name="print"></a>
<h4 class="subsection">2.2.3 print</h4>

<p>The <code>print</code> command prints out ledger entries in a textual
format that can be parsed by Ledger.  They will be properly formatted,
and output in the most economic form possible.  The &ldquo;print&rdquo; command
also takes a list of optional regexps, which will cause only those
transactions which match in some way to be printed.
</p>
<p>The <code>print</code> command can be a handy way to clean up a ledger
file whose formatting has gotten out of hand.
</p>
<a name="output"></a>
<h4 class="subsection">2.2.4 output</h4>

<p>The <code>output</code> command is very similar to the <code>print</code>
command, except that it attempts to replicate the specified ledger
file exactly.  The format of the command is:
</p>
<div class="example">
<pre class="example">ledger -f FILENAME output FILENAME
</pre></div>

<p>Where <samp>FILENAME</samp> is the name of the ledger file to output.  The
reason for specifying this command is that only entries contained
within that file will be output, and not an included entries (as can
happen with the <code>print</code> command).
</p>
<a name="xml"></a>
<h4 class="subsection">2.2.5 xml</h4>

<p>The <code>xml</code> command outputs results similar to what
<code>print</code> and <code>register</code> display, but as an XML form.
This data can then be read in and processed.  Use the
<samp>--totals</samp> option to include the running total with each
transaction.
</p>
<a name="emacs"></a>
<h4 class="subsection">2.2.6 emacs</h4>

<p>The <code>emacs</code> command outputs results in a form that can be read
directly by Emacs Lisp.  The format of the sexp is:
</p>
<div class="example">
<pre class="example">((BEG-POS CLEARED DATE CODE PAYEE
  (ACCOUNT AMOUNT)...)  ; list of transactions
 ...)                   ; list of entries
</pre></div>

<a name="equity"></a>
<h4 class="subsection">2.2.7 equity</h4>

<p>The <code>equity</code> command prints out accounts balances as if they
were entries.  This makes it easy to establish the starting balances
for an account, such as when <a href="#Archiving-previous-years">Archiving previous years</a>.
</p>
<a name="prices"></a>
<h4 class="subsection">2.2.8 prices</h4>

<p>The <code>prices</code> command displays the price history for matching
commodities.  The <samp>-A</samp> flag is useful with this report, to
display the running average price, or <samp>-D</samp> to show each price&rsquo;s
deviation from that average.
</p>
<p>There is also a <code>pricesdb</code> command which outputs the same
information as <code>prices</code>, but does in a format that can be
parsed by Ledger.
</p>
<a name="entry"></a>
<h4 class="subsection">2.2.9 entry</h4>

<p>The <code>entry</code> commands simplifies the creation of new entries.
It works on the principle that 80% of all transactions are variants of
earlier transactions.  Here&rsquo;s how it works:
</p>
<p>Say you currently have this transaction in your ledger file:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/15 * Viva Italiano
    Expenses:Food                       $12.45
    Expenses:Tips                        $2.55
    Liabilities:MasterCard             $-15.00
</pre></div>

<p>Now it&rsquo;s &lsquo;<samp>2004/4/9</samp>&rsquo;, and you&rsquo;ve just eating at &lsquo;<samp>Viva
Italiano</samp>&rsquo; again.  The exact amounts are different, but the overall
form is the same.  With the <code>entry</code> command you can type:
</p>
<div class="example">
<pre class="example">ledger entry 2004/4/9 viva food 11 tips 2.50
</pre></div>

<p>This produces the following output:
</p>
<div class="smallexample">
<pre class="smallexample">2004/04/09 Viva Italiano
    Expenses:Food                       $11.00
    Expenses:Tips                        $2.50
    Liabilities:MasterCard             $-13.50
</pre></div>

<p>It works by finding a past transaction matching the regular expression
&lsquo;<samp>viva</samp>&rsquo;, and assuming that any accounts or amounts specified will
be similar to that earlier transaction.  If Ledger does not succeed in
generating a new entry, an error is printed and the exit code is set
to &lsquo;<samp>1</samp>&rsquo;.
</p>
<p>There is a shell script in the distribution&rsquo;s <samp>scripts</samp> directory
called <samp>entry</samp>, which simplifies the task of adding a new entry
to your ledger.  It launches <code>vi</code> to confirm that the entry
looks appropriate.
</p>
<p>Here are a few more examples of the <code>entry</code> command, assuming
the above journal entry:
</p>
<div class="example">
<pre class="example">ledger entry 4/9 viva 11.50
ledger entry 4/9 viva 11.50 checking # (from `checking')
ledger entry 4/9 viva food 11.50 tips 8
ledger entry 4/9 viva food 11.50 tips 8 cash
ledger entry 4/9 viva food $11.50 tips $8 cash
ledger entry 4/9 viva dining &quot;DM 11.50&quot;
</pre></div>

<hr>
<a name="Options"></a>
<div class="header">
<p>
Next: <a href="#Format-strings" accesskey="n" rel="next">Format strings</a>, Previous: <a href="#Commands" accesskey="p" rel="prev">Commands</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Options-1"></a>
<h3 class="section">2.3 Options</h3>

<p>With all of the reports, command-line options are useful to modify the
output generated.  These command-line options always occur before the
command word.  This is done to distinguish options from exclusive
regular expressions, which also begin with a dash.  The basic form for
most commands is:
</p>
<div class="example">
<pre class="example">ledger [OPTIONS] COMMAND [REGEXPS...] [-- [REGEXPS...]]
</pre></div>

<p>The <var>OPTIONS</var> and <var>REGEXPS</var> expressions are both optional.
You could just use &lsquo;<samp>ledger balance</samp>&rsquo;, without any options&mdash;which
prints a summary of all accounts.  But for more specific reporting, or
to change the appearance of the output, options are needed.
</p>
<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; <a href="#Basic-options" accesskey="1">Basic options</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Report-filtering" accesskey="2">Report filtering</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Output-customization" accesskey="3">Output customization</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Commodity-reporting" accesskey="4">Commodity reporting</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Environment-variables" accesskey="5">Environment variables</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>

<hr>
<a name="Basic-options"></a>
<div class="header">
<p>
Next: <a href="#Report-filtering" accesskey="n" rel="next">Report filtering</a>, Previous: <a href="#Options" accesskey="p" rel="prev">Options</a>, Up: <a href="#Options" accesskey="u" rel="up">Options</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Basic-options-1"></a>
<h4 class="subsection">2.3.1 Basic options</h4>

<p>These are the most basic command options.  Most likely, the user will
want to set them using <a href="#Environment-variables">Environment variables</a>, instead of using
actual command-line options:
</p>
<p><samp>--help</samp> (<samp>-h</samp>) prints a summary of all the options, and
what they are used for.  This can be a handy way to remember which
options do what.  This help screen is also printed if ledger is run
without a command.
</p>
<p><samp>--version</samp> (<samp>-v</samp>) prints the current version of ledger
and exits.  This is useful for sending bug reports, to let the author
know which version of ledger you are using.
</p>
<p><samp>--file FILE</samp> (<samp>-f FILE</samp>) reads FILE as a ledger file.
This command may be used multiple times.  FILE may also be a list of
file names separated by colons.  Typically, the environment variable
<code>LEDGER_FILE</code> is set, rather than using this command-line option.
</p>
<p><samp>--output FILE</samp> (<samp>-o FILE</samp>) redirects output from any
command to <var>FILE</var>.  By default, all output goes to standard
output.
</p>
<p><samp>--init-file FILE</samp> (<samp>-i FILE</samp>) causes FILE to be read by
ledger before any other ledger file.  This file may not contain any
transactions, but it may contain option settings.  To specify options
in the init file, use the same syntax as the command-line.  Here&rsquo;s an
example init file:
</p>
<div class="smallexample">
<pre class="smallexample">--price-db ~/finance/.pricedb

; ~/.ledgerrc ends here
</pre></div>

<p>Option settings on the command-line or in the environment always take
precedence over settings in the init file.
</p>
<p><samp>--cache FILE</samp> identifies FILE as the default binary cache
file.  That is, if the ledger files to be read are specified using the
environment variable <code>LEDGER_FILE</code>, then whenever a command is
finished a binary copy will be written to the specified cache, to
speed up the loading time of subsequent queries.  This filename can
also be given using the environment variable <code>LEDGER_CACHE</code>, or by
putting the option into your init file.  The <samp>--no-cache</samp>
option causes Ledger to always ignore the binary cache.
</p>
<p><samp>--account NAME</samp> (<samp>-a NAME</samp>) specifies the default
account which QIF file transactions are assumed to relate to.
</p>
<hr>
<a name="Report-filtering"></a>
<div class="header">
<p>
Next: <a href="#Output-customization" accesskey="n" rel="next">Output customization</a>, Previous: <a href="#Basic-options" accesskey="p" rel="prev">Basic options</a>, Up: <a href="#Options" accesskey="u" rel="up">Options</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Report-filtering-1"></a>
<h4 class="subsection">2.3.2 Report filtering</h4>

<p>These options change which transactions affect the outcome of a
report, in ways other than just using regular expressions:
</p>
<p><samp>--current</samp>(<samp>-c</samp>) displays only entries occurring on or
before the current date.
</p>
<p><samp>--begin DATE</samp> (<samp>-b DATE</samp>) constrains the report to
entries on or after <var>DATE</var>.  Only entries after that date will be
calculated, which means that the running total in the balance report
will always start at zero with the first matching entry.  (Note: This
is different from using <samp>--display</samp> to constrain what is
displayed).
</p>
<p><samp>--end DATE</samp> (<samp>-e DATE</samp>) constrains the report so that
entries on or after <var>DATE</var> are not considered.  The ending date
is inclusive.
</p>
<p><samp>--period STR</samp> (<samp>-p STR</samp>) sets the reporting period
to <var>STR</var>.  This will subtotal all matching entries within each
period separately, making it easy to see weekly, monthly, quarterly,
etc., transaction totals.  A period string can even specify the
beginning and end of the report range, using simple terms like &ldquo;last
june&rdquo; or &ldquo;next month&rdquo;.  For more using period expressions, see
<a href="#Period-expressions">Period expressions</a>.
</p>
<p><samp>--period-sort EXPR</samp> sorts the transactions within each
reporting period using the value expression <var>EXPR</var>.  This is most
often useful when reporting monthly expenses, in order to view the
highest expense categories at the top of each month:
</p>
<div class="example">
<pre class="example">ledger -M --period-sort -At reg ^Expenses
</pre></div>

<p><samp>--cleared</samp> (<samp>-C</samp>) displays only transactions whose entry
has been marked &ldquo;cleared&rdquo; (by placing an asterix to the right of the
date).
</p>
<p><samp>--uncleared</samp> (<samp>-U</samp>) displays only transactions whose
entry has not been marked &ldquo;cleared&rdquo; (i.e., if there is no asterix to
the right of the date).
</p>
<p><samp>--real</samp> (<samp>-R</samp>) displays only real transactions, not
virtual.  (A virtual transaction is indicated by surrounding the
account name with parentheses or brackets; see the section on using
virtual transactions for more information).
</p>
<p><samp>--actual</samp> (<samp>-L</samp>) displays only actual transactions, and
not those created due to automated transactions.
</p>
<p><samp>--related</samp> (<samp>-r</samp>) displays transactions that are
related to whichever transactions would otherwise have matched the
filtering criteria.  In the register report, this shows where money
went to, or the account it came from.  In the balance report, it shows
all the accounts affected by entries having a related transaction.
For example, if a file had this entry:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/20 Safeway
    Expenses:Food                       $65.00
    Expenses:Cash                       $20.00
    Assets:Checking                    $-85.00
</pre></div>

<p>And the register command was:
</p>
<div class="example">
<pre class="example">ledger -r register food
</pre></div>

<p>The following would be output, showing the transactions related to the
transaction that matched:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/20 Safeway              Expenses:Cash               $-20.00      $-20.00
                                Assets:Checking              $85.00       $65.00
</pre></div>

<p><samp>--budget</samp> is useful for displaying how close your transactions
meet your budget.  <samp>--add-budget</samp> also shows unbudgeted
transactions, while <samp>--unbudgeted</samp> shows only those.
<samp>--forecast</samp> is a related option that projects your budget into
the future, showing how it will affect future balances.
See <a href="#Budgeting-and-forecasting">Budgeting and forecasting</a>.
</p>
<p><samp>--limit EXPR</samp> (<samp>-l EXPR</samp>) limits which transactions
take part in the calculations of a report.
</p>
<p><samp>--amount EXPR</samp> (<samp>-t EXPR</samp>) changes the value expression
used to calculate the &ldquo;value&rdquo; column in the <code>register</code>
report, the amount used to calculate account totals in the
<code>balance</code> report, and the values printed in the
<code>equity</code> report.  See <a href="#Value-expressions">Value expressions</a>.
</p>
<p><samp>--total EXPR</samp> (<samp>-T EXPR</samp>) sets the value expression
used for the &ldquo;totals&rdquo; column in the <code>register</code> and
<code>balance</code> reports.
</p>
<hr>
<a name="Output-customization"></a>
<div class="header">
<p>
Next: <a href="#Commodity-reporting" accesskey="n" rel="next">Commodity reporting</a>, Previous: <a href="#Report-filtering" accesskey="p" rel="prev">Report filtering</a>, Up: <a href="#Options" accesskey="u" rel="up">Options</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Output-customization-1"></a>
<h4 class="subsection">2.3.3 Output customization</h4>

<p>These options affect only the output, but not which transactions are
used to create it:
</p>
<p><samp>--collapse</samp> (<samp>-n</samp>) causes entries in a
<code>register</code> report with multiple transactions to be collapsed
into a single, subtotaled entry.
</p>
<p><samp>--subtotal</samp> (<samp>-s</samp>) causes all entries in a
<code>register</code> report to be collapsed into a single, subtotaled
entry.
</p>
<p><samp>--by-payee</samp> (<samp>-P</samp>) reports subtotals by payee.
</p>
<p><samp>--comm-as-payee</samp> (<samp>-x</samp>) changes the payee of every
transaction to be the commodity used in that transaction.  This can be
useful when combined with other options, such as <samp>-s</samp>.
</p>
<p><samp>--empty</samp> (<samp>-E</samp>) includes even empty accounts in the
<code>balance</code> report.
</p>
<p><samp>--weekly</samp> (<samp>-W</samp>) reports transaction totals by the
week.  The week begins on whichever day of the week begins the month
containing that transaction.  To set a specific begin date, use a
period string, such as &lsquo;<samp>weekly from DATE</samp>&rsquo;.  <samp>--monthly</samp>
(<samp>-M</samp>) reports transaction totals by month; <samp>--yearly</samp>
(<samp>-Y</samp>) reports transaction totals by year.  For more complex
period, using the <samp>--period</samp> option described above.
</p>
<p><samp>--dow</samp> reports transactions totals for each day of the week.
This is an easy way to see if weekend spending is more than on
weekdays.
</p>
<p><samp>--sort EXPR</samp> (<samp>-S EXPR</samp>) sorts a report by comparing
the values determined using the value expression <var>EXPR</var>.  For
example, using <samp>-S -UT</samp> in the balance report will sort account
balances from greatest to least, using the absolute value of the
total.  For more on how to use value expressions, see <a href="#Value-expressions">Value expressions</a>.
</p>
<p><samp>--wide</samp> (<samp>-w</samp>) causes the default <code>register</code>
report to assume 132 columns instead of 80.
</p>
<p><samp>--head</samp> causes only the first N entries to be printed.  This
is different from using the command-line utility <code>head</code>, which
would limit to the first N transactions.  <samp>--tail</samp> outputs only
the last N entries.  Both options may be used simultaneously.  If a
negative amount is given, it will invert the meaning of the flag
(instead of the first five entries being printed, for example, it
would print all but the first five).
</p>
<p><samp>--pager</samp> tells Ledger to pass its output to the given pager
program&mdash;very useful when the output is especially long.  This
behavior can be made the default by setting the <code>LEDGER_PAGER</code>
environment variable.
</p>
<p><samp>--average</samp> (<samp>-A</samp>) reports the average transaction
value.
</p>
<p><samp>--deviation</samp> (<samp>-D</samp>) reports each transaction&rsquo;s
deviation from the average.  It is only meaningful in the
<code>register</code> and <code>prices</code> reports.
</p>
<p><samp>--percentage</samp> (<samp>-%</samp>) shows account subtotals in the
<code>balance</code> report as percentages of the parent account.
</p>
<p><samp>--totals</samp> include running total information in the
<code>xml</code> report.
</p>
<p><samp>--amount-data</samp> (<samp>-j</samp>) changes the <code>register</code>
report so that it output nothing but the date and the value column,
and the latter without commodities.  This is only meaningful if the
report uses a single commodity.  This data can then be fed to other
programs, which could plot the date, analyze it, etc.
</p>
<p><samp>--total-data</samp> (<samp>-J</samp>) changes the <code>register</code>
report so that it output nothing but the date and totals column,
without commodities.
</p>
<p><samp>--display EXPR</samp> (<samp>-d EXPR</samp>) limits which transactions
or accounts or actually displayed in a report.  They might still be
calculated, and be part of the running total of a register report, for
example, but they will not be displayed.  This is useful for seeing
last month&rsquo;s checking transactions, against a running balance which
includes all transaction values:
</p>
<div class="example">
<pre class="example">ledger -d &quot;d&gt;=[last month]&quot; reg checking
</pre></div>

<p>The output from this command is very different from the following,
whose running total includes only transactions from the last month
onward:
</p>
<div class="example">
<pre class="example">ledger -p &quot;last month&quot; reg checking
</pre></div>

<p>Which is more useful depends on what you&rsquo;re looking to know: the total
amount for the reporting range (<samp>-p</samp>), or simply a display
restricted to the reporting range (using <samp>-d</samp>).
</p>
<p><samp>--date-format STR</samp> (<samp>-y STR</samp>) changes the basic date
format used by reports.  The default uses a date like 2004/08/01,
which represents the default date format of &lsquo;<samp>%Y/%m/%d</samp>&rsquo;.  To
change the way dates are printed in general, the easiest way is to put
<samp>--date-format FORMAT</samp> in the Ledger initialization file
<samp>~/.ledgerrc</samp> (or the file referred to by <code>LEDGER_INIT</code>).
</p>
<p><samp>--format STR</samp> (<samp>-F STR</samp>) sets the reporting format for
whatever report ledger is about to make.  See <a href="#Format-strings">Format strings</a>.
There are also specific format commands for each report type:
</p>
<ul>
<li> <samp>--balance-format STR</samp>
</li><li> <samp>--register-format STR</samp>
</li><li> <samp>--print-format STR</samp>
</li><li> <samp>--plot-amount-format STR</samp> (-j <code>register</code>)
</li><li> <samp>--plot-total-format STR</samp> (-J <code>register</code>)
</li><li> <samp>--equity-format STR</samp>
</li><li> <samp>--prices-format STR</samp>
</li><li> <samp>--wide-register-format STR</samp> (-w <code>register</code>)
</li></ul>

<hr>
<a name="Commodity-reporting"></a>
<div class="header">
<p>
Next: <a href="#Environment-variables" accesskey="n" rel="next">Environment variables</a>, Previous: <a href="#Output-customization" accesskey="p" rel="prev">Output customization</a>, Up: <a href="#Options" accesskey="u" rel="up">Options</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Commodity-reporting-1"></a>
<h4 class="subsection">2.3.4 Commodity reporting</h4>

<p>These options affect how commodity values are displayed:
</p>
<p><samp>--price-db FILE</samp> sets the file that is used for recording
downloaded commodity prices.  It is always read on startup, to
determine historical prices.  Other settings can be placed in this
file manually, to prevent downloading quotes for a specific, for
example.  This is done by adding a line like the following:
</p>
<div class="example">
<pre class="example">; Don't download quotes for the dollar, or timelog values
N $
N h
</pre></div>

<p><samp>--price-exp MINS</samp> (<samp>-L MINS</samp>) sets the expected
freshness of price quotes, in minutes.  That is, if the last known
quote for any commodity is older than this value&mdash;and if
<samp>--download</samp> is being used&mdash;then the Internet will be
consulted again for a newer price.  Otherwise, the old price is still
considered to be fresh enough.
</p>
<p><samp>--download</samp> (<samp>-Q</samp>) causes quotes to be automagically
downloaded, as needed, by running a script named <code>getquote</code>
and expecting that script to return a value understood by ledger.  A
sample implementation of a <code>getquote</code> script, implemented in
Perl, is provided in the distribution.  Downloaded quote price are
then appended to the price database, usually specified using the
environment variable <code>LEDGER_PRICE_DB</code>.
</p>
<p>There are several different ways that ledger can report the totals it
displays.  The most flexible way to adjust them is by using value
expressions, and the <samp>-t</samp> and <samp>-T</samp> options.  However,
there are also several &ldquo;default&rdquo; reports, which will satisfy most
users basic reporting needs:
</p>
<dl compact="compact">
<dt><code>-O, --quantity</code></dt>
<dd><p>Reports commodity totals (this is the default)
</p>
</dd>
<dt><code>-B, --basis</code></dt>
<dd><p>Reports the cost basis for all transactions.
</p>
</dd>
<dt><code>-V, --market</code></dt>
<dd><p>Reports the last known market value for all commodities.
</p>
</dd>
<dt><code>-g, --performance</code></dt>
<dd><p>Reports the net gain/loss for each transaction in a <code>register</code>
report.
</p>
</dd>
<dt><code>-G --gain</code></dt>
<dd><p>Reports the net gain/loss for all commodities in the report that have
a price history.
</p></dd>
</dl>

<hr>
<a name="Environment-variables"></a>
<div class="header">
<p>
Previous: <a href="#Commodity-reporting" accesskey="p" rel="prev">Commodity reporting</a>, Up: <a href="#Options" accesskey="u" rel="up">Options</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Environment-variables-1"></a>
<h4 class="subsection">2.3.5 Environment variables</h4>

<p>Every option to ledger may be set using an environment variable.  If
an option has a long name such <samp>--this-option</samp>, setting the
environment variable <code>LEDGER_THIS_OPTION</code> will have the same
affect as specifying that option on the command-line.  Options on the
command-line always take precedence over environment variable
settings, however.
</p>
<p>Note that you may also permanently specify option values by placing
option settings in the file <samp>~/.ledgerrc</samp>, for example:
</p>
<div class="example">
<pre class="example">--cache /tmp/.mycache
</pre></div>

<hr>
<a name="Format-strings"></a>
<div class="header">
<p>
Next: <a href="#Value-expressions" accesskey="n" rel="next">Value expressions</a>, Previous: <a href="#Options" accesskey="p" rel="prev">Options</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Format-strings-1"></a>
<h3 class="section">2.4 Format strings</h3>

<p>Format strings may be used to change the output format of reports.
They are specified by passing a formatting string to the
<samp>--format</samp> (<samp>-F</samp>) option.  Within that string,
constructs are allowed which make it possible to display the various
parts of an account or transaction in custom ways.
</p>
<p>Within a format strings, a substitution is specified using a percent
character (&lsquo;<samp>%</samp>&rsquo;).  The basic format of all substitutions is:
</p>
<div class="example">
<pre class="example">%[-][MIN WIDTH][.MAX WIDTH]EXPR
</pre></div>

<p>If the optional minus sign (&lsquo;<samp>-</samp>&rsquo;) follows the percent character,
whatever is substituted will be left justified.  The default is right
justified.  If a minimum width is given next, the substituted text
will be at least that wide, perhaps wider.  If a period and a maximum
width is given, the substituted text will never be wider than this,
and will be truncated to fit.  Here are some examples:
</p>
<div class="example">
<pre class="example">%-P     An entry's payee, left justified
%20P    The same, right justified, at least 20 chars wide
%.20P   The same, no more than 20 chars wide
%-.20P  Left justified, maximum twenty chars wide
</pre></div>

<p>The expression following the format constraints can be a single
letter, or an expression enclosed in parentheses or brackets.  The
allowable expressions are:
</p>
<dl compact="compact">
<dt><code>%</code></dt>
<dd><p>Inserts a percent sign.
</p>
</dd>
<dt><code>t</code></dt>
<dd><p>Inserts the results of the value expression specified by <samp>-t</samp>.
If <samp>-t</samp> was not specified, the current report style&rsquo;s value
expression is used.
</p>
</dd>
<dt><code>T</code></dt>
<dd><p>Inserts the results of the value expression specified by <samp>-T</samp>.
If <samp>-T</samp> was not specified, the current report style&rsquo;s value
expression is used.
</p>
</dd>
<dt><code>|</code></dt>
<dd><p>Inserts a single space.  This is useful if a width is specified, for
inserting a certain number of spaces.
</p>
</dd>
<dt><code>_</code></dt>
<dd><p>Inserts a space for each level of an account&rsquo;s depth.  That is, if an
account has two parents, this construct will insert two spaces.  If a
minimum width is specified, that much space is inserted for each level
of depth.  Thus &lsquo;<samp>%5_</samp>&rsquo;, for an account with four parents, will
insert twenty spaces.
</p>
</dd>
<dt><code>(EXPR)</code></dt>
<dd><p>Inserts the amount resulting from the value expression given in
parentheses.  To insert five times the total value of an account, for
example, one could say &lsquo;<samp>%12(5*O)</samp>&rsquo;.  Note: It&rsquo;s important to put
the five first in that expression, so that the commodity doesn&rsquo;t get
stripped from the total.
</p>
</dd>
<dt><code>[DATEFMT]</code></dt>
<dd><p>Inserts the result of formatting a transaction&rsquo;s date with a date
format string, exactly like those supported by <code>strftime</code>.  For
example: &lsquo;<samp>%[%Y/%m/%d %H:%M:%S]</samp>&rsquo;.
</p>
</dd>
<dt><code>S</code></dt>
<dd><p>Insert the pathname of the file from which the entry&rsquo;s data was read.
</p>
</dd>
<dt><code>B</code></dt>
<dd><p>Inserts the beginning character position of that entry within the file.
</p>
</dd>
<dt><code>b</code></dt>
<dd><p>Inserts the beginning line of that entry within the file.
</p>
</dd>
<dt><code>E</code></dt>
<dd><p>Inserts the ending character position of that entry within the file.
</p>
</dd>
<dt><code>e</code></dt>
<dd><p>Inserts the ending line of that entry within the file.
</p>
</dd>
<dt><code>D</code></dt>
<dd><p>By default, this is the same as &lsquo;<samp>%[%Y/%m%/d]</samp>&rsquo;.  The date format
used can be changed at any time with the <samp>-y</samp> flag, however.
Using &lsquo;<samp>%D</samp>&rsquo; gives the user more control over the way dates are
output.
</p>
</dd>
<dt><code>d</code></dt>
<dd><p>This is the same as the &lsquo;<samp>%D</samp>&rsquo; option, unless the entry has an
effective date, in which case it prints
&lsquo;<samp>[ACTUAL_DATE=EFFECtIVE_DATE]</samp>&rsquo;.
</p>
</dd>
<dt><code>X</code></dt>
<dd><p>If a transaction has been cleared, this inserts &lsquo;<samp>*</samp>&rsquo; followed by a
space; otherwise nothing is inserted.
</p>
</dd>
<dt><code>Y</code></dt>
<dd><p>This is the same as &lsquo;<samp>%X</samp>&rsquo;, except that it only displays a state
character if all of the member transactions have the same state.
</p>
</dd>
<dt><code>C</code></dt>
<dd><p>Inserts the checking number for an entry, in parentheses, followed by
a space; if none was specified, nothing is inserted.
</p>
</dd>
<dt><code>P</code></dt>
<dd><p>Inserts the payee related to a transaction.
</p>
</dd>
<dt><code>a</code></dt>
<dd><p>Inserts the optimal short name for an account.  This is normally used
in balance reports.  It prints a parent account&rsquo;s name if that name
has not been printed yet, otherwise it just prints the account&rsquo;s name.
</p>
</dd>
<dt><code>A</code></dt>
<dd><p>Inserts the full name of an account.
</p>
</dd>
<dt><code>W</code></dt>
<dd><p>This is the same as &lsquo;<samp>%A</samp>&rsquo;, except that it first displays the
transaction&rsquo;s state <em>if the entry&rsquo;s transaction states are not
all the same</em>, followed by the full account name.  This is offered as
a printing optimization, so that combined with &lsquo;<samp>%Y</samp>&rsquo;, only the
minimum amount of state detail is printed.
</p>
</dd>
<dt><code>o</code></dt>
<dd><p>Inserts the &ldquo;optimized&rdquo; form of a transaction&rsquo;s amount.  This is
used by the print report.  In some cases, this inserts nothing; in
others, it inserts the transaction amount and its cost.  It&rsquo;s use is
not recommend unless you are modifying the print report.
</p>
</dd>
<dt><code>n</code></dt>
<dd><p>Inserts the note associated with a transaction, preceded by two spaces
and a semi-colon, if it exists.  Thus, no none becomes an empty
string, while the note &lsquo;<samp>foo</samp>&rsquo; is substituted as &lsquo;<samp> ; foo</samp>&rsquo;.
</p>
</dd>
<dt><code>N</code></dt>
<dd><p>Inserts the note associated with a transaction, if one exists.
</p>
</dd>
<dt><code>/</code></dt>
<dd><p>The &lsquo;<samp>%/</samp>&rsquo; construct is special.  It separates a format string
between what is printed for the first transaction of an entry, and
what is printed for all subsequent transactions.  If not used, the
same format string is used for all transactions.
</p></dd>
</dl>

<hr>
<a name="Value-expressions"></a>
<div class="header">
<p>
Next: <a href="#Period-expressions" accesskey="n" rel="next">Period expressions</a>, Previous: <a href="#Format-strings" accesskey="p" rel="prev">Format strings</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Value-expressions-1"></a>
<h3 class="section">2.5 Value expressions</h3>

<p>Value expressions are an expression language used by Ledger to
calculate values used by the program for many different purposes:
</p>
<ol>
<li> The values displayed in reports
</li><li> For predicates (where truth is anything non-zero), to determine which
transactions are calculated (<samp>-l</samp>) or displayed (<samp>-d</samp>).
</li><li> For sorting criteria, to yield the sort key.
</li><li> In the matching criteria used by automated transactions.
</li></ol>

<p>Value expressions support most simple math and logic operators, in
addition to a set of one letter functions and variables.  A function&rsquo;s
argument is whatever follows it.  The following is a display predicate
that I use with the <code>balance</code> command:
</p>
<div class="example">
<pre class="example">ledger -d /^Liabilities/?T&lt;0:UT&gt;100 balance
</pre></div>

<p>The effect is that account totals are displayed only if: 1) A
Liabilities account has a total less than zero; or 2) the absolute
value of the account&rsquo;s total exceeds 100 units of whatever commodity
contains.  If it contains multiple commodities, only one of them must
exceed 100 units.
</p>
<p>Display predicates are also very handy with register reports, to
constrain which entries are printed.  For example, the following
command shows only entries from the beginning of the current month,
while still calculating the running balance based on all entries:
</p>
<div class="example">
<pre class="example">ledger -d &quot;d&gt;[this month]&quot; register checking
</pre></div>

<p>This advantage to this command&rsquo;s complexity is that it prints the
running total in terms of all entries in the register.  The following,
simpler command is similar, but totals only the displayed
transactions:
</p>
<div class="example">
<pre class="example">ledger -b &quot;this month&quot; register checking
</pre></div>

<a name="Variables"></a>
<h4 class="subsection">2.5.1 Variables</h4>

<p>Below are the one letter variables available in any value expression.
For the register and print commands, these variables relate to
individual transactions, and sometimes the account affected by a
transaction.  For the balance command, these variables relate to
accounts&mdash;often with a subtle difference in meaning.  The use of each
variable for both is specified.
</p>
<dl compact="compact">
<dt><code>t</code></dt>
<dd><p>This maps to whatever the user specified with <samp>-t</samp>.  In a
register report, <samp>-t</samp> changes the value column; in a balance
report, it has no meaning by default.  If <samp>-t</samp> was not
specified, the current report style&rsquo;s value expression is used.
</p>
</dd>
<dt><code>T</code></dt>
<dd><p>This maps to whatever the user specified with <samp>-T</samp>.  In a
register report, <samp>-T</samp> changes the totals column; in a balance
report, this is the value given for each account.  If <samp>-T</samp> was
not specified, the current report style&rsquo;s value expression is used.
</p>
</dd>
<dt><code>m</code></dt>
<dd><p>This is always the present moment/date.
</p></dd>
</dl>

<a name="Transaction_002faccount-details"></a>
<h4 class="subsubsection">2.5.1.1 Transaction/account details</h4>

<dl compact="compact">
<dt><code>d</code></dt>
<dd><p>A transaction&rsquo;s date, as the number of seconds past the epoch.  This
is always &ldquo;today&rdquo; for an account.
</p>
</dd>
<dt><code>a</code></dt>
<dd><p>The transaction&rsquo;s amount; the balance of an account, without
considering children.
</p>
</dd>
<dt><code>b</code></dt>
<dd><p>The cost of a transaction; the cost of an account, without its
children.
</p>
</dd>
<dt><code>v</code></dt>
<dd><p>The market value of a transaction, or an account without its children.
</p>
</dd>
<dt><code>g</code></dt>
<dd><p>The net gain (market value minus cost basis), for a transaction or an
account without its children.  It is the same as &lsquo;<samp>v-b</samp>&rsquo;.
</p>
</dd>
<dt><code>l</code></dt>
<dd><p>The depth (&ldquo;level&rdquo;) of an account.  If an account has one parent,
it&rsquo;s depth is one.
</p>
</dd>
<dt><code>n</code></dt>
<dd><p>The index of a transaction, or the count of transactions affecting an
account.
</p>
</dd>
<dt><code>X</code></dt>
<dd><p>1 if a transaction&rsquo;s entry has been cleared, 0 otherwise.
</p>
</dd>
<dt><code>R</code></dt>
<dd><p>1 if a transaction is not virtual, 0 otherwise.
</p>
</dd>
<dt><code>Z</code></dt>
<dd><p>1 if a transaction is not automated, 0 otherwise.
</p></dd>
</dl>

<a name="Calculated-totals"></a>
<h4 class="subsubsection">2.5.1.2 Calculated totals</h4>

<dl compact="compact">
<dt><code>O</code></dt>
<dd><p>The total of all transactions seen so far, or the total of an account
and all its children.
</p>
</dd>
<dt><code>N</code></dt>
<dd><p>The total count of transactions affecting an account and all its
children.
</p>
</dd>
<dt><code>B</code></dt>
<dd><p>The total cost of all transactions seen so far; the total cost of an
account and all its children.
</p>
</dd>
<dt><code>V</code></dt>
<dd><p>The market value of all transactions seen so far, or of an account and
all its children.
</p>
</dd>
<dt><code>G</code></dt>
<dd><p>The total net gain (market value minus cost basis), for a series of
transactions, or an account and its children.  It is the same as
&lsquo;<samp>V-B</samp>&rsquo;.
</p></dd>
</dl>

<a name="Functions"></a>
<h4 class="subsection">2.5.2 Functions</h4>

<p>The available one letter functions are:
</p>
<dl compact="compact">
<dt><code>-</code></dt>
<dd><p>Negates the argument.
</p>
</dd>
<dt><code>U</code></dt>
<dd><p>The absolute (unsigned) value of the argument.
</p>
</dd>
<dt><code>S</code></dt>
<dd><p>Strips the commodity from the argument.
</p>
</dd>
<dt><code>A</code></dt>
<dd><p>The arithmetic mean of the argument; &lsquo;<samp>Ax</samp>&rsquo; is the same as
&lsquo;<samp>x/n</samp>&rsquo;.
</p>
</dd>
<dt><code>P</code></dt>
<dd><p>The present market value of the argument.  The syntax &lsquo;<samp>P(x,d)</samp>&rsquo; is
supported, which yields the market value at time &lsquo;<samp>d</samp>&rsquo;.  If no date
is given, then the current moment is used.
</p></dd>
</dl>

<a name="Operators"></a>
<h4 class="subsection">2.5.3 Operators</h4>

<p>The binary and ternary operators, in order of precedence, are:
</p>
<ol>
<li> &lsquo;<samp>* /</samp>&rsquo;
</li><li> &lsquo;<samp>+ -</samp>&rsquo;
</li><li> &lsquo;<samp>! &lt; &gt; =</samp>&rsquo;
</li><li> &lsquo;<samp>&amp; | ?:</samp>&rsquo;
</li></ol>

<a name="Complex-expressions"></a>
<h4 class="subsection">2.5.4 Complex expressions</h4>

<p>More complicated expressions are possible using:
</p>
<dl compact="compact">
<dt><code>NUM</code></dt>
<dd><p>A plain integer represents a commodity-less amount.
</p>
</dd>
<dt><code>{AMOUNT}</code></dt>
<dd><p>An amount in braces can be any kind of amount supported by ledger,
with or without a commodity.  Use this for decimal values.
</p>
</dd>
<dt><code>/REGEXP/</code></dt>
<dt><code>W/REGEXP/</code></dt>
<dd><p>A regular expression that matches against an account&rsquo;s full name.  If
a transaction, this will match against the account affected by the
transaction.
</p>
</dd>
<dt><code>//REGEXP/</code></dt>
<dt><code>p/REGEXP/</code></dt>
<dd><p>A regular expression that matches against an entry&rsquo;s payee name.
</p>
</dd>
<dt><code>///REGEXP/</code></dt>
<dt><code>w/REGEXP/</code></dt>
<dd><p>A regular expression that matches against an account&rsquo;s base name.  If
a transaction, this will match against the account affected by the
transaction.
</p>
</dd>
<dt><code>c/REGEXP/</code></dt>
<dd><p>A regular expression that matches against the entry code (the text
that occurs between parentheses before the payee name).
</p>
</dd>
<dt><code>e/REGEXP/</code></dt>
<dd><p>A regular expression that matches against a transaction&rsquo;s note, or
comment field.
</p>
</dd>
<dt><code>(EXPR)</code></dt>
<dd><p>A sub-expression is nested in parenthesis.  This can be useful passing
more complicated arguments to functions, or for overriding the natural
precedence order of operators.
</p>
</dd>
<dt><code>[DATE]</code></dt>
<dd><p>Useful specifying a date in plain terms.  For example, you could say
&lsquo;<samp>[2004/06/01]</samp>&rsquo;.
</p></dd>
</dl>

<hr>
<a name="Period-expressions"></a>
<div class="header">
<p>
Next: <a href="#File-format" accesskey="n" rel="next">File format</a>, Previous: <a href="#Value-expressions" accesskey="p" rel="prev">Value expressions</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Period-expressions-1"></a>
<h3 class="section">2.6 Period expressions</h3>

<p>A period expression indicates a span of time, or a reporting interval,
or both.  The full syntax is:
</p>
<div class="example">
<pre class="example">[INTERVAL] [BEGIN] [END]
</pre></div>

<p>The optional <var>INTERVAL</var> part may be any one of:
</p>
<div class="example">
<pre class="example">every day
every week
every monthly
every quarter
every year
every N days     # N is any integer
every N weeks
every N months
every N quarters
every N years
daily
weekly
biweekly
monthly
bimonthly
quarterly
yearly
</pre></div>

<p>After the interval, a begin time, end time, both or neither may be
specified.  As for the begin time, it can be either of:
</p>
<div class="example">
<pre class="example">from &lt;SPEC&gt;
since &lt;SPEC&gt;
</pre></div>

<p>The end time can be either of:
</p>
<div class="example">
<pre class="example">to &lt;SPEC&gt;
until &lt;SPEC&gt;
</pre></div>

<p>Where <var>SPEC</var> can be any of:
</p>
<div class="example">
<pre class="example">2004
2004/10
2004/10/1
10/1
october
oct
this week  # or day, month, quarter, year
next week
last week
</pre></div>

<p>The beginning and ending can be given at the same time, if it spans a
single period.  In that case, just use <var>SPEC</var> by itself.  In that
case, the period &lsquo;<samp>oct</samp>&rsquo;, for example, will cover all the days in
october.  The possible forms are:
</p>
<div class="example">
<pre class="example">&lt;SPEC&gt;
in &lt;SPEC&gt;
</pre></div>

<p>Here are a few examples of period expressions:
</p>
<div class="example">
<pre class="example">monthly
monthly in 2004
weekly from oct
weekly from last month
from sep to oct
from 10/1 to 10/5
monthly until 2005
from apr
until nov
last oct
weekly last august
</pre></div>

<hr>
<a name="File-format"></a>
<div class="header">
<p>
Next: <a href="#Some-typical-queries" accesskey="n" rel="next">Some typical queries</a>, Previous: <a href="#Period-expressions" accesskey="p" rel="prev">Period expressions</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="File-format-1"></a>
<h3 class="section">2.7 File format</h3>

<p>The ledger file format is quite simple, but also very flexible.  It
supports many options, though typically the user can ignore most of
them.  They are summarized below.
</p>
<p>The initial character of each line determines what the line means, and
how it should be interpreted.  Allowable initial characters are:
</p>
<dl compact="compact">
<dt><code>NUMBER</code></dt>
<dd><p>A line beginning with a number denotes an entry.  It may be followed
by any number of lines, each beginning with whitespace, to denote the
entry&rsquo;s account transactions.  The format of the first line is:
</p>
<div class="example">
<pre class="example">DATE[=EDATE] [*|!] [(CODE)] DESC
</pre></div>

<p>If &lsquo;<samp>*</samp>&rsquo; appears after the date (with optional effective date), it
indicates the entry is &ldquo;cleared&rdquo;, which can mean whatever the user
wants it t omean.  If &lsquo;<samp>!</samp>&rsquo; appears after the date, it indicates d
the entry is &ldquo;pending&rdquo;; i.e., tentatively cleared from the user&rsquo;s
point of view, but not yet actually cleared.  If a &lsquo;<samp>CODE</samp>&rsquo; appears
in parentheses, it may be used to indicate a check number, or the type
of the transaction.  Following these is the payee, or a description of
the transaction.
</p>
<p>The format of each following transaction is:
</p>
<div class="example">
<pre class="example">  ACCOUNT  AMOUNT  [; NOTE]
</pre></div>

<p>The &lsquo;<samp>ACCOUNT</samp>&rsquo; may be surrounded by parentheses if it is a virtual
transactions, or square brackets if it is a virtual transactions that
must balance.  The &lsquo;<samp>AMOUNT</samp>&rsquo; can be followed by a per-unit
transaction cost, by specifying &lsquo;<samp>@ AMOUNT</samp>&rsquo;, or a complete
transaction cost with &lsquo;<samp>@@ AMOUNT</samp>&rsquo;.  Lastly, the &lsquo;<samp>NOTE</samp>&rsquo; may
specify an actual and/or effective date for the transaction by using
the syntax &lsquo;<samp>[ACTUAL_DATE]</samp>&rsquo; or &lsquo;<samp>[=EFFECTIVE_DATE]</samp>&rsquo; or
&lsquo;<samp>[ACTUAL_DATE=EFFECtIVE_DATE]</samp>&rsquo;.
</p>
</dd>
<dt><code>=</code></dt>
<dd><p>An automated entry.  A value expression must appear after the equal
sign.
</p>
<p>After this initial line there should be a set of one or more
transactions, just as if it were normal entry.  If the amounts of the
transactions have no commodity, they will be applied as modifiers to
whichever real transaction is matched by the value expression.
</p>
</dd>
<dt><code>~</code></dt>
<dd><p>A period entry.  A period expression must appear after the tilde.
</p>
<p>After this initial line there should be a set of one or more
transactions, just as if it were normal entry.
</p>
</dd>
<dt><code>!</code></dt>
<dd><p>A line beginning with an exclamation mark denotes a command directive.
It must be immediately followed by the command word.  The supported
commands are:
</p>
<dl compact="compact">
<dt>&lsquo;<samp>!include</samp>&rsquo;</dt>
<dd><p>Include the stated ledger file.
</p>
</dd>
<dt>&lsquo;<samp>!account</samp>&rsquo;</dt>
<dd><p>The account name is given is taken to be the parent of all
transactions that follow, until &lsquo;<samp>!end</samp>&rsquo; is seen.
</p>
</dd>
<dt>&lsquo;<samp>!end</samp>&rsquo;</dt>
<dd><p>Ends an account block.
</p></dd>
</dl>

</dd>
<dt><code>;</code></dt>
<dd><p>A line beginning with a colon indicates a comment, and is ignored.
</p>
</dd>
<dt><code>Y</code></dt>
<dd><p>If a line begins with a capital Y, it denotes the year used for all
subsequent entries that give a date without a year.  The year should
appear immediately after the Y, for example: &lsquo;<samp>Y2004</samp>&rsquo;.  This is
useful at the beginning of a file, to specify the year for that file.
If all entries specify a year, however, this command has no effect.
</p>
</dd>
<dt><code>P</code></dt>
<dd><p>Specifies a historical price for a commodity.  These are usually found
in a pricing history file (see the <samp>-Q</samp> option).  The syntax
is:
</p><div class="example">
<pre class="example">P DATE SYMBOL PRICE
</pre></div>

</dd>
<dt><code>N SYMBOL</code></dt>
<dd><p>Indicates that pricing information is to be ignored for a given
symbol, nor will quotes ever be downloaded for that symbol.  Useful
with a home currency, such as the dollar ($).  It is recommended that
these pricing options be set in the price database file, which
defaults to <samp>~/.pricedb</samp>.  The syntax for this command is:
</p><div class="example">
<pre class="example">N SYMBOL
</pre></div>

</dd>
<dt><code>D AMOUNT</code></dt>
<dd><p>Specifies the default commodity to use, by specifying an amount in the
expected format.  The <code>entry</code> command will use this commodity
as the default when none other can be determined.  This command may be
used multiple times, to set the default flags for different
commodities; whichever is seen last is used as the default commodity.
For example, to set US dollars as the default commodity, while also
setting the thousands flag and decimal flag for that commodity, use:
</p><div class="example">
<pre class="example">D $1,000.00
</pre></div>

</dd>
<dt><code>C AMOUNT1 = AMOUNT2</code></dt>
<dd><p>Specifies a commodity conversion, where the first amount is given to
be equivalent to the second amount.  The first amount should use the
decimal precision desired during reporting:
</p><div class="example">
<pre class="example">C 1.00 Kb = 1024 bytes
</pre></div>

</dd>
<dt><code>i, o, b, h</code></dt>
<dd><p>These four relate to timeclock support, which permits ledger to read
timelog files.  See the timeclock&rsquo;s documentation for more info on the
syntax of its timelog files.
</p></dd>
</dl>

<hr>
<a name="Some-typical-queries"></a>
<div class="header">
<p>
Next: <a href="#Budgeting-and-forecasting" accesskey="n" rel="next">Budgeting and forecasting</a>, Previous: <a href="#File-format" accesskey="p" rel="prev">File format</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Some-typical-queries-1"></a>
<h3 class="section">2.8 Some typical queries</h3>

<p>A query such as the following shows all expenses since last
October, sorted by total:
</p>
<div class="example">
<pre class="example">ledger -b &quot;last oct&quot; -s -S T bal ^expenses
</pre></div>

<p>From left to right the options mean: Show entries since October, 2003;
show all sub-accounts; sort by the absolute value of the total; and
report the balance for all expenses.
</p>
<a name="Reporting-monthly-expenses"></a>
<h4 class="subsection">2.8.1 Reporting monthly expenses</h4>

<p>The following query makes it easy to see monthly expenses, with each
month&rsquo;s expenses sorted by the amount:
</p>
<div class="example">
<pre class="example">ledger -M --period-sort t reg ^expenses
</pre></div>

<p>Now, you might wonder where the money came from to pay for these
things.  To see that report, add <samp>-r</samp>, which shows the
&ldquo;related account&rdquo; transactions:
</p>
<div class="example">
<pre class="example">ledger -M --period-sort t -r reg ^expenses
</pre></div>

<p>But maybe this prints too much information.  You might just want to
see how much you&rsquo;re spending with your MasterCard.  That kind of query
requires the use of a display predicate, since the transactions
calculated must match &lsquo;<samp>^expenses</samp>&rsquo;, while the transactions
displayed must match &lsquo;<samp>mastercard</samp>&rsquo;.  The command would be:
</p>
<div class="example">
<pre class="example">ledger -M -r -d /mastercard/ reg ^expenses
</pre></div>

<p>This query says: Report monthly subtotals; report the &ldquo;related
account&rdquo; transactions; display only related transactions whose
account matches &lsquo;<samp>mastercard</samp>&rsquo;, and base the calculation on
transactions matching &lsquo;<samp>^expenses</samp>&rsquo;.
</p>
<p>This works just as well for report the overall total, too:
</p>
<div class="example">
<pre class="example">ledger -s -r -d /mastercard/ reg ^expenses
</pre></div>

<p>The <samp>-s</samp> option subtotals all transactions, just as <samp>-M</samp>
subtotaled by the month.  The running total in both cases is off,
however, since a display expression is being used.
</p>
<a name="Visualizing-with-Gnuplot"></a>
<h4 class="subsection">2.8.2 Visualizing with Gnuplot</h4>

<p>If you have <code>Gnuplot</code> installed, you can graph any of the
above register reports.  The script to do this is included in the
ledger distribution, and is named <samp>scripts/report</samp>.  Install
<samp>report</samp> anywhere along your <code>PATH</code>, and then use
<code>report</code> instead of <code>ledger</code> when doing a register
report.  The only thing to keep in mind is that you must specify
<samp>-j</samp> or <samp>-J</samp> to indicate whether Gnuplot should plot the
amount, or the running total.  For example, this command plots total
monthly expenses made on your MasterCard.
</p>
<div class="example">
<pre class="example">report -j -M -r -d /mastercard/ reg ^expenses
</pre></div>

<p>The <code>report</code> script is a very simple Bourne shell script, that
passes a set of scripted commands to Gnuplot.  Feel free to modify the
script to your liking, since you may prefer histograms to line plots,
for example.
</p>
<a name="Typical-plots"></a>
<h4 class="subsubsection">2.8.2.1 Typical plots</h4>

<p>Here are some useful plots:
</p>
<div class="smallexample">
<pre class="smallexample">report -j -M reg ^expenses         # monthly expenses
report -J reg checking             # checking account balance
report -J reg ^income ^expenses    # cash flow report

# net worth report, ignoring non-$ transactions

report -J -l &quot;Ua&gt;={\$0.01}&quot; reg ^assets ^liab

# net worth report starting last February.  the use of a display
# predicate (-d) is needed, otherwise the balance will start at
# zero, and thus the y-axis will not reflect the true balance

report -J -l &quot;Ua&gt;={\$0.01}&quot; -d &quot;d&gt;=[last feb]&quot; reg ^assets ^liab
</pre></div>

<p>The last report uses both a calculation predicate (<samp>-l</samp>) and a
display predicate (<samp>-d</samp>).  The calculation predicates limits
the report to transactions whose amount is greater than $1 (which can
only happen if the transaction amount is in dollars).  The display
predicate limits the entries <em>displayed</em> to just those since last
February, even those entries from before then will be computed as part
of the balance.
</p>
<hr>
<a name="Budgeting-and-forecasting"></a>
<div class="header">
<p>
Previous: <a href="#Some-typical-queries" accesskey="p" rel="prev">Some typical queries</a>, Up: <a href="#Running-Ledger" accesskey="u" rel="up">Running Ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Budgeting-and-forecasting-1"></a>
<h3 class="section">2.9 Budgeting and forecasting</h3>

<a name="Budgeting"></a>
<h4 class="subsection">2.9.1 Budgeting</h4>

<p>Keeping a budget allows you to pay closer attention to your income and
expenses, by reporting how far your actual financial activity is from
your expectations.
</p>
<p>To start keeping a budget, put some period entries at the top of your
ledger file.  A period entry is almost identical to a regular entry,
except that it begins with a tilde and has a period expression in
place of a payee.  For example:
</p>
<div class="smallexample">
<pre class="smallexample">~ Monthly
  Expenses:Rent               $500.00
  Expenses:Food               $450.00
  Expenses:Auto:Gas           $120.00
  Expenses:Insurance          $150.00
  Expenses:Phone              $125.00
  Expenses:Utilities          $100.00
  Expenses:Movies              $50.00
  Expenses                    $200.00  ; all other expenses
  Assets

~ Yearly
  Expenses:Auto:Repair        $500.00
  Assets
</pre></div>

<p>These two period entries give the usual monthly expenses, as well as
one typical yearly expense.  For help on finding out what your average
monthly expense is for any category, use a command like:
</p>
<div class="example">
<pre class="example">ledger -p &quot;this year&quot; -MAs bal ^expenses
</pre></div>

<p>The reported totals are the current year&rsquo;s average for each account.
</p>
<p>Once these period entries are defined, creating a budget report is as
easy as adding <samp>--budget</samp> to the command-line.  For example, a
typical monthly expense report would be:
</p>
<div class="example">
<pre class="example">ledger -M reg ^exp
</pre></div>

<p>To see the same report balanced against your budget, use:
</p>
<div class="example">
<pre class="example">ledger --budget -M reg ^exp
</pre></div>

<p>A budget report includes only those accounts that appear in the
budget.  To see all expenses balanced against the budget, use
<samp>--add-budget</samp>.  You can even see only the unbudgeted expenses
using <samp>--unbudgeted</samp>:
</p>
<div class="example">
<pre class="example">ledger --unbudgeted -M reg ^exp
</pre></div>

<p>You can also use these flags with the <code>balance</code> command.
</p>
<a name="Forecasting"></a>
<h4 class="subsection">2.9.2 Forecasting</h4>

<p>Sometimes it&rsquo;s useful to know what your finances will look like in the
future, such as determining when an account will reach zero.  Ledger
makes this easy to do, using the same period entries as are used for
budgeting.  An example forecast report can be generated with:
</p>
<div class="example">
<pre class="example">ledger --forecast &quot;T&gt;{\$-500.00}&quot; register ^assets ^liabilities
</pre></div>

<p>This report continues outputting transactions until the running total
is greater than $-500.00.  A final transaction is always output, to
show you what the total afterwards would be.
</p>
<p>Forecasting can also be used with the balance report, but by date
only, and not against the running total:
</p>
<div class="example">
<pre class="example">ledger --forecast &quot;d&lt;[2010]&quot; bal ^assets ^liabilities
</pre></div>

<hr>
<a name="Keeping-a-ledger"></a>
<div class="header">
<p>
Next: <a href="#Using-XML" accesskey="n" rel="next">Using XML</a>, Previous: <a href="#Running-Ledger" accesskey="p" rel="prev">Running Ledger</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Keeping-a-ledger-1"></a>
<h2 class="chapter">3 Keeping a ledger</h2>

<p>The most important part of accounting is keeping a good ledger.  If
you have a good ledger, tools can be written to work whatever
mathematically tricks you need to better understand your spending
patterns.  Without a good ledger, no tool, however smart, can help
you.
</p>
<p>The Ledger program aims at making ledger entry as simple as possible.
Since it is a command-line tool, it does not provide a user interface
for keeping a ledger.  If you like, you may use GnuCash to maintain
your ledger, in which case the Ledger program will read GnuCash&rsquo;s data
files directly.  In that case, read the GnuCash manual now, and skip
to the next chapter.
</p>
<p>If you are not using GnuCash, but a text editor to maintain your
ledger, read on.  Ledger has been designed to make data entry as
simple as possible, by keeping the ledger format easy, and also by
automagically determining as much information as possible based on the
nature of your entries.
</p>
<p>For example, you do not need to tell Ledger about the accounts you
use.  Any time Ledger sees a transaction involving an account it knows
nothing about, it will create it.  If you use a commodity that is new
to Ledger, it will create that commodity, and determine its display
characteristics (placement of the symbol before or after the amount,
display precision, etc) based on how you used the commodity in the
transaction.
</p>
<p>Here is the Pacific Bell example from above, given as a Ledger
transaction:
</p>
<div class="smallexample">
<pre class="smallexample">9/29 (100) Pacific Bell
    Expenses:Utilities:Phone                   $23.00
    Assets:Checking                           $-23.00
</pre></div>

<p>As you can see, it is very similar to what would be written on paper,
minus the computed balance totals, and adding in account names that
work better with Ledger&rsquo;s scheme of things.  In fact, since Ledger is
smart about many things, you don&rsquo;t need to specify the balanced
amount, if it is the same as the first line:
</p>
<div class="smallexample">
<pre class="smallexample">9/29 (100) Pacific Bell
    Expenses:Utilities:Phone                   $23.00
    Assets:Checking
</pre></div>

<p>For this entry, Ledger will figure out that $-23.00 must come from
&lsquo;<samp>Assets:Checking</samp>&rsquo; in order to balance the entry.
</p>
<table class="menu" border="0" cellspacing="0">
<tr><td align="left" valign="top">&bull; <a href="#Stating-where-money-goes" accesskey="1">Stating where money goes</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Assets-and-Liabilities" accesskey="2">Assets and Liabilities</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Commodities-and-Currencies" accesskey="3">Commodities and Currencies</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Accounts-and-Inventories" accesskey="4">Accounts and Inventories</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Understanding-Equity" accesskey="5">Understanding Equity</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Dealing-with-Petty-Cash" accesskey="6">Dealing with Petty Cash</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Working-with-multiple-funds-and-accounts" accesskey="7">Working with multiple funds and accounts</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Archiving-previous-years" accesskey="8">Archiving previous years</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Virtual-transactions" accesskey="9">Virtual transactions</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Automated-transactions">Automated transactions</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Using-Emacs-to-Keep-Your-Ledger">Using Emacs to Keep Your Ledger</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Using-GnuCash-to-Keep-Your-Ledger">Using GnuCash to Keep Your Ledger</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
<tr><td align="left" valign="top">&bull; <a href="#Using-timeclock-to-record-billable-time">Using timeclock to record billable time</a>:</td><td>&nbsp;&nbsp;</td><td align="left" valign="top">
</td></tr>
</table>

<hr>
<a name="Stating-where-money-goes"></a>
<div class="header">
<p>
Next: <a href="#Assets-and-Liabilities" accesskey="n" rel="next">Assets and Liabilities</a>, Previous: <a href="#Keeping-a-ledger" accesskey="p" rel="prev">Keeping a ledger</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Stating-where-money-goes-1"></a>
<h3 class="section">3.1 Stating where money goes</h3>

<p>Accountants will talk of &ldquo;credits&rdquo; and &ldquo;debits&rdquo;, but the meaning
is often different from the layman&rsquo;s understanding.  To avoid
confusion, Ledger uses only subtractions and additions, although the
underlying intent is the same as standard accounting principles.
</p>
<p>Recall that every transaction will involve two or more accounts.
Money is transferred from one or more accounts to one or more other
accounts.  To record the transaction, an amount is <em>subtracted</em>
from the source accounts, and <em>added</em> to the target accounts.
</p>
<p>In order to write a Ledger entry correctly, you must determine where
the money comes from and where it goes to.  For example, when you are
paid a salary, you must add money to your bank account and also
subtract it from an income account:
</p>
<div class="smallexample">
<pre class="smallexample">9/29  My Employer
    Assets:Checking                           $500.00
    Income:Salary                            $-500.00
</pre></div>

<p>Why is the Income a negative figure?  When you look at the balance
totals for your ledger, you may be surprised to see that Expenses are
a positive figure, and Income is a negative figure.  It may take some
getting used to, but to properly use a general ledger you must think
in terms of how money moves.  Rather than Ledger &ldquo;fixing&rdquo; the minus
signs, let&rsquo;s understand why they are there.
</p>
<p>When you earn money, the money has to come from somewhere.  Let&rsquo;s call
that somewhere &ldquo;society&rdquo;.  In order for society to give you an
income, you must take money away (withdraw) from society in order to
put it into (make a payment to) your bank.  When you then spend that
money, it leaves your bank account (a withdrawal) and goes back to
society (a payment).  This is why Income will appear negative&mdash;it
reflects the money you have drawn from society&mdash;and why Expenses will
be positive&mdash;it is the amount you&rsquo;ve given back.  These additions and
subtractions will always cancel each other out in the end, because you
don&rsquo;t have the ability to create new money: it must always come from
somewhere, and in the end must always leave.  This is the beginning of
economy, after which the explanation gets terribly difficult.
</p>
<p>Based on that explanation, here&rsquo;s another way to look at your balance
report: every negative figure means that that account or person or
place has less money now than when you started your ledger; and every
positive figure means that that account or person or place has more
money now that when you started your ledger.  Make sense?
</p>
<hr>
<a name="Assets-and-Liabilities"></a>
<div class="header">
<p>
Next: <a href="#Commodities-and-Currencies" accesskey="n" rel="next">Commodities and Currencies</a>, Previous: <a href="#Stating-where-money-goes" accesskey="p" rel="prev">Stating where money goes</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Assets-and-Liabilities-1"></a>
<h3 class="section">3.2 Assets and Liabilities</h3>

<p>Assets are money that you have, and Liabilities are money that you
owe.  &ldquo;Liabilities&rdquo; is just a more inclusive name for Debts.
</p>
<p>An Asset is typically increased by transferring money from an Income
account, such as when you get paid.  Here is a typical entry:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  My Employer
    Assets:Checking               $500.00
    Income:Salary
</pre></div>

<p>Money, here, comes from an Income account belonging to &ldquo;My
Employer&rdquo;, and is transferred to your checking account.  The money is
now yours, which makes it an Asset.
</p>
<p>Liabilities track money owed to others.  This can happen when you
borrow money to buy something, or if you owe someone money.  Here is
an example of increasing a MasterCard liability by spending money with
it:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/30  Restaurant
    Expenses:Dining                $25.00
    Liabilities:MasterCard
</pre></div>

<p>The Dining account balance now shows $25 spent on Dining, and a
corresponding $25 owed on the MasterCard&mdash;and therefore shown as
$-25.00.  The MasterCard liability shows up as negative because it
offsets the value of your assets.
</p>
<p>The combined total of your Assets and Liabilities is your net worth.
So to see your current net worth, use this command:
</p>
<div class="example">
<pre class="example">ledger balance ^assets ^liabilities
</pre></div>

<p>Relatedly, your Income accounts show up negative, because they
transfer money <em>from</em> an account in order to increase your
assets.  Your Expenses show up positive because that is where the
money went to.  The combined total of Income and Expenses is your cash
flow.  A positive cash flow means you are spending more than you make,
since income is always a negative figure.  To see your current cash
flow, use this command:
</p>
<div class="example">
<pre class="example">ledger balance ^income ^expenses
</pre></div>

<p>Another common question to ask of your expenses is: How much do I
spend each month on X?  Ledger provides a simple way of displaying
monthly totals for any account.  Here is an example that summarizes
your monthly automobile expenses:
</p>
<div class="example">
<pre class="example">ledger -M register expenses:auto
</pre></div>

<p>This assumes, of course, that you use account names like
&lsquo;<samp>Expenses:Auto:Gas</samp>&rsquo; and &lsquo;<samp>Expenses:Auto:Repair</samp>&rsquo;.
</p>
<a name="Tracking-reimbursable-expenses"></a>
<h4 class="subsection">3.2.1 Tracking reimbursable expenses</h4>

<p>Sometimes you will want to spend money on behalf of someone else,
which will eventually get repaid.  Since the money is still &ldquo;yours&rdquo;,
it is really an asset.  And since the expenditure was for someone
else, you don&rsquo;t want it contaminating your Expenses reports.  You will
need to keep an account for tracking reimbursements.
</p>
<p>This is fairly easy to do in ledger.  When spending the money, spend
it <em>to</em> your Assets:Reimbursements, using a different account for
each person or business that you spend money for.  For example:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  Circuit City
    Assets:Reimbursements:Company XYZ     $100.00
    Liabilities:MasterCard
</pre></div>

<p>This shows $100.00 spent on a MasterCard at Circuit City, with the
expense was made on behalf of Company XYZ.  Later, when Company XYZ
pays the amount back, the money will transfer from that reimbursement
account back to a regular asset account:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  Company XYZ
    Assets:Checking                       $100.00
    Assets:Reimbursements:Company XYZ
</pre></div>

<p>This deposits the money owed from Company XYZ into a checking account,
presumably because they paid the amount back with a check.
</p>
<p>But what to do if you run your own business, and you want to keep
track of expenses made on your own behalf, while still tracking
everything in a single ledger file?  This is more complex, because you
need to track two separate things: 1) The fact that the money should
be reimbursed to you, and 2) What the expense account was, so that you
can later determine where your company is spending its money.
</p>
<p>This kind of transaction is best handled with mirrored transactions in
two different files, one for your personal accounts, and one for your
company accounts.  But keeping them in one file involves the same
kinds of transactions, so those are what is shown here.  First, the
personal entry, which shows the need for reimbursement:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  Circuit City
    Assets:Reimbursements:Company XYZ     $100.00
    Liabilities:MasterCard
</pre></div>

<p>This is the same as above, except that you own Company XYZ, and are
keeping track of its expenses in the same ledger file.  This entry
should be immediately followed by an equivalent entry, which shows the
kind of expense, and also notes the fact that $100.00 is now payable
to you:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  Circuit City
    Company XYZ:Expenses:Computer:Software      $100.00
    Company XYZ:Accounts Payable:Your Name
</pre></div>

<p>This second entry shows that Company XYZ has just spent $100.00 on
software, and that this $100.00 came from Your Name, which must be
paid back.
</p>
<p>These two entries can also be merged, to make things a little clearer.
Note that all amounts must be specified now:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  Circuit City
    Assets:Reimbursements:Company XYZ         $100.00
    Liabilities:MasterCard                   $-100.00
    Company XYZ:Expenses:Computer:Software    $100.00
    Company XYZ:Accounts Payable:Your Name   $-100.00
</pre></div>

<p>To &ldquo;pay back&rdquo; the reimbursement, just reverse the order of
everything, except this time drawing the money from a company asset,
paying it to accounts payable, and then drawing it again from the
reimbursement account, and paying it to your personal asset account.
It&rsquo;s easier shown than said:
</p>
<div class="smallexample">
<pre class="smallexample">2004/10/15  Company XYZ
    Assets:Checking                           $100.00
    Assets:Reimbursements:Company XYZ        $-100.00
    Company XYZ:Accounts Payable:Your Name    $100.00
    Company XYZ:Assets:Checking              $-100.00
</pre></div>

<p>And now the reimbursements account is paid off, accounts payable is
paid off, and $100.00 has been effectively transferred from the
company&rsquo;s checking account to your personal checking account.  The
money simply &ldquo;waited&rdquo;&mdash;in both &lsquo;<samp>Assets:Reimbursements:Company
XYZ</samp>&rsquo;, and &lsquo;<samp>Company XYZ:Accounts Payable:Your Name</samp>&rsquo;&mdash;until such
time as it could be paid off.
</p>
<p>The value of tracking expenses from both sides like that is that you
do not contaminate your personal expense report with expenses made on
behalf of others, while at the same time making it possible to
generate accurate reports of your company&rsquo;s expenditures.  It is more
verbose than just paying for things with your personal assets, but it
gives you a very accurate information trail.
</p>
<p>The advantage to keep these doubled entries together is that they
always stay in sync.  The advantage to keeping them apart is that it
clarifies the transfer&rsquo;s point of view.  To keep the transactions in
separate files, just separate the two entries that were joined above.
For example, for both the expense and the pay-back shown above, the
following four entries would be created.  Two in your personal ledger
file:
</p>
<div class="smallexample">
<pre class="smallexample">2004/09/29  Circuit City
    Assets:Reimbursements:Company XYZ     $100.00
    Liabilities:MasterCard               $-100.00

2004/10/15  Company XYZ
    Assets:Checking                       $100.00
    Assets:Reimbursements:Company XYZ    $-100.00
</pre></div>

<p>And two in your company ledger file:
</p>
<div class="smallexample">
<pre class="smallexample">!account Company XYZ

2004/09/29  Circuit City
    Expenses:Computer:Software            $100.00
    Accounts Payable:Your Name           $-100.00

2004/10/15  Company XYZ
    Accounts Payable:Your Name            $100.00
    Assets:Checking                      $-100.00

!end
</pre></div>

<p>(Note: The &lsquo;<samp>!account</samp>&rsquo; above means that all accounts mentioned in
the file are children of that account.  In this case it means that all
activity in the file relates to Company XYZ).
</p>
<p>After creating these entries, you will always know that $100.00 was
spent using your MasterCard on behalf of Company XYZ, and that Company
XYZ spent the money on computer software and paid it back about two
weeks later.
</p>
<hr>
<a name="Commodities-and-Currencies"></a>
<div class="header">
<p>
Next: <a href="#Accounts-and-Inventories" accesskey="n" rel="next">Accounts and Inventories</a>, Previous: <a href="#Assets-and-Liabilities" accesskey="p" rel="prev">Assets and Liabilities</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Commodities-and-Currencies-1"></a>
<h3 class="section">3.3 Commodities and Currencies</h3>

<p>Ledger makes no assumptions about the commodities you use; it only
requires that you specify a commodity.  The commodity may be any
non-numeric string that does not contain a period, comma, forward
slash or at-sign.  It may appear before or after the amount, although
it is assumed that symbols appearing before the amount refer to
currencies, while non-joined symbols appearing after the amount refer
to commodities.  Here are some valid currency and commodity
specifiers:
</p>
<div class="example">
<pre class="example">$20.00         ; currency: twenty US dollars
40 AAPL        ; commodity: 40 shares of Apple stock
60 DM          ; currency: 60 Deutsch Mark
£50            ; currency: 50 British pounds
50 EUR         ; currency: 50 Euros (or use appropriate symbol)
</pre></div>

<p>Ledger will examine the first use of any commodity to determine how
that commodity should be printed on reports.  It pays attention to
whether the name of commodity was separated from the amount, whether
it came before or after, the precision used in specifying the amount,
whether thousand marks were used, etc.  This is done so that printing
the commodity looks the same as the way you use it.
</p>
<p>An account may contain multiple commodities, in which case it will
have separate totals for each.  For example, if your brokerage account
contains both cash, gold, and several stock quantities, the balance
might look like:
</p>
<div class="smallexample">
<pre class="smallexample">  $200.00
100.00 AU
  AAPL 40
 BORL 100
 FEQTX 50  Assets:Brokerage
</pre></div>

<p>This balance report shows how much of each commodity is in your
brokerage account.
</p>
<p>Sometimes, you will want to know the current street value of your
balance, and not the commodity totals.  For this to happen, you must
specify what the current price is for each commodity.  The price can
be any commodity, in which case the balance will be computed in terms
of that commodity.  The usual way to specify prices is with a price
history file, which might look like this:
</p>
<div class="smallexample">
<pre class="smallexample">P 2004/06/21 02:18:01 FEQTX $22.49
P 2004/06/21 02:18:01 BORL $6.20
P 2004/06/21 02:18:02 AAPL $32.91
P 2004/06/21 02:18:02 AU $400.00
</pre></div>

<p>Specify the price history to use with the <samp>--price-db</samp> option,
with the <samp>-V</samp> option to report in terms of current market
value:
</p>
<div class="example">
<pre class="example">ledger --price-db prices.db -V balance brokerage
</pre></div>

<p>The balance for your brokerage account will be reported in US dollars,
since the prices database uses that currency.
</p>
<div class="smallexample">
<pre class="smallexample">$40880.00  Assets:Brokerage
</pre></div>

<p>You can convert from any commodity to any other commodity.  Let&rsquo;s say
you had $5000 in your checking account, and for whatever reason you
wanted to know many ounces of gold that would buy, in terms of the
current price of gold:
</p>
<div class="example">
<pre class="example">ledger -T &quot;{1 AU}*(O/P{1 AU})&quot; balance checking
</pre></div>

<p>Although the total expression appears complex, it is simply saying
that the reported total should be in multiples of AU units, where the
quantity is the account total divided by the price of one AU.  Without
the initial multiplication, the reported total would still use the
dollars commodity, since multiplying or dividing amounts always keeps
the left value&rsquo;s commodity.  The result of this command might be:
</p>
<div class="smallexample">
<pre class="smallexample">14.01 AU  Assets:Checking
</pre></div>

<a name="Commodity-price-histories"></a>
<h4 class="subsection">3.3.1 Commodity price histories</h4>

<p>Whenever a commodity is purchased using a different commodity (such as
a share of common stock using dollars), it establishes a price for
that commodity on that day.  It is also possible, by recording price
details in a ledger file, to specify other prices for commodities at
any given time.  Such price entries might look like those below:
</p>
<div class="smallexample">
<pre class="smallexample">P 2004/06/21 02:17:58 TWCUX $27.76
P 2004/06/21 02:17:59 AGTHX $25.41
P 2004/06/21 02:18:00 OPTFX $39.31
P 2004/06/21 02:18:01 FEQTX $22.49
P 2004/06/21 02:18:02 AAPL $32.91
</pre></div>

<p>By default, ledger will not consider commodity prices when generating
its various reports.  It will always report balances in terms of the
commodity total, rather than the current value of those commodities.
To enable pricing reports, use one of the commodity reporting options.
</p>
<a name="Commodity-equivalencies"></a>
<h4 class="subsection">3.3.2 Commodity equivalencies</h4>

<p>Sometimes a commodity has several forms which are all equivalent.  An
example of this is time.  Whether tracked in terms of minutes, hours
or days, it should be possible to convert between the various forms.
Doing this requires the use of commodity equivalencies.
</p>
<p>For example, you might have the following two transactions, one which
transfers an hour of time into a &lsquo;<samp>Billable</samp>&rsquo; account, and another
which decreases the same account by ten minutes.  The resulting report
will indicate that fifty minutes remain:
</p>
<div class="smallexample">
<pre class="smallexample">2005/10/01 Work done for company
    Billable:Client                 1h
    Project:XYZ
    
2005/10/02 Return ten minutes to the project
    Project:XYZ                    10m
    Billable:Client
</pre></div>

<p>Reporting the balance for this ledger file produces:
</p>
<div class="smallexample">
<pre class="smallexample">       50.0m  Billable:Client
      -50.0m  Project:XYZ
</pre></div>

<p>This example works because ledger already knows how to handle seconds,
minutes and hours, as part of its time tracking support.  Defining
other equivalencies is simple.  The following is an example that
creates data equivalencies, helpful for tracking bytes, kilobytes,
megabytes, and more:
</p>
<div class="smallexample">
<pre class="smallexample">C 1.00 Kb = 1024 b
C 1.00 Mb = 1024 Kb
C 1.00 Gb = 1024 Mb
C 1.00 Tb = 1024 Gb
</pre></div>

<p>Each of these definitions correlates a commodity (such as &lsquo;<samp>Kb</samp>&rsquo;)
and a default precision, with a certain quantity of another commodity.
In the above example, kilobytes are reporetd with two decimal places
of precision and each kilobyte is equal to 1024 bytes.
</p>
<p>Equivalency chains can be as long as desired.  Whenever a commodity
would report as a decimal amount (less than &lsquo;<samp>1.00</samp>&rsquo;), the next
smallest commodity is used.  If a commodity could be reported in terms
of a higher commodity without resulting to a partial fraction, then
the larger commodity is used.
</p>
<hr>
<a name="Accounts-and-Inventories"></a>
<div class="header">
<p>
Next: <a href="#Understanding-Equity" accesskey="n" rel="next">Understanding Equity</a>, Previous: <a href="#Commodities-and-Currencies" accesskey="p" rel="prev">Commodities and Currencies</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Accounts-and-Inventories-1"></a>
<h3 class="section">3.4 Accounts and Inventories</h3>

<p>Since Ledger&rsquo;s accounts and commodity system is so flexible, you can
have accounts that don&rsquo;t really exist, and use commodities that no one
else recognizes.  For example, let&rsquo;s say you are buying and selling
various items in EverQuest, and want to keep track of them using a
ledger.  Just add items of whatever quantity you wish into your
EverQuest account:
</p>
<div class="smallexample">
<pre class="smallexample">9/29  Get some stuff at the Inn
    Places:Black's Tavern                   -3 Apples
    Places:Black's Tavern                   -5 Steaks
    EverQuest:Inventory
</pre></div>

<p>Now your EverQuest:Inventory has 3 apples and 5 steaks in it.  The
amounts are negative, because you are taking <em>from</em> Black&rsquo;s
Tavern in order to add to your Inventory account.  Note that you don&rsquo;t
have to use &lsquo;<samp>Places:Black's Tavern</samp>&rsquo; as the source account.  You
could use &lsquo;<samp>EverQuest:System</samp>&rsquo; to represent the fact that you
acquired them online.  The only purpose for choosing one kind of
source account over another is for generate more informative reports
later on.  The more you know, the better analysis you can perform.
</p>
<p>If you later sell some of these items to another player, the entry
would look like:
</p>
<div class="smallexample">
<pre class="smallexample">10/2  Sturm Brightblade
    EverQuest:Inventory                     -2 Steaks
    EverQuest:Inventory                     15 Gold
</pre></div>

<p>Now you&rsquo;ve turned 2 steaks into 15 gold, courtesy of your customer,
Sturm Brightblade.
</p>
<hr>
<a name="Understanding-Equity"></a>
<div class="header">
<p>
Next: <a href="#Dealing-with-Petty-Cash" accesskey="n" rel="next">Dealing with Petty Cash</a>, Previous: <a href="#Accounts-and-Inventories" accesskey="p" rel="prev">Accounts and Inventories</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Understanding-Equity-1"></a>
<h3 class="section">3.5 Understanding Equity</h3>

<p>The most confusing entry in any ledger will be your equity account&mdash;
because starting balances can&rsquo;t come out of nowhere.
</p>
<p>When you first start your ledger, you will likely already have money
in some of your accounts.  Let&rsquo;s say there&rsquo;s $100 in your checking
account; then add an entry to your ledger to reflect this amount.
Where will money come from?  The answer: your equity.
</p>
<div class="smallexample">
<pre class="smallexample">10/2  Opening Balance
    Assets:Checking                         $100.00
    Equity:Opening Balances
</pre></div>

<p>But what is equity?  You may have heard of equity when people talked
about house mortgages, as &ldquo;the part of the house that you own&rdquo;.
Basically, equity is like the value of something.  If you own a car
worth $5000, then you have $5000 in equity in that car.  In order to
turn that car (a commodity) into a cash flow, or a credit to your bank
account, you will have to debit the equity by selling it.
</p>
<p>When you start a ledger, you are probably already worth something.
Your net worth is your current equity.  By transferring the money in
the ledger from your equity to your bank accounts, you are crediting
the ledger account based on your prior equity.  That is why, when you
look at the balance report, you will see a large negative number for
Equity that never changes: Because that is what you were worth (what
you debited from yourself in order to start the ledger) before the
money started moving around.  If the total positive value of your
assets is greater than the absolute value of your starting equity, it
means you are making money.
</p>
<p>Clear as mud?  Keep thinking about it.  Until you figure it out, put
&lsquo;<samp>-Equity</samp>&rsquo; at the end of your balance command, to remove the
confusing figure from the total.
</p>
<hr>
<a name="Dealing-with-Petty-Cash"></a>
<div class="header">
<p>
Next: <a href="#Working-with-multiple-funds-and-accounts" accesskey="n" rel="next">Working with multiple funds and accounts</a>, Previous: <a href="#Understanding-Equity" accesskey="p" rel="prev">Understanding Equity</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Dealing-with-Petty-Cash-1"></a>
<h3 class="section">3.6 Dealing with Petty Cash</h3>

<p>Something that stops many people from keeping a ledger at all is the
insanity of tracking small cash expenses.  They rarely generate a
receipt, and there are often a lot of small transactions, rather than
a few large ones, as with checks.
</p>
<p>One solution is: don&rsquo;t bother.  Move your spending to a debit card,
but in general ignore cash.  Once you withdraw it from the ATM, mark
it as already spent to an &lsquo;<samp>Expenses:Cash</samp>&rsquo; category:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/15 ATM
    Expenses:Cash                      $100.00
    Assets:Checking
</pre></div>

<p>If at some point you make a large cash expense that you want to track,
just &ldquo;move&rdquo; the amount of the expense from &lsquo;<samp>Expenses:Cash</samp>&rsquo; into
the target account:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/20 Somebody
    Expenses:Food                       $65.00
    Expenses:Cash
</pre></div>

<p>This way, you can still track large cash expenses, while ignoring all
of the smaller ones.
</p>
<hr>
<a name="Working-with-multiple-funds-and-accounts"></a>
<div class="header">
<p>
Next: <a href="#Archiving-previous-years" accesskey="n" rel="next">Archiving previous years</a>, Previous: <a href="#Dealing-with-Petty-Cash" accesskey="p" rel="prev">Dealing with Petty Cash</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Working-with-multiple-funds-and-accounts-1"></a>
<h3 class="section">3.7 Working with multiple funds and accounts</h3>

<p>There are situations when the accounts you&rsquo;re tracking are different
between your clients and the financial institutions where money is
kept.  An example of this is working as the treasurer for a religious
institution.  From the secular point of view, you might be working
with three different accounts:
</p>
<ul>
<li> Checking
</li><li> Savings
</li><li> Credit Card
</li></ul>

<p>From a religious point of view, the community expects to divide its
resources into multiple &ldquo;funds&rdquo;, from which it makes purchases or
reserves resources for later:
</p>
<ul>
<li> School fund
</li><li> Building fund
</li><li> Community fund
</li></ul>

<p>The problem with this kind of setup is that when you spend money, it
comes from two or more places at once: the account and the fund.  And
yet, the correlation of amounts between funds and accounts is rarely
one-to-one.  What if the school fund has &lsquo;<samp>$500.00</samp>&rsquo;, but
&lsquo;<samp>$400.00</samp>&rsquo; of that comes from Checking, and &lsquo;<samp>$100.00</samp>&rsquo; from
Savings?
</p>
<p>Traditional finance packages require that the money reside in only one
place.  But there are really two &ldquo;views&rdquo; of the data: from the
account point of view and from the fund point of view &ndash; yet both sets
should reflect the same overall expenses and cash flow.  It&rsquo;s simply
where the money resides that differs.
</p>
<p>This situation can be handled one of two ways.  The first is using
virtual transactions to represent the fact that money is moving to and
from two kind of accounts at the same time:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/20 Contributions
    Assets:Checking                    $500.00
    Income:Donations

2004/03/25 Distribution of donations
    [Funds:School]                     $300.00
    [Funds:Building]                   $200.00
    [Assets:Checking]                 $-500.00
</pre></div>

<p>The use of square brackets in the second entry ensures that the
virtual transactions balance to zero.  Now money can be spent directly
from a fund at the same time as money is drawn from a physical
account:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/25 Payment for books (paid from Checking)
    Expenses:Books                    $100.00
    Assets:Checking                  $-100.00
    (Funds:School)                   $-100.00
</pre></div>

<p>When reports are generated, by default they&rsquo;ll appear in terms of the
funds.  In this case, you will likely want to mask out your
&lsquo;<samp>Assets</samp>&rsquo; account, because otherwise the balance won&rsquo;t make much
sense:
</p>
<div class="example">
<pre class="example">ledger bal -^Assets
</pre></div>

<p>If the <samp>--real</samp> option is used, the report will be in terms of
the real accounts:
</p>
<div class="example">
<pre class="example">ledger --real bal
</pre></div>

<p>If more asset accounts are needed as the source of a transaction, just
list them as you would normally, for example:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/25 Payment for books (paid from Checking)
    Expenses:Books                    $100.00
    Assets:Checking                   $-50.00
    Liabilities:Credit Card           $-50.00
    (Funds:School)                   $-100.00
</pre></div>

<p>The second way of tracking funds is to use entry codes.  In this
respect the codes become like virtual accounts that embrace the entire
set of transactions.  Basically, we are associating an entry with a
fund by setting its code.  Here are two entries that desposit money
into, and spend money from, the &lsquo;<samp>Funds:School</samp>&rsquo; fund:
</p>
<div class="smallexample">
<pre class="smallexample">2004/03/25 (Funds:School) Donations
    Assets:Checking                   $100.00
    Income:Donations

2004/04/25 (Funds:School) Payment for books
    Expenses:Books                     $50.00
    Assets:Checking
</pre></div>

<p>Note how the accounts now relate only to the real accounts, and any
balance or registers reports will reflect this.  That the entries
relate to a particular fund is kept only in the code.
</p>
<p>How does this become a fund report?  By using the
<samp>--code-as-payee</samp> option, you can generate a register report
where the payee for each transaction shows the code.  Alone, this is
not terribly interesting; but when combined with the
<samp>--by-payee</samp> option, you will now see account subtotals for any
transactions related to a specific fund.  So, to see the current
monetary balances of all funds, the command would be:
</p>
<div class="smallexample">
<pre class="smallexample">ledger --code-as-payee -P reg ^Assets
</pre></div>

<p>Or to see a particular funds expenses, the &lsquo;<samp>School</samp>&rsquo; fund in this
case:
</p>
<div class="smallexample">
<pre class="smallexample">ledger --code-as-payee -P reg ^Expenses -- School
</pre></div>

<p>Both approaches yield different kinds of flexibility, depending on how
you prefer to think of your funds: as virtual accounts, or as tags
associated with particular entries.  Your own tastes will decide which
is best for your situation.
</p>
<hr>
<a name="Archiving-previous-years"></a>
<div class="header">
<p>
Next: <a href="#Virtual-transactions" accesskey="n" rel="next">Virtual transactions</a>, Previous: <a href="#Working-with-multiple-funds-and-accounts" accesskey="p" rel="prev">Working with multiple funds and accounts</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Archiving-previous-years-1"></a>
<h3 class="section">3.8 Archiving previous years</h3>

<p>After a while, your ledger can get to be pretty large.  While this
will not slow down the ledger program much&mdash;it&rsquo;s designed to process
ledger files very quickly&mdash;things can start to feel &ldquo;messy&rdquo;; and
it&rsquo;s a universal complaint that when finances feel messy, people avoid
them.
</p>
<p>Thus, archiving the data from previous years into their own files can
offer a sense of completion, and freedom from the past.  But how to
best accomplish this with the ledger program?  There are two commands
that make it very simple: <code>print</code>, and <code>equity</code>.
</p>
<p>Let&rsquo;s take an example file, with data ranging from year 2000 until
2004.  We want to archive years 2000 and 2001 to their own file,
leaving just 2003 and 2004 in the current file.  So, use
<code>print</code> to output all the earlier entries to a file called
<samp>ledger-old.dat</samp>:
</p>
<div class="smallexample">
<pre class="smallexample">ledger -f ledger.dat -b 2000 -e 2001 print &gt; ledger-old.dat
</pre></div>

<p>To delete older data from the current ledger file, use <code>print</code>
again, this time specifying year 2002 as the starting date:
</p>
<div class="example">
<pre class="example">ledger -f ledger.dat -b 2002 print &gt; x
mv x ledger.dat
</pre></div>

<p>However, now the current file contains <em>only</em> transactions from
2002 onward, which will not yield accurate present-day balances,
because the net income from previous years is no longer being tallied.
To compensate for this, we must append an equity report for the old
ledger at the beginning of the new one:
</p>
<div class="example">
<pre class="example">ledger -f ledger-old.dat equity &gt; equity.dat
cat equity.dat ledger.dat &gt; x
mv x ledger.dat
rm equity.dat
</pre></div>

<p>Now the balances reported from <samp>ledger.dat</samp> are identical to what
they were before the data was split.
</p>
<p>How often should you split your ledger?  You never need to, if you
don&rsquo;t want to.  Even eighty years of data will not slow down ledger
much&mdash;and that&rsquo;s just using present day hardware!  Or, you can keep
the previous and current year in one file, and each year before that
in its own file.  It&rsquo;s really up to you, and how you want to organize
your finances.  For those who also keep an accurate paper trail, it
might be useful to archive the older years to their own files, then
burn those files to a CD to keep with the paper records&mdash;along with
any electronic statements received during the year.  In the arena of
organization, just keep in mind this maxim: Do whatever keeps you
doing it.
</p>
<hr>
<a name="Virtual-transactions"></a>
<div class="header">
<p>
Next: <a href="#Automated-transactions" accesskey="n" rel="next">Automated transactions</a>, Previous: <a href="#Archiving-previous-years" accesskey="p" rel="prev">Archiving previous years</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Virtual-transactions-1"></a>
<h3 class="section">3.9 Virtual transactions</h3>

<p>A virtual transaction is when you, in your mind, see money as moving
to a certain place, when in reality that money has not moved at all.
There are several scenarios in which this type of tracking comes in
handy, and each of them will be discussed in detail.
</p>
<p>To enter a virtual transaction, surround the account name in
parentheses.  This form of usage does not need to balance.  However,
if you want to ensure the virtual transaction balances with other
virtual transactions in the same entry, use square brackets.  For
example:
</p>
<div class="smallexample">
<pre class="smallexample">10/2 Paycheck
    Assets:Checking                        $1000.00
    Income:Salary                         $-1000.00
    (Debt:Alimony)                          $200.00
</pre></div>

<p>In this example, after receiving a paycheck an alimony debt is
increased&mdash;even though no money has moved around yet.
</p>
<div class="smallexample">
<pre class="smallexample">10/2  Paycheck
    Assets:Checking                        $1000.00
    Income:Salary                         $-1000.00
    [Savings:Trip]                          $200.00
    [Assets:Checking]                      $-200.00
</pre></div>

<p>In this example, $200 has been deducted from checking toward savings
for a trip.  It will appear as though the money has been moved from
the account into &lsquo;<samp>Savings:Trip</samp>&rsquo;, although no money has actually
moved anywhere.
</p>
<p>When balances are displayed, virtual transactions will be factored in.
To view balances without any virtual balances factored in, using the
<samp>-R</samp> flag, for &ldquo;reality&rdquo;.
</p>
<hr>
<a name="Automated-transactions"></a>
<div class="header">
<p>
Next: <a href="#Using-Emacs-to-Keep-Your-Ledger" accesskey="n" rel="next">Using Emacs to Keep Your Ledger</a>, Previous: <a href="#Virtual-transactions" accesskey="p" rel="prev">Virtual transactions</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Automated-transactions-1"></a>
<h3 class="section">3.10 Automated transactions</h3>

<p>As a Bahá&rsquo;í, I need to compute Huqúqu&rsquo;lláh whenever I acquire assets.
It is similar to tithing for Jews and Christians, or to Zakát for
Muslims.  The exact details of computing Huqúqu&rsquo;lláh are somewhat
complex, but if you have further interest, please consult the Web.
</p>
<p>Ledger makes this otherwise difficult law very easy.  Just set up an
automated transaction at the top of your ledger file:
</p>
<div class="smallexample">
<pre class="smallexample">; This automated entry will compute Huqúqu'lláh based on this
; journal's transactions.  Any that match will affect the
; Liabilities:Huququ'llah account by 19% of the value of that
; transaction.

= /^(?:Income:|Expenses:(?:Business|Rent$|Furnishings|Taxes|Insurance))/
  (Liabilities:Huququ'llah)               0.19
</pre></div>

<p>This automated transaction works by looking at each transaction in the
ledger file.  If any match the given value expression, 19% of the
transaction&rsquo;s value is applied to the &lsquo;<samp>Liabilities:Huququ'llah</samp>&rsquo;
account.  So, if $1000 is earned from &lsquo;<samp>Income:Salary</samp>&rsquo;, $190 is
added to &lsquo;<samp>Liabilities:Huqúqu'lláh</samp>&rsquo;; if $1000 is spent on Rent,
$190 is subtracted.  The ultimate balance of Huqúqu&rsquo;lláh reflects how
much is owed in order to fulfill one&rsquo;s obligation to Huqúqu&rsquo;lláh.
When ready to pay, just write a check to cover the amount shown in
&lsquo;<samp>Liabilities:Huququ'llah</samp>&rsquo;.  That entry would look like:
</p>
<div class="smallexample">
<pre class="smallexample">2003/01/01 (101) Baha'i Huqúqu'lláh Trust
    Liabilities:Huququ'llah          $1,000.00
    Assets:Checking
</pre></div>

<p>That&rsquo;s it.  To see how much Huqúq is currently owed based on your
ledger entries, use:
</p>
<div class="example">
<pre class="example">ledger balance Liabilities:Huquq
</pre></div>

<p>This works fine, but omits one aspect of the law: that Huquq is only
due once the liability exceeds the value of 19 mithqáls of gold (which
is roughly 2.22 ounces).  So what we want is for the liability to
appear in the balance report only when it exceeds the present day
value of 2.22 ounces of gold.  This can be accomplished using the
command:
</p>
<div class="smallexample">
<pre class="smallexample">ledger -Q -t &quot;/Liab.*Huquq/?(a/P{2.22 AU}&lt;={-1.0}&amp;a):a&quot; -s bal liab
</pre></div>

<p>With this command, the current price for gold is downloaded, and the
Huqúqu&rsquo;lláh is reported only if its value exceeds that of 2.22 ounces
of gold.  If you wish the liability to be reflected in the parent
subtotal either way, use this instead:
</p>
<div class="smallexample">
<pre class="smallexample">ledger -Q -T &quot;/Liab.*Huquq/?(O/P{2.22 AU}&lt;={-1.0}&amp;O):O&quot; -s bal liab
</pre></div>

<p>In some cases, you may wish to refer to the account of whichever
transaction matched your automated entry&rsquo;s value expression.  To do
this, use the special account name &lsquo;<samp>$account</samp>&rsquo;:
</p>
<div class="smallexample">
<pre class="smallexample">= /^Some:Long:Account:Name/
  [$account]  -0.10
  [Savings]    0.10
</pre></div>

<p>This example causes 10% of the matching account&rsquo;s total to be deferred
to the &lsquo;<samp>Savings</samp>&rsquo; account&mdash;as a balanced virtual transaction,
which may be excluded from reports by using <samp>--real</samp>.
</p>
<hr>
<a name="Using-Emacs-to-Keep-Your-Ledger"></a>
<div class="header">
<p>
Next: <a href="#Using-GnuCash-to-Keep-Your-Ledger" accesskey="n" rel="next">Using GnuCash to Keep Your Ledger</a>, Previous: <a href="#Automated-transactions" accesskey="p" rel="prev">Automated transactions</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Using-Emacs-to-Keep-Your-Ledger-1"></a>
<h3 class="section">3.11 Using Emacs to Keep Your Ledger</h3>

<p>In the Ledger tarball is an Emacs module, <samp>ledger.el</samp>.  This
module makes the process of keeping a text ledger much easier for
Emacs users.  I recommend putting this at the top of your ledger file:
</p>
<div class="example">
<pre class="example">; -*-ledger-*-
</pre></div>

<p>And this in your <samp>.emacs</samp> file, after copying <samp>ledger.el</samp> to
your <samp>site-lisp</samp> directory:
</p>
<div class="example">
<pre class="example">(load &quot;ledger&quot;)
</pre></div>

<p>Now when you edit your ledger file, it will be in
<code>ledger-mode</code>.  <code>ledger-mode</code> adds these commands:
</p>
<dl compact="compact">
<dt><strong>C-c C-a</strong></dt>
<dd><p>For quickly adding new entries based on the form of older ones (see
previous section).
</p>
</dd>
<dt><strong>C-c C-c</strong></dt>
<dd><p>Toggles the &ldquo;cleared&rdquo; flag of the transaction under point.
</p>
</dd>
<dt><strong>C-c C-d</strong></dt>
<dd><p>Delete the entry under point.
</p>
</dd>
<dt><strong>C-c C-r</strong></dt>
<dd><p>Reconciles an account by displaying the transactions in another
buffer, where simply hitting the spacebar will toggle the pending flag
of the transaction in the ledger.  Once all the appropriate
transactions have been marked, press C-c C-c in the reconcile buffer
to &ldquo;commit&rdquo; the reconciliation, which will mark all of the entries
as cleared, and display the new cleared balance in the minibuffer.
</p>
</dd>
<dt><strong>C-c C-m</strong></dt>
<dd><p>Set the default month for new entries added with C-c C-a.  This is
handy if you have a large number of transactions to enter from a
previous month.
</p>
</dd>
<dt><strong>C-c C-y</strong></dt>
<dd><p>Set the default year for new entries added with C-c C-a.  This is
handy if you have a large number of transactions to enter from a
previous year.
</p></dd>
</dl>

<p>Once you enter the reconcile buffer, there are several key commands
available:
</p>
<dl compact="compact">
<dt><strong>RET</strong></dt>
<dd><p>Visit the ledger file entry corresponding to the reconcile entry.
</p>
</dd>
<dt><strong>C-c C-c</strong></dt>
<dd><p>Commit the reconcialation.  This marks all of the marked transactions
as &ldquo;cleared&rdquo;, saves the ledger file, and then displays the new
cleared balance.
</p>
</dd>
<dt><strong>C-l</strong></dt>
<dd><p>Refresh the reconcile buffer by re-reading transactions from the
ledger data file.
</p>
</dd>
<dt><strong>SPC</strong></dt>
<dd><p>Toggle the transaction under point as cleared.
</p>
</dd>
<dt><strong>a</strong></dt>
<dd><p>Add a new entry to the ledger data file, and refresh the reconcile
buffer to include its transactions (if the entry is added to the same
account as the one being reconciled).
</p>
</dd>
<dt><strong>d</strong></dt>
<dd><p>Delete the entry related to the transaction under point.  Note: This
may result in multiple transactions being deleted.
</p>
</dd>
<dt><strong>n</strong></dt>
<dd><p>Move to the next line.
</p>
</dd>
<dt><strong>p</strong></dt>
<dd><p>Move to the previous line.
</p>
</dd>
<dt><strong>C-c C-r</strong></dt>
<dt><strong>r</strong></dt>
<dd><p>Attempt to auto-reconcile the transactions to the entered balance.  If
it can do so, it will mark all those transactions as pending that
would yield the specified balance.
</p>
</dd>
<dt><strong>C-x C-s</strong></dt>
<dt><strong>s</strong></dt>
<dd><p>Save the ledger data file, and show the current cleared balance for
the account being reconciled.
</p>
</dd>
<dt><strong>q</strong></dt>
<dd><p>Quit the reconcile buffer.
</p></dd>
</dl>

<p>There is also an <code>emacs</code> command which can be used to output
reports in a format directly <code>read</code>-able from Emacs Lisp.
</p>
<hr>
<a name="Using-GnuCash-to-Keep-Your-Ledger"></a>
<div class="header">
<p>
Next: <a href="#Using-timeclock-to-record-billable-time" accesskey="n" rel="next">Using timeclock to record billable time</a>, Previous: <a href="#Using-Emacs-to-Keep-Your-Ledger" accesskey="p" rel="prev">Using Emacs to Keep Your Ledger</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Using-GnuCash-to-Keep-Your-Ledger-1"></a>
<h3 class="section">3.12 Using GnuCash to Keep Your Ledger</h3>

<p>The Ledger tool is fast and simple, but it offers no custom method for
actually editing the ledger.  It assumes you know how to use a text
editor, and like doing so.  There is, at least, an Emacs mode that
makes editing Ledger&rsquo;s data files much easier.
</p>
<p>You are also free to use GnuCash to maintain your ledger, and the
Ledger program for querying and reporting on the contents of that
ledger.  It takes a little longer to parse the XML data format that
GnuCash uses, but the end result is identical.
</p>
<p>Then again, why would anyone use a Gnome-centric, multi-megabyte
behemoth to edit their data, and only a one megabyte binary to query
it?
</p>
<hr>
<a name="Using-timeclock-to-record-billable-time"></a>
<div class="header">
<p>
Previous: <a href="#Using-GnuCash-to-Keep-Your-Ledger" accesskey="p" rel="prev">Using GnuCash to Keep Your Ledger</a>, Up: <a href="#Keeping-a-ledger" accesskey="u" rel="up">Keeping a ledger</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Using-timeclock-to-record-billable-time-1"></a>
<h3 class="section">3.13 Using timeclock to record billable time</h3>

<p>The timeclock tool makes it easy to track time events, like clocking
into and out of a particular job.  These events accumulate in a
timelog file.
</p>
<p>Each in/out event may have an optional description.  If the &ldquo;in&rdquo;
description is a ledger account name, these in/out pairs may be viewed
as virtual transactions, adding time commodities (hours) to that
account.
</p>
<p>For example, the command-line version of the timeclock tool could be
used to begin a timelog file like:
</p>
<div class="example">
<pre class="example">export TIMELOG=$HOME/.timelog
ti ClientOne category
sleep 10
to waited for ten seconds
</pre></div>

<p>The <samp>.timelog</samp> file now contains:
</p>
<div class="smallexample">
<pre class="smallexample">i 2004/10/06 15:21:00 ClientOne  category
o 2004/10/06 15:21:10 waited for ten seconds
</pre></div>

<p>Ledger parses this directly, as if it had seen the following entry:
</p>
<div class="smallexample">
<pre class="smallexample">2004/10/06 category
    (ClientOne)      10s
</pre></div>

<p>In other words, the timelog event pair is seen as adding 0.00277h (ten
seconds) worth of time to the &lsquo;<samp>ClientOne</samp>&rsquo; account.  This would be
considered billable time, which later could be invoiced and credited
to accounts receivable:
</p>
<div class="smallexample">
<pre class="smallexample">2004/11/01 (INV#1) ClientOne, Inc.
    Receivable:ClientOne       $0.10
    ClientOne              -0.00277h @ $35.00
</pre></div>

<p>The above transaction converts the clocked time into an invoice for
the time spent, at an hourly rate of $35.  Once the invoice is paid,
the money is deposited from the receivable account into a checking
account:
</p>
<div class="smallexample">
<pre class="smallexample">2004/12/01 ClientOne, Inc.
    Assets:Checking            $0.10
    Receivable:ClientOne
</pre></div>

<p>And now the time spent has been turned into hard cash in the checking
account.
</p>
<p>The advantage to using timeclock and invoicing to bill time is that
you will always know, by looking at the balance report, exactly how
much unbilled and unpaid time you&rsquo;ve spent working for any particular
client.
</p>
<p>I like to &lsquo;<samp>!include</samp>&rsquo; my timelog at the top of my company&rsquo;s
accounting ledger, with the attached prefix &lsquo;<samp>Billable</samp>&rsquo;:
</p>
<div class="smallexample">
<pre class="smallexample">; -*-ledger-*-

; This is the ledger file for my company.  But first, include the
; timelog data, entering all of the time events within the umbrella
; account &quot;Billable&quot;.

!account Billable
!include /home/johnw/.timelog
!end

; Here follows this fiscal year's transactions for the company.

2004/11/01 (INV#1) ClientOne, Inc.
    Receivable:ClientOne           $0.10
    Billable:ClientOne         -0.00277h @ $35.00

2004/12/01 ClientOne, Inc.
    Assets:Checking                $0.10
    Receivable:ClientOne
</pre></div>

<hr>
<a name="Using-XML"></a>
<div class="header">
<p>
Previous: <a href="#Keeping-a-ledger" accesskey="p" rel="prev">Keeping a ledger</a>, Up: <a href="#Top" accesskey="u" rel="up">Top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<a name="Using-XML-1"></a>
<h2 class="chapter">4 Using XML</h2>

<p>By default, Ledger uses a human-readable data format, and displays its
reports in a manner meant to be read on screen.  For the purpose of
writing tools which use Ledger, however, it is possible to read and
display data using XML.  This chapter documents that format.
</p>
<p>The general format used for Ledger data is:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;ledger&gt;
  &lt;entry&gt;...&lt;/entry&gt;
  &lt;entry&gt;...&lt;/entry&gt;
  &lt;entry&gt;...&lt;/entry&gt;...
&lt;/ledger&gt;
</pre></div>

<p>The data stream is enclosed in a &lsquo;<samp>ledger</samp>&rsquo; tag, which contains a
series of one or more entries.  Each &lsquo;<samp>entry</samp>&rsquo; describes the entry
and contains a series of one or more transactions:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;entry&gt;
  &lt;en:date&gt;2004/03/01&lt;/en:date&gt;
  &lt;en:cleared/&gt;
  &lt;en:code&gt;100&lt;/en:code&gt;
  &lt;en:payee&gt;John Wiegley&lt;/en:payee&gt;
  &lt;en:transactions&gt;
    &lt;transaction&gt;...&lt;/transaction&gt;
    &lt;transaction&gt;...&lt;/transaction&gt;
    &lt;transaction&gt;...&lt;/transaction&gt;...
  &lt;/en:transactions&gt;
&lt;/entry&gt;
</pre></div>

<p>The date format for &lsquo;<samp>en:date</samp>&rsquo; is always &lsquo;<samp>YYYY/MM/DD</samp>&rsquo;.  The
&lsquo;<samp>en:cleared</samp>&rsquo; tag is optional, and indicates whether the
transaction has been cleared or not.  There is also an
&lsquo;<samp>en:pending</samp>&rsquo; tag, for marking pending transactions.  The
&lsquo;<samp>en:code</samp>&rsquo; and &lsquo;<samp>en:payee</samp>&rsquo; tags both contain whatever text the
user wishes.
</p>
<p>After the initial entry data, there must follow a set of transactions
marked with &lsquo;<samp>en:transactions</samp>&rsquo;.  Typically these transactions will
all balance each other, but if not they will be automatically balanced
into an account named &lsquo;<samp>&lt;Unknown&gt;</samp>&rsquo;.
</p>
<p>Within the &lsquo;<samp>en:transactions</samp>&rsquo; tag is a series of one or more
&lsquo;<samp>transaction</samp>&rsquo;&rsquo;s, which have the following form:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;transaction&gt;
  &lt;tr:account&gt;Expenses:Computer:Hardware&lt;/tr:account&gt;
  &lt;tr:amount&gt;
    &lt;value type=&quot;amount&quot;&gt;
      &lt;amount&gt;
        &lt;commodity flags=&quot;PT&quot;&gt;$&lt;/commodity&gt;
        &lt;quantity&gt;90.00&lt;/quantity&gt;
      &lt;/amount&gt;
    &lt;/value&gt;
  &lt;/tr:amount&gt;
&lt;/transaction&gt;
</pre></div>

<p>This is a basic transaction.  It may also be begin with
&lsquo;<samp>tr:virtual</samp>&rsquo; and/or &lsquo;<samp>tr:generated</samp>&rsquo; tags, to indicate virtual
and auto-generated transactions.  Then follows the &lsquo;<samp>tr:account</samp>&rsquo;
tag, which contains the full name of the account the transaction is
related to.  Colons separate parent from child in an account name.
</p>
<p>Lastly follows the amount of the transaction, indicated by
&lsquo;<samp>tr:amount</samp>&rsquo;.  Within this tag is a &lsquo;<samp>value</samp>&rsquo; tag, of which
there are four different kinds, each with its own format:
</p>
<ol>
<li> boolean
</li><li> integer
</li><li> amount
</li><li> balance
</li></ol>

<p>The format of a boolean value is &lsquo;<samp>true</samp>&rsquo; or &lsquo;<samp>false</samp>&rsquo;
surrounded by a &lsquo;<samp>boolean</samp>&rsquo; tag, for example:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;boolean&gt;true&lt;/boolean&gt;
</pre></div>

<p>The format of an integer value is the numerical value surrounded by an
&lsquo;<samp>integer</samp>&rsquo; tag, for example:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;integer&gt;12036&lt;/integer&gt;
</pre></div>

<p>The format of an amount contains two members, the commodity and the
quantity.  The commodity can have a set of flags that indicate how to
display it.  The meaning of the flags (all of which are optional) are:
</p>
<dl compact="compact">
<dt><strong>P</strong></dt>
<dd><p>The commodity is prefixed to the value.
</p></dd>
<dt><strong>S</strong></dt>
<dd><p>The commodity is separated from the value by a space.
</p></dd>
<dt><strong>T</strong></dt>
<dd><p>Thousands markers are used to display the amount.
</p></dd>
<dt><strong>E</strong></dt>
<dd><p>The format of the amount is European, with period used as a thousands
marker, and comma used as the decimal point.
</p></dd>
</dl>

<p>The actual quantity for an amount is an integer of arbitrary size.
Ledger uses the GNU multi-precision math library to handle such
values.  The XML format assumes the reader to be equally capable.
Here is an example amount:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;value type=&quot;amount&quot;&gt;
  &lt;amount&gt;
    &lt;commodity flags=&quot;PT&quot;&gt;$&lt;/commodity&gt;
    &lt;quantity&gt;90.00&lt;/quantity&gt;
  &lt;/amount&gt;
&lt;/value&gt;
</pre></div>

<p>Lastly, a balance value contains a series of amounts, each with a
different commodity.  Unlike the name, such a value does need to
balance.  It is called a balance because it sums several amounts.  For
example:
</p>
<div class="smallexample">
<pre class="smallexample">&lt;value type=&quot;balance&quot;&gt;
  &lt;balance&gt;
    &lt;amount&gt;
      &lt;commodity flags=&quot;PT&quot;&gt;$&lt;/commodity&gt;
      &lt;quantity&gt;90.00&lt;/quantity&gt;
    &lt;/amount&gt;
    &lt;amount&gt;
      &lt;commodity flags=&quot;TE&quot;&gt;DM&lt;/commodity&gt;
      &lt;quantity&gt;200.00&lt;/quantity&gt;
    &lt;/amount&gt;
  &lt;/balance&gt;
&lt;/value&gt;
</pre></div>

<p>That is the extent of the XML data format used by Ledger.  It will
output such data if the <code>xml</code> command is used, and can read
the same data as long as the <samp>expat</samp> library was available
when Ledger was built.
</p>
<div class="footnote">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h3><a name="FOOT1" href="#DOCF1">(1)</a></h3>
<p>In some
special cases, it automatically balances this entry for you.</p>
<h3><a name="FOOT2" href="#DOCF2">(2)</a></h3>
<p>It is
impossible for accounts not to balance in ledger; it reports an error
if a transaction does not balance</p>
<h3><a name="FOOT3" href="#DOCF3">(3)</a></h3>
<p>If it ever does, then
generated transactions are involved, which can be removed using
<samp>--actual</samp></p>
</div>
<hr>



</body>
</html>
