---
title: About the site - Ledger
---

# About the site

The ledger-cli.org site is kept in the
[ledger-website](https://github.com/ledger/ledger-website) repo ([changes](https://github.com/ledger/ledger-website/commits/master)).
It is static html generated from markdown by [middleman](https://middlemanapp.com).
Commits will normally appear on ledger-cli.org immediately, otherwise on the hour.

Documentation comes from the
[ledger docs in the `master`](https://github.com/ledger/ledger/tree/master/doc)
branch.

There is also a wiki, that of the ledger repo on GitHub, with a convenient
url alias: [wiki.ledger-cli.org](https://wiki.ledger-cli.org).

The site is built using [GitHub Actions](https://github.com/ledger/ledger-website/actions) and deploys to an Amazon S3 bucket
which is then served up with an Amazon CloudFront distribution.

We use this small [Lambda@Edge](https://docs.aws.amazon.com/lambda/latest/dg/lambda-edge.html) function to serve redirects and to redirect bare domain to `www`:

    'use strict';

    exports.handler = (event, context, callback) => {
        const request = event.Records[0].cf.request;
        const host = request.headers.host[0].value;

        if (host == "www.ledger-cli.org") {
            callback(null, request);
        } else {
            var redirectTarget = 'https://www.ledger-cli.org';

            if (host == "git.ledger-cli.org") {
                redirectTarget = "https://github.com/ledger/ledger";
            } else if (host == "list.ledger-cli.org") {
                redirectTarget = "https://groups.google.com/group/ledger-cli";
            } else if (host == "wiki.ledger-cli.org") {
                redirectTarget = "https://github.com/ledger/ledger/wiki";
            }

            var response = {
                status: '302',
                statusDescription: 'Found',
                headers: {
                    location: [{
                        key: 'Location',
                        value: redirectTarget,
                    }],
                },
            };

            callback(null, response);
        }
    };


The current webmaster is <a href="mailto:pete@petekeen.net">Pete Keen</a>. All help is welcome.
