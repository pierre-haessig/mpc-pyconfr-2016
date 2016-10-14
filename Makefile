# Compilation de projet Latex
# PH juin 2014
TEXFILE = MPC_Python
TEXOPTS = ''


### PDF presentation:
pdf: $(TEXFILE).pdf

# Compilation
$(TEXFILE).pdf: $(TEXFILE).tex
	pdflatex $(TEXOPTS) $(TEXFILE)
	pdflatex $(TEXOPTS) $(TEXFILE)


### Cleaning the build files:

# Removes just the logs and auxilliary files:
mostlyclean: 
	rm -fv *.aux *.idx *.log *.toc *.blg *.bbl *.synctex.gz *.out *.brf *.tex.backup *.snm *.nav

# Removes all outputs (e.g. PDF)
clean: mostlyclean
	rm -fv $(TEXFILE).pdf

### Upload presentation to remote server
push:
	rsync -av $(TEXFILE).pdf eole:www
