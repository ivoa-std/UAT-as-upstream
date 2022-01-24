# ivoatex Makefile.  The ivoatex/README for the targets available.

# short name of your document (edit $DOCNAME.tex; would be like RegTAP)
DOCNAME = uat-as-upstream

# count up; you probably do not want to bother with versions <1.0
DOCVERSION = 1.0

# Publication date, ISO format; update manually for "releases"
DOCDATE = 2020-11-17

# What is it you're writing: NOTE, WD, PR, REC, PEN, or EN
DOCTYPE = PEN

# An e-mail address of the person doing the submission to the document
# repository (can be empty until a make upload is being made)
AUTHOR_EMAIL=msdemlei@ari.uni-heidelberg.de

# Source files for the TeX document (but the main file must always
# be called $(DOCNAME).tex
SOURCES = $(DOCNAME).tex role_diagram.pdf

# List of image files to be included in submitted package (anything that
# can be rendered directly by common web browsers)
FIGURES = sembarebro.png

# List of PDF figures (figures that must be converted to pixel images to
# work in web browsers).
VECTORFIGURES = freqfreq.eps

# Additional files to distribute (e.g., CSS, schema files, examples...)
AUX_FILES = 

-include ivoatex/Makefile

ivoatex/Makefile:
	@echo "*** ivoatex submodule not found.  Initialising submodules."
	@echo
	git submodule update --init
