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
- [ ] Add a basic front matter into each tutorial! And update the "open in colab" badge to be a HTML tag instead of the markdown thing.
    - [ ] "nbs/aliased_and_not_aliased_patch_extraction.ipynb"
    - [ ] "nbs/canny.ipynb"
    - [ ] "nbs/color_conversions.ipynb"
    - [ ] "nbs/color_raw_to_rgb.ipynb"
    - [ ] "nbs/color_yuv420_to_rgb.ipynb"
    - [ ] "nbs/connected_components.ipynb"
    - [ ] "nbs/data_augmentation_2d.ipynb"
    - [ ] "nbs/data_augmentation_kornia_lightning.ipynb"
    - [ ] "nbs/data_augmentation_mosiac.ipynb"
    - [ ] "nbs/data_augmentation_segmentation.ipynb"
    - [ ] "nbs/data_augmentation_sequential.ipynb"
    - [ ] "nbs/data_patch_sequential.ipynb"
    - [ ] "nbs/descriptors_matching.ipynb"
    - [ ] "nbs/extract_combine_patches.ipynb"
    - [ ] "nbs/face_detection.ipynb"
    - [ ] "nbs/filtering_edges.ipynb"
    - [ ] "nbs/filtering_operators.ipynb"
    - [ ] "nbs/fit_line.ipynb"
    - [ ] "nbs/fit_plane.ipynb"
    - [ ] "nbs/gaussian_blur.ipynb"
    - [ ] "nbs/geometric_transforms.ipynb"
    - [ ] "nbs/geometry_generate_patch.ipynb"
    - [ ] "nbs/hello_world_tutorial.ipynb"
    - [ ] "nbs/homography.ipynb"
    - [ ] "nbs/image_enhancement.ipynb"
    - [ ] "nbs/image_histogram.ipynb"
    - [ ] "nbs/image_matching_adalam.ipynb"
    - [ ] "nbs/image_matching_disk.ipynb"
    - [ ] "nbs/image_matching.ipynb"
    - [ ] "nbs/image_points_transforms.ipynb"
    - [ ] "nbs/image_prompter.ipynb"
    - [ ] "nbs/image_registration.ipynb"
    - [ ] "nbs/image_stitching.ipynb"
    - [ ] "nbs/line_detection_and_matching_sold2.ipynb"
    - [ ] "nbs/morphology_101.ipynb"
    - [ ] "nbs/resize_antialias.ipynb"
    - [ ] "nbs/rotate_affine.ipynb"
    - [ ] "nbs/total_variation_denoising.ipynb"
    - [ ] "nbs/unsharp_mask.ipynb"
    - [ ] "nbs/warp_perspective.ipynb"
    - [ ] "nbs/zca_whitening.ipynb"
- [ ] Add/generate a thumbnail and add it into the front matter for each tutorial!
    - [ ] "nbs/aliased_and_not_aliased_patch_extraction.ipynb"
    - [ ] "nbs/canny.ipynb"
    - [ ] "nbs/color_conversions.ipynb"
    - [ ] "nbs/color_raw_to_rgb.ipynb"
    - [ ] "nbs/color_yuv420_to_rgb.ipynb"
    - [ ] "nbs/connected_components.ipynb"
    - [ ] "nbs/data_augmentation_2d.ipynb"
    - [ ] "nbs/data_augmentation_kornia_lightning.ipynb"
    - [ ] "nbs/data_augmentation_mosiac.ipynb"
    - [ ] "nbs/data_augmentation_segmentation.ipynb"
    - [ ] "nbs/data_augmentation_sequential.ipynb"
    - [ ] "nbs/data_patch_sequential.ipynb"
    - [ ] "nbs/descriptors_matching.ipynb"
    - [ ] "nbs/extract_combine_patches.ipynb"
    - [ ] "nbs/face_detection.ipynb"
    - [ ] "nbs/filtering_edges.ipynb"
    - [ ] "nbs/filtering_operators.ipynb"
    - [ ] "nbs/fit_line.ipynb"
    - [ ] "nbs/fit_plane.ipynb"
    - [ ] "nbs/gaussian_blur.ipynb"
    - [ ] "nbs/geometric_transforms.ipynb"
    - [ ] "nbs/geometry_generate_patch.ipynb"
    - [ ] "nbs/hello_world_tutorial.ipynb"
    - [ ] "nbs/homography.ipynb"
    - [ ] "nbs/image_enhancement.ipynb"
    - [ ] "nbs/image_histogram.ipynb"
    - [ ] "nbs/image_matching_adalam.ipynb"
    - [ ] "nbs/image_matching_disk.ipynb"
    - [ ] "nbs/image_matching.ipynb"
    - [ ] "nbs/image_points_transforms.ipynb"
    - [ ] "nbs/image_prompter.ipynb"
    - [ ] "nbs/image_registration.ipynb"
    - [ ] "nbs/image_stitching.ipynb"
    - [ ] "nbs/line_detection_and_matching_sold2.ipynb"
    - [ ] "nbs/morphology_101.ipynb"
    - [ ] "nbs/resize_antialias.ipynb"
    - [ ] "nbs/rotate_affine.ipynb"
    - [ ] "nbs/total_variation_denoising.ipynb"
    - [ ] "nbs/unsharp_mask.ipynb"
    - [ ] "nbs/warp_perspective.ipynb"
    - [ ] "nbs/zca_whitening.ipynb"


## Guide

To compile the docs in local to debug

```bash
make setup
make preview
```
