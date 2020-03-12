.PHONY: default
default:
	@echo "Default section does nothing"

extarrows-test.pdf: *.tex *.sty
	@pdflatex extarrows-test

extarrows.zip: *.tex *.sty Makefile *.pdf
	mkdir -p extarrows
	cp extarrows.sty extarrows-test.tex README.md extarrows-test.pdf extarrows
	zip -9r $(@) extarrows
	rm -rf ./extarrows
	@echo ":: Your tarball '$(@)' is ready for uploading to https://ctan.org/upload."

.PHONY: all
all: extarrows-test.pdf extarrows.zip
