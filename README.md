# Kornia tutorials

The kornia tutorials provide from basic to advanced tutorials for [kornia library](https://github.com/kornia/kornia).

These tutorials are made by the community for the community. To shows how to use the Kornia API, and also show how these
 computer vision algorithms can be used in a variety of scenarios.

The kornia tutorials uses the [quarto](https://quarto.org/) framework to generate the website from jupyter notebooks.

## Guide


### Step-by-step setup environment
1. Install [quarto](https://quarto.org/) following the official docs: https://quarto.org/docs/get-started/
1. Create a virtual environment
```console
# with virtual env
$ virtualenv venv -p python3.10
# with conda
$ conda create -p venv python=3.10
```
1. Install the dependencies
```console
$ pip install -r requirements.txt
$ pip install -r requirements-dev.txt
```
1. Run quarto on preview mode. Which automatically reloads the browser when input files or document resources change.
```console
# Using our makefile command
$ make preview
# Using the quarto cli directly
$ quarto preview .
```

For Linux users, you can use the `make setup-quarto` which will download and install the quarto binary for linux.
And the `make setup` which will pip install the requirements.

### How to add a new tutorial

The kornia tutorials are jupyter notebooks (you can find them into [./nbs/](./nbs/) directory). Each notebook corresponds into a
"blogpost" page within the same content. The notebook is compiled into a webpage by quarto, which means you can write a
tutorial using a jupyter notebook with the normal pattern of Python and Markdown cells. This enable some special features
, to it we recomment you to check the [quarto docs](https://quarto.org/docs/).

Aside from the content of the tutorial, the first cell of the notebook should have a header content (markdown cell). This header
allow us to have thumbmail, author, categories, etc. This header should look like:

```txt
---
title: "<YOUR TUTORIAL TITLE HERE>"
description: "<YOUR TUTORIAL DESCRIPTION HERE>"
author:
    - "<YOUR NAME HERE>"
date: "<TUTORIAL DATE INTO FORMAT MM-DD-YYYY>"
categories:
    - "<CATEGORY HERE: basic, itermediate or advanced>"
    - "<CATEGORY HERE, based on the kornia module used: kornia.color, kornia.augmentation, etc>"
    - "<OTHER CATEGORY: checkout the readme list of categories>"
    - "<OTHER CATEGORY: checkout the readme list of categories>"
    - "<OTHER CATEGORY: checkout the readme list of categories>"
image: "../tutorials/assets/<YOUR TUTORIAL THUMBMAIL FILENAME HERE>.png"
---

<a href="https://colab.sandbox.google.com/github/kornia/tutorials/blob/master/nbs/<YOUR TUTORIAL FILENAME HERE>.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in google colab"></a>
```

For this header you should generate an image to be used as thumbmail, and save it into the [tutorials/assets/](./tutorials/assets/)
directory. Also update the link for the colab, so users can directly open your tutorial into the colab. You can add
`N` categories, look at the categories already available in the README, if you want to use a different one, please update the
README too.


### Tutorials categories
If you add a new category on the tutorials frontmatter, update this too.

By Levels
- Basic
- Intermediate
- Advanced

By module
- kornia.augmentation
- Kornia.feature
- kornia.contrib
- kornia.filters
- kornia.color
- kornia.io
- kornia.geometry
- kornia.enhance

By generic type/category
- Data augmentation
- Segmentation
- Edge Detection
- Labeling
- Denoising
- Color spaces
- Local features
- Filters
- Blur
- Line
- Plane
- Keypoints
- Homography
- Image matching
- Image Registration
- Warp image
- Augmentation container
- Augmentation Sequential
- Line detection
- Line matching
- Rescale
- Affine
- 2D
- Unsupervised
- Self-supervised
- Presets

By specific names of models / API
- SOLD2
- KeyNet
- Adalam
- HardNet
- DISK
- Patches
- LAF
- LoFTR
