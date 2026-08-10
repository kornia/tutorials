# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a [Quarto](https://quarto.org/)-based documentation site containing Jupyter notebook tutorials for the [Kornia](https://github.com/kornia/kornia) computer vision library (PyTorch-based). Tutorials live in `nbs/` and are rendered to a static site.

## Common Commands

```bash
# Install dependencies
pip install -r requirements.txt
pip install -r requirements-dev.txt

# Install pre-commit hooks
pre-commit install

# Development preview (auto-reload)
make preview

# Render full site to _site/
make render

# Verify all dependencies are installed correctly
make check-deps

# Clean generated files from nbs/
make purge
```

## Adding or Editing Tutorials

Each notebook in `nbs/` must start with a YAML frontmatter cell:

```yaml
---
title: "Tutorial Title"
description: "Short description"
author: ["Author Name"]
date: "MM-DD-YYYY"
categories:
  - "basic"          # or intermediate / advanced
  - "kornia.color"   # or other kornia module
  - "Image matching" # or other generic category
image: "../tutorials/assets/thumbnail.png"
---
```

Follow the frontmatter with a Google Colab badge linking to the notebook.

Add a corresponding thumbnail image to `tutorials/assets/`.

## Code Style

Pre-commit hooks enforce notebook code style via nbQA:
- **black** (128-char line length)
- **isort** (black profile)
- **pyupgrade** (Python 3.8+ syntax)

Run `pre-commit run --all-files` to apply formatting before committing.

## Architecture

- **`nbs/`** — Source Jupyter notebooks (the actual tutorial content). Stored output-stripped; Quarto executes them during render.
- **`tutorials/assets/`** — Thumbnail images (one per tutorial)
- **`data/`** — Small local fallback assets (e.g. `sharpening.mp4` used by `image_registration.ipynb` when video encoding is unavailable)
- **`_quarto.yml`** — Quarto site configuration (navbar, theme, analytics)
- **`index.qmd`** — Landing page
- **`_site/`** — Generated output (gitignored)

## CI/CD

- **`.github/workflows/build.yml`** — Test/build pipeline (runs on push/PR, nightly at 4 AM UTC)
- **`.github/workflows/deploy.yml`** — Deploys to GitHub Pages on `master` push

## Key Dependencies

Python 3.10+ required. Core: `torch`, `kornia`, `kornia-rs`, `torchvision`, `opencv-python`, `numpy` (<=2.0.0). See `requirements.txt` for pinned versions.
