#!/bin/bash

if [[ -z "${HARBORN_PYPI_USER}" ]]; then
    echo "Make sure to configure HARBORN_PYPI_USER if you need to install packages from the Harborn PyPi"
else
    echo "Configure access to Harborn PyPi repository"
    poetry config http-basic.harborn "${HARBORN_PYPI_USER}" "${HARBORN_PYPI_SECRET}"
fi

poetry install --no-ansi
poetry run poe "$1"
