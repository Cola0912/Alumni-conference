TEXFILE=main
PDF=$(TEXFILE).pdf

all: $(PDF) clean  # ビルド後に自動的にcleanを実行

$(PDF): $(TEXFILE).tex
	lualatex $(TEXFILE).tex || exit 1
	lualatex $(TEXFILE).tex

clean:
	rm -f $(TEXFILE).aux $(TEXFILE).log $(TEXFILE).nav $(TEXFILE).out $(TEXFILE).snm $(TEXFILE).toc $(TEXFILE).bbl $(TEXFILE).blg

cleanall: clean
	rm -f $(PDF)
