site: pandocbuild README.html

## build site with pandoc

pandocbuild: index.html Branch-and-bug-policies.html Multiple-currencies.html On-reconciling.html Ports.html Roadmap-for-3.0.html Terminology.html Users.html

%.html: %.markdown site.tmpl
	pandoc --template=site.tmpl $< -o $@

# git safety belt, before trying something risky
snapshot:
	tar czf snapshot.tar.gz --exclude snapshot.tar.gz .

