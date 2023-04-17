SOURCEDIR     = nbs
DOCSDIR       = tutorials
DOCSDIRNBS    = $(DOCSDIR)/_nbs

.PHONY: purge generate execute sphinx build setup check-deps

purge:
	@echo "\n\nRemoving all notebooks under '$(DOCSDIRNBS)'...\n"
	rm -f $(DOCSDIRNBS)/*.ipynb
	@echo "\nRemoving all files that are not notebooks on '$(SOURCEDIR)'...\n"
	find $(SOURCEDIR) -type f ! -name "*.ipynb" -delete
	@echo "\n"
	@cd $(DOCSDIR); make purge

generate:
	@echo "\n\nGenerating all tutorials notebooks to '$(DOCSDIRNBS)'...\n"
	jupyter nbconvert $(SOURCEDIR)/**.ipynb --to notebook --output-dir $(DOCSDIRNBS)

execute:
	@echo "\n\nExecuting all tutorials notebooks under '$(DOCSDIRNBS)'...\n"
	jupyter nbconvert $(DOCSDIRNBS)/**.ipynb --execute --inplace

sphinx:
	cd $(DOCSDIR); make clean html

build: purge generate sphinx

setup:
	pip install -r requirements.txt && pip install -r requirements-dev.txt

check-deps:
	@which python
	@python --version
	@python -c "import kornia;print('Kornia version: ', kornia.__version__)"
	@python -c "import torch;print('Pytorch version: ', torch.__version__)"
	@python -c "import torchvision;print('Pytorch vision version: ', torchvision.__version__)"
	@python -c "import cv2;print('OpenCV version: ', cv2.__version__)"


