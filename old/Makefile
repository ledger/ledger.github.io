# old site building script using just pandoc

buildsite: index.html site.html

%.html: %.md site.tmpl
	pandoc --template=site.tmpl $< -o $@
