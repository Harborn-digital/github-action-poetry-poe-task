#!/bin/bash

if [[ -z "${HARBORN_PYPI_USER}" ]]; then
    poetry config http-basic.harborn "${HARBORN_PYPI_USER}" "${HARBORN_PYPI_SECRET}"
fi

poetry install --no-ansi
poetry run poe "$1"
