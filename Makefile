BASEFNAME = nystrom-method-a-new-analysis

paper:	$(BASEFNAME).tex $(BASEFNAME).bib
	@-pdflatex $(BASEFNAME).tex
	@-bibtex $(BASEFNAME).aux
	@-pdflatex $(BASEFNAME).tex
	@-pdflatex $(BASEFNAME).tex
	@-pdflatex $(BASEFNAME).tex

clean:
	@-rm $(BASEFNAME).pdf *.log $(BASEFNAME).bbl $(BASEFNAME).blg $(BASEFNAME).aux 2> /dev/null
