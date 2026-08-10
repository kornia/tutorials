# Kornia tutorials

Community-made tutorials for the [kornia](https://github.com/kornia/kornia) computer vision library, from basic to advanced. Each tutorial is a Jupyter notebook in [`nbs/`](./nbs/), rendered to a static website with [Quarto](https://quarto.org/).

Read them online: https://kornia.github.io/tutorials/

## Setup

1. Install [Quarto](https://quarto.org/docs/get-started/) (on Linux, `make setup-quarto` downloads and installs the binary for you).
2. Create a virtual environment (Python 3.10+):

   ```console
   $ virtualenv venv -p python3.10   # or: conda create -p venv python=3.10
   ```

3. Install the dependencies:

   ```console
   $ pip install -r requirements.txt
   $ pip install -r requirements-dev.txt
   ```

4. Preview the site with auto-reload:

   ```console
   $ make preview
   ```

## Adding a new tutorial

A tutorial is a regular Jupyter notebook (Python + Markdown cells) placed in [`nbs/`](./nbs/). Quarto compiles it into a web page; see the [Quarto docs](https://quarto.org/docs/) for extra features.

To add one:

1. Create your notebook in `nbs/`.
2. Make its first cell a Markdown cell with this frontmatter, followed by a Colab badge:

   ```txt
   ---
   title: "<TUTORIAL TITLE>"
   description: "<SHORT DESCRIPTION>"
   author:
       - "<YOUR NAME>"
   date: "<MM-DD-YYYY>"
   categories:
       - "<LEVEL: basic, intermediate or advanced>"
       - "<KORNIA MODULE: kornia.color, kornia.augmentation, ...>"
       - "<OTHER CATEGORIES: see the list below>"
   image: "../tutorials/assets/<THUMBNAIL FILENAME>.png"
   ---

   <a href="https://colab.sandbox.google.com/github/kornia/tutorials/blob/master/nbs/<NOTEBOOK FILENAME>.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in google colab"></a>
   ```

3. Add a thumbnail image to [`tutorials/assets/`](./tutorials/assets/).
4. Pick categories from the list below; if you introduce a new one, add it to this README too.

<details>
<summary><b>Tutorial categories</b> (click to expand)</summary>

**By level:** Basic, Intermediate, Advanced

**By module:** kornia.augmentation, kornia.feature, kornia.contrib, kornia.filters, kornia.color, kornia.io, kornia.geometry, kornia.enhance

**By type:** Data augmentation, Segmentation, Edge Detection, Labeling, Denoising, Color spaces, Local features, Filters, Blur, Line, Plane, Keypoints, Homography, Image matching, Image Registration, Warp image, Augmentation container, Augmentation Sequential, Line detection, Line matching, Rescale, Affine, 2D, Unsupervised, Self-supervised, Presets

**By model / API name:** SOLD2, KeyNet, Adalam, HardNet, DISK, Patches, LAF, LoFTR

</details>

## Contributing

New tutorials are very welcome, especially ones that fill coverage gaps. Good starting points:

- [Tutorial coverage gaps (#115)](https://github.com/kornia/tutorials/issues/115) — modules with no tutorial yet: depth/3D, camera models, `kornia.io` image loading, ONNX export/deployment.
- [Open issues](https://github.com/kornia/tutorials/issues) — tutorial requests and other ideas, e.g. [image stitching (#98)](https://github.com/kornia/tutorials/issues/98) or a [LoFTR indoor example (#44)](https://github.com/kornia/tutorials/issues/44).

Before committing, install the hooks with `pre-commit install` (or run `pre-commit run --all-files`) so notebook code style is applied automatically.
