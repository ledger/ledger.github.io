buildsite: site
	./site build

site: site.hs
	ghc --make site.hs

