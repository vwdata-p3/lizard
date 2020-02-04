.PHONY: all clean

all: main.pdf

main.pdf: main.tex
	# to make sure latexmk agrees with make that a rebuild is necessary:
	-rm $@
	latexmk -pdf main.tex

clean:
	latexmk -CA
	-rm *.{bbl,log}
