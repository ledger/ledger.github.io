MANPAGE := ledger.1
TEXINFO := $(addsuffix .texi,ledger3 ledger-mode)
SOURCES := version.texi $(MANPAGE) $(TEXINFO)
PDF     := $(addsuffix .pdf,$(basename $(TEXINFO)))
HTML    := $(addsuffix .html,$(basename $(TEXINFO)) $(MANPAGE))
BUILD   := build
OUTPUT  := $(BUILD)/doc
CURL    := curl --silent --location

OWNER   := ledger
REPO    := ledger
LATEST  := $(shell curl -sqI -w '%{redirect_url}\n' -o /dev/null https://github.com/$(OWNER)/$(REPO)/releases/latest | rev | cut -d/ -f1 | rev)

HOST                       := https://raw.githubusercontent.com
ledger3.texi_repopath      := $(OWNER)/$(REPO)/$(LATEST)/doc
ledger.1_repopath          := $(OWNER)/$(REPO)/$(LATEST)/doc
ledger-mode.texi_repopath  := $(OWNER)/ledger-mode/master/doc

docs: init sources pdf html

pdf: $(PDF)

html: $(HTML)

sources: $(SOURCES)

.PHONY: init
init:
	mkdir -p $(OUTPUT)

.PHONY: clean
clean:
	rm -rf $(BUILD) $(addsuffix *,$(basename $(SOURCES)))

$(TEXINFO) $(MANPAGE):
	$(CURL) --remote-name $(HOST)/$($(@)_repopath)/$@

# TODO: Remove the two lines after this comment once the next release after 3.3.1
# is published as it will include the necessary changes for version.texi and
# related files to be fetched from the tag instead of the master branch.
version.texi: OWNER := afh
version.texi: LATEST := refactor-version-info
version.texi:
	$(CURL) --parallel --create-dirs \
		--output-dir doc --remote-name $(HOST)/$(OWNER)/$(REPO)/$(LATEST)/doc/$@.in \
		--remote-name $(HOST)/$(OWNER)/$(REPO)/$(LATEST)/doc/CMakeLists.txt \
		--next --silent --location --create-dirs \
		--output-dir cmake --remote-name $(HOST)/$(OWNER)/$(REPO)/$(LATEST)/cmake/LedgerVersion.cmake \
		# curl
	cmake -Wno-dev -S doc
	mv doc/$@ $@

%.pdf : %.texi
	texi2pdf --batch --verbose --output=$(OUTPUT)/$@ $<

%.html : %.texi
	makeinfo --force --html --no-split --output=$(OUTPUT)/$@ $<

%.1.html : %.1
	groff -mandoc -Thtml $< > $(OUTPUT)/$@
