#!/bin/bash

if [[ -n "$1" ]]; then
    RESET_COMMIT=$1
else
    RESET_COMMIT="f2cfe46245ef67f35302e79b0d9c4993011d082c"
fi
set -x
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x
