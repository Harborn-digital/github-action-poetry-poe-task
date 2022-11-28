#!/bin/sh

poetry install --no-ansi
poetry run pip install setuptools
poetry run poe $1
