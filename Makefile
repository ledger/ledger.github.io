MAKEFLAGS := -j4

MANPAGE := ledger.1
TEXINFO := $(addsuffix .texi,ledger3 ledger ledger-mode)
SOURCES := $(MANPAGE) $(TEXINFO)
PDF     := $(addsuffix .pdf,$(basename $(TEXINFO)))
HTML    := $(addsuffix .html,$(basename $(TEXINFO)) $(MANPAGE))
BUILD   := build

HOST                       := https://raw.githubusercontent.com/ledger
ledger3.texi_repopath      := ledger/v3.2.1/doc
ledger.1_repopath          := ledger/v3.2.1/doc
ledger.texi_repopath       := ledger/v2.6.3
ledger-mode.texi_repopath  := ledger-mode/master/doc

ledger3.texi_build         := 3.0/doc
ledger.1_build             := 3.0/doc
ledger.texi_build          := 2.6
ledger-mode.texi_build     := 3.0/doc

docs: init pdf html

pdf: $(PDF)

html: $(HTML)

sources: $(SOURCES)

.PHONY: init
init:
	mkdir -p $(BUILD)/$(ledger.texi_build) $(BUILD)/$(ledger3.texi_build)

.PHONY: clean
clean:
	rm -rf $(BUILD) $(addsuffix *,$(basename $(SOURCES)))

$(TEXINFO) $(MANPAGE):
	curl -sLO $(HOST)/$($(@)_repopath)/$@

%.pdf : %.texi
	texi2pdf --batch --verbose --output=$(BUILD)/$($(<)_build)/$@ $<

%.html : %.texi
	makeinfo --force --html --no-split --output=$(BUILD)/$($(<)_build)/$@ $<

%.1.html : %.1
	groff -mandoc -Thtml $< > $(BUILD)/$($(<)_build)/$@
