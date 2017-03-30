#!/bin/bash

if [[ -n "$1" ]]; then
    RESET_COMMIT=$1
else
    RESET_COMMIT="7cf80935c01bb2b15e8164765025e1bd86d0dd6c"
fi
set -x
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x
