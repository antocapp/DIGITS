# DIGITS Python3

My attempt at updating [NVIDIA DIGITS](https://github.com/NVIDIA/DIGITS/) for Python 3 compatibility. 

[Python 2.7 will not be maintained past 2020](https://pythonclock.org/). Starting new projects in Python 2.7 is just asking for techinical debt you don't need.

## Install instructions.

Tested on Ubuntu 16.04. But should work on in environment DIGITS and Python3 works.

Clone this project:

    git clone https://github.com/jed-frey/DIGITS.git ~/DIGITS

To keep my OS's Python environment clean I prefer to work in [Virtual Environments](http://docs.python-guide.org/en/latest/dev/virtualenvs/). Create a Python 3 virtual environment called ```digits_venv3``` & activate it.

	VENV=digits_venv3
    virtualenv --python=$(which python3) ~/${VENV}
    source ~/${VENV}/bin/activate
    
Setup DIGITS

    cd ~/DIGITS
    pip install -r requirements.txt
    python setup.py build
    python setup.py develop
    
Run Digits.

	digits-devserver
	
or

	digits-devserver --debug

## Issues

It doesn't work just yet. No fancy mailing list, just use the issues list as it was intended.

https://github.com/jed-frey/DIGITS/issues

# NVIDIA DIGITS ReadMe

DIGITS (the **D**eep Learning **G**PU **T**raining **S**ystem) is a webapp for training deep learning models.
The currently supported frameworks are: Caffe, Torch, and Tensorflow.

# Installation

| Installation method | Supported platform[s] | Available versions | Instructions |
| --- | --- | --- | --- |
| Docker | Linux | [DockerHub tags](https://hub.docker.com/r/nvidia/digits/tags/) | [nvidia-docker wiki](https://github.com/NVIDIA/nvidia-docker/wiki/DIGITS) |
| Source | Ubuntu 14.04, 16.04 | [GitHub tags](https://github.com/NVIDIA/DIGITS/releases) | [docs/BuildDigits.md](docs/BuildDigits.md) |

# Usage

Once you have installed DIGITS, visit [docs/GettingStarted.md](docs/GettingStarted.md) for an introductory walkthrough.

Then, take a look at some of the other documentation at [docs/](docs/) and [examples/](examples/):

* [Getting started with TensorFlow](docs/GettingStartedTensorflow.md)
* [Getting started with Torch](docs/GettingStartedTorch.md)
* [Fine-tune a pretrained model](examples/fine-tuning/README.md)
* [Train an autoencoder network](examples/autoencoder/README.md)
* [Train a regression network](examples/regression/README.md)
* [Train a Siamese network](examples/siamese/README.md)
* [Train a text classification network](examples/text-classification/README.md)
* [Train an object detection network](examples/object-detection/README.md)
* [Learn more about weight initialization](examples/weight-init/README.md)
* [Use Python layers in your Caffe networks](examples/python-layer/README.md)
* [Download a model and use it to classify an image outside of DIGITS](examples/classification/README.md)
* [Overview of the REST API](docs/API.md)

# Get help

### Installation issues
* First, check out the instructions above
* Then, ask questions on our [user group](https://groups.google.com/d/forum/digits-users)

### Usage questions
* First, check out the [Getting Started](docs/GettingStarted.md) page
* Then, ask questions on our [user group](https://groups.google.com/d/forum/digits-users)

### Bugs and feature requests
* Please let us know by [filing a new issue](https://github.com/NVIDIA/DIGITS/issues/new)
* Bonus points if you want to contribute by opening a [pull request](https://help.github.com/articles/using-pull-requests/)!
  * You will need to send a signed copy of the [Contributor License Agreement](CLA) to digits@nvidia.com before your change can be accepted.

