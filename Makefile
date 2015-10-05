all: build clean

clean:
	rm .tex -rf


build:
	mkdir .tex
	cp -rv notes.tex notes.bib chapters graphs .tex
	cd .tex && \
	  latexmk -pdf notes.tex && \
	  mv notes.pdf ..

plots:
	cd graphs && \
	  sage *.sage
