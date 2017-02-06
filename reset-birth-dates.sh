#!/bin/bash

if [[ -n "$1" ]];then
    RESET_COMMIT=$1
else
    RESET_COMMIT="c4f307d6620ae5543615453379d17b033b59ecdf"
fi
set -x
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x
