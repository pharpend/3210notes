all: build clean

clean:
	rm .tex -rf

build:
	mkdir .tex
	cp notes.tex .tex
	cd .tex && \
	  latexmk -pdf notes.tex && \
	  mv notes.pdf ..
