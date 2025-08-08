all:
	xelatex main.tex
	bibtex main
	xelatex main.tex
	xelatex main.tex
	dvipdfmx main.dvi

dvi:
	xelatex main.tex

show:
	xdvi main.dvi

pdf:
	dvipdfmx main.dvi
