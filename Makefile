filename=main

all: 
	latex ${filename}
	bibtex ${filename}
	latex ${filename}
	latex ${filename}

gen_pdf:
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	bibtex ${filename}
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex
	pdflatex -synctex=1 -interaction=nonstopmode ${filename}.tex

pdf: gen_pdf cleantmp

cleantmp:
	rm -f *.ps *.log *.aux *.out *.dvi *.bbl *.blg *.toc *.gz *.lof

cleanpdf:
	rm -f *.pdf

clean:	cleantmp cleanpdf


