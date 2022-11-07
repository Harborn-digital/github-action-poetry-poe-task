#!/bin/sh

poetry install --no-ansi
poetry run poe ${task}