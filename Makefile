site: pandocbuild README.html

## build site with pandoc

pandocbuild: index.html

%.html: %.markdown site.tmpl
	pandoc --template=site.tmpl $< -o $@

# git safety belt, before trying something risky
snapshot:
	tar czf snapshot.tar.gz --exclude snapshot.tar.gz .

