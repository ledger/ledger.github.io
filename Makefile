export LANG=en_US.UTF-8

buildsite: site
	./site build

site: site.hs
	ghc --make site.hs

