CWD = $(realpath $(dir $(firstword $(MAKEFILE_LIST))))
PROJ ?= $(notdir ${CWD})

VENV?=.venv
PIP?=${VENV}/bin/pip
PYTHON?=${VENV}/bin/python

BASE?=setuptools wheel numpy runcython3

.DEFAULT: venv
venv: ${VENV}
${VENV}: requirements.txt
	python3 -mvenv ${VENV}
	${PIP} install --upgrade pip
	${PIP} install --upgrade ${BASE}
#	${PIP} install -r requirements.txt

.PHONY: clean
clean:
	@git clean -xfd

requirements.txt:
	@echo requirements.txt is missing.

.PHONY: sprint
sprint:
	/bin/sh .sprintcommit

.PHONY: debug
debug:
	$(info $${CWD}=${CWD})
	$(info $${PROJ}=${PROJ})

.PHONY: build
build:
	${PYTHON} setup.py build