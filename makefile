TEXFILE=main
PDF=$(TEXFILE).pdf

all: $(PDF)

$(PDF): $(TEXFILE).tex
	lualatex $(TEXFILE).tex || exit 1
	lualatex $(TEXFILE).tex

clean:
	rm -f $(TEXFILE).aux $(TEXFILE).log $(TEXFILE).nav $(TEXFILE).out $(TEXFILE).snm $(TEXFILE).toc $(TEXFILE).bbl $(TEXFILE).blg

cleanall: clean
	rm -f $(PDF)
