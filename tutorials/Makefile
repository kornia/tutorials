# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
NBSDIR      = _nbs

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile clean purge

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

clean:
	@echo "\nRemoving html and doctrees under '$(BUILDDIR)'...\n"
	rm -rf $(BUILDDIR)/html/ $(BUILDDIR)/doctrees

purge:
	@echo "\nRemoving everything under '$(BUILDDIR)' and '$(NBSDIR)'...\n"
	rm -rf $(BUILDDIR) $(NBSDIR)
