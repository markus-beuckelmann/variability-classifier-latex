FILE = thesis

all: bib thesis

thesis:

	pdflatex $(FILE)

bib:

	bibtex $(FILE)

show:

	evince thesis.pdf &

clean: delete

	rm -f $(FILE).pdf

delete:

	rm -f *.aux *.lof *.log *.lot *.toc *.bbl *.blg *.dvi *.ps *.bcf .log

count:

	echo "Number of characters:"
	pdftotext $(FILE).pdf - | wc -c
	echo "Number of words:"
	pdftotext $(FILE).pdf - | wc -w
