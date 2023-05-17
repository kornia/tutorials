# Kornia tutorials

## (🚨 Warning: Unstable Prototype 🚨)

This current branch `migration/quarto` has a development version of Kornia tutorials using Quarto.

A few things need to be accomplished to fully migrate from `sphinx` and `myst-nb` to [Quarto](quarto.org/). See [todo section](#todo--roadmap).

### TODO / roadmap

- [x] Minimal setup using Quarto
    - [x] Delete `sphinx` and `myst-st` configs files
    - [x] Initial configuration of Quarto (`_quarto.yml`)
    - [x] Index page: A temporary page in a "blog posts listing" style before #45 be done.
        - Should list our tutorials
            - Option for filtering, ordering and search
            - Tag!!! Be able to add categories "tags" into our tutorials, to be easy to navigate.
    - [x] Update the Makefile
        - Update the `generate` command to convert inplace the notebooks: Just to check if they are a valid jupyter notebook.
        - Update the `execute` command to execute inplace the notebooks.
        - Update the `setup` command
            - Added a `setup-quarto`: Which will works just on linux machine. This command directly download the binary of quarto using curl. Then execute `dpkg` to install quarto as a super user. And delete the binary file.
            - Update the command to after pip install the dependencies execute `setup-quarto`
        - Added `preview` command to execute the quarto preview to test locally the webpages. **Use this command to develop locally it's easily to debug with it!!**
        - Added `render` command to build the webpages.
    - [x] Added a CI to deploy the quarto build into GH pages!
- [ ] Customize the theme to look alike the main documentation (furo theme for sphinx)
    - [ ] Font
    - [ ] Colors
        - [ ] Dark theme
        - [ ] Light theme
    - [ ] Buttons
    - [ ] Use the Kornia logo!!
- [ ] Migrate the training tutorials (tutorials/training/) `rst` files to work with Quarto
- [x] Add a basic front matter into each tutorial! And update the "open in colab" badge to be a HTML tag instead of the markdown thing.
- [x] Add/generate a thumbnail and add it into the front matter for each tutorial!

## Guide

To compile the docs in local to debug

```bash
make setup
make preview
```

### Tutorials categories
If you add a new category on the tutorials frontmatter, update this too.

- Basic
- Intermediate
- Advanced

- kornia.augmentation
- Kornia.feature
- kornia.contrib
- kornia.filters
- kornia.color
- kornia.io
- kornia.geometry
- kornia.enhance

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

- SOLD2
- KeyNet
- Adalam
- HardNet
- DISK
- Patches
- LAF
- LoFTR
- 2D
- Unsupervised
- Self-supervised