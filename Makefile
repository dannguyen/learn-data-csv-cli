# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = LearnCommand-LineCSVTools
SOURCEDIR     = .
BUILDDIR      = docs

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@echo '...Deleting all _static, etc directories in docs/'
	rm -rf docs/_* docs/html
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo '...Moving all contents of docs/html to docs (for Github pages)'
	mv docs/html/* docs/
	mv .[A-Za-z0-9]* docs/
	rm -r docs/html
