SOURCEDIR     = nbs

.PHONY: purge generate execute sphinx build setup check-deps

purge:
	@echo "\nRemoving all files that are not notebooks on '$(SOURCEDIR)'...\n"
	find $(SOURCEDIR) -type f ! -name "*.ipynb" -delete

generate:
	@echo "\n\nGenerating all tutorials notebooks to '$(SOURCEDIR)'...\n"
	jupyter nbconvert $(SOURCEDIR)/**.ipynb --to notebook --output-dir $(SOURCEDIR)

execute:
	@echo "\n\nExecuting all tutorials notebooks under '$(SOURCEDIR)'...\n"
	jupyter nbconvert $(SOURCEDIR)/**.ipynb --execute --inplace

build: purge generate render

setup-quarto:
	curl -LO https://www.quarto.org/download/latest/quarto-linux-amd64.deb
	sudo dpkg -i quarto-linux-amd64.deb
	rm quarto-linux-amd64.deb

setup:
	pip install -r requirements.txt && pip install -r requirements-dev.txt;
	make setup-quarto

preview:
	quarto preview .

render:
	quarto render .

check-deps:
	@which python
	@python --version
	@python -c "import kornia;print('Kornia version: ', kornia.__version__)"
	@python -c "import torch;print('Pytorch version: ', torch.__version__)"
	@python -c "import torchvision;print('Pytorch vision version: ', torchvision.__version__)"
	@python -c "import cv2;print('OpenCV version: ', cv2.__version__)"
