Image Classification
====================

.. image:: https://production-media.paperswithcode.com/thumbnails/task/task-0000000951-52325f45_O0tAMly.jpg
   :align: right
   :width: 20%

Image Classification is a fundamental task that attempts to comprehend an entire image as a whole.
The goal is to classify the image by assigning it to a specific label. Typically, Image Classification refers to images
in which only one object appears and is analyzed. In contrast, object detection involves both classification and
localization tasks, and is used to analyze more realistic cases in which multiple objects may exist in an image.

Learn more: `https://paperswithcode.com/task/image-classification <https://paperswithcode.com/task/image-classification>`_

Inference
---------

Kornia provides a couple of backbones based on `transformers <https://paperswithcode.com/methods/category/vision-transformer>`_
to perform image classification. Checkout the following apis `VisionTransformer <https://kornia.readthedocs.io/en/latest/contrib.html#kornia.contrib.VisionTransformer>`_,
`ClassificationHead <https://kornia.readthedocs.io/en/latest/contrib.html#kornia.contrib.ClassificationHead>`_ and
combine as follows to customize your own classifier:

.. code:: python

   import torch.nn as nn
   import kornia.contrib as K

   classifier = nn.Sequential(
      K.VisionTransformer(image_size=224, patch_size=16),
      K.ClassificationHead(num_classes=1000)
   )

   img = torch.rand(1, 3, 224, 224)
   out = classifier(img)     # BxN
   scores = out.argmax(-1)   # B

.. tip::
   Read more about our `Vision Transformer (ViT) <https://kornia.readthedocs.io/en/latest/models/vit.html#kornia-vit>`_

Finetuning
----------

In order to customize your model with your own data you can use our `Training API <https://kornia.readthedocs.io/en/latest/get-started/training.html#training-api>`_
to perform the `fine-tuning <https://paperswithcode.com/methods/category/fine-tuning>`_ of your model.

We provide `ImageClassifierTrainer <https://kornia.readthedocs.io/en/latest/x.html#kornia.x.ImageClassifierTrainer>`_ with a default training structure to train basic
image classification problems. However, one can leverage this is API using the models provided by Kornia or
use existing libraries from the PyTorch ecosystem such as `torchvision <https://pytorch.org/vision/stable/models.html>`_
or `timm <https://rwightman.github.io/pytorch-image-models/>`_.

Create the dataloaders:

.. literalinclude:: ../../scripts/training/image_classifier/main.py
   :language: python
   :lines: 20-36

Define your model, losses, optimizers and schedulers:

.. literalinclude:: ../../scripts/training/object_detection/main.py
   :language: python
   :lines: 37-48

Define your augmentations:

.. literalinclude:: ../../scripts/training/image_classifier/main.py
   :language: python
   :lines: 50-65

Finally, instantiate the `ImageClassifierTrainer <https://kornia.readthedocs.io/en/latest/x.html#kornia.x.ImageClassifierTrainer>`_ and execute your training pipeline.

.. literalinclude:: ../../scripts/training/image_classifier/main.py
   :language: python
   :lines: 66-78

.. seealso::
   Play with the full example `here <https://github.comkornia/tutorials/tree/master/examples/scripts/training/image_classifier>`_
