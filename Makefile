site: pandocbuild

## build site with pandoc

pandocbuild: index.html Branch-and-bug-policies.html Multiple-currencies.html OnReconciling.html Ports.html Roadmap-for-3.0.html Terminology.html #Who's-using-Ledger?.html

%.html: %.markdown site.tmpl
	pandoc --template=site.tmpl $< -o $@

# git safety belt, before trying something risky
snapshot:
	tar czf snapshot.tar.gz --exclude snapshot.tar.gz .

