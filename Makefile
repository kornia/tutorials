# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = kornia-tutorials
SOURCEDIR     = .
BUILDDIR      = _build
DATADIR      = _data

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile docs

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O) -v

docs:
	make html
	rm -rf docs
	cp -r $(BUILDDIR)/html docs
	touch docs/.nojekyll

clean:
	@echo "Removing everything under 'build'.."
	@rm -rf $(BUILDDIR)/html/ $(BUILDDIR)/doctrees
