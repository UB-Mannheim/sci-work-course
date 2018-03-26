#!/bin/bash

if [[ -n "$1" ]]; then
    RESET_COMMIT=$1
else
    RESET_COMMIT="fa9c40b451b1ec60c6676210c69371c2090d595c"
fi
set -x
git pull origin
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x
