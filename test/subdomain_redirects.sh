#!/bin/bash

# Simple script testing that the different ledger-cli.org subdomain redirects work as expected.

# Tests consists of 2 lines (blank lines are ignored)
# The first line starting with a octorhorpe (#) is a brief description of the test that will be echoed.
# The second list must be quoted with single quotes and consists of:
#    1. an URL to query
#    2. a single space ( )
#    3. the expected HTTP status code
#    4. a single colon (:)
#    5. the expected redirect URL
#
# For example the following test:
# 'git.ledger-cli.org/ledger/releases/latest 302:https://github.com/ledger/ledger/releases/latest'
# can be read as
# When requesting the URL `https://git.ledger-cli.org/ledger/releases/latest`
# it is expected that the server responds with a `302` and a location header value of
# `https://github.com/ledger/ledger/releases/latest`

tests=$(grep -Ev '^[ 	]*$' <<< "\
# Verify that the apex domain is served directly
'ledger-cli.org/index.html 200:'

# Verify that the www subdomain is redirected to the apex domain and retains the URL path
'www.ledger-cli.org/docs.html 301:https://ledger-cli.org/docs.html'

# Verify that the git subdomain is redirected to github organization and retains the URL path
'git.ledger-cli.org/ledger/releases/latest 302:https://github.com/ledger/ledger/releases/latest'

# Verify that the bugs subdomain is redirected to github ledger repo issues page and retains the URL path
'bugs.ledger-cli.org/2222 302:https://github.com/ledger/ledger/issues/2222'

# Verify that the wiki subdomain is redirected to the github wiki and retains the URL path
'wiki.ledger-cli.org/Post 302:https://github.com/ledger/ledger/wiki/Post'

# Verify that the list subdomain is redirected to the Google group mailling list and retains the URL path
'list.ledger-cli.org/c/xM3EEukxYys 302:https://groups.google.com/g/ledger-cli/c/xM3EEukxYys'
")

exit_code=0
echo "$tests" | while read info; do
  echo -n "${info#\# }... "
  read test
  t=(${test//\'/})
  result=$(curl -sI -w '%{response_code}:%{redirect_url}' "https://${t[0]}" -o /dev/null)
  if [ "${t[1]}" == "${result}" ]; then
    echo OK
  else
    echo -e "Failed!\nExpected »${t[1]}« got »${result}«"
    exit_code=-1
  fi
done

exit $exit_code
