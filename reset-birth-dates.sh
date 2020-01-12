#!/bin/bash

if [[ -n "$1" ]]; then
    RESET_COMMIT=$1
else
    RESET_COMMIT="c5aeef3904abac55060ea05e03240751ba14b7fd"
fi
set -x
git pull origin
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x

echo "\nYou can check the latest commit now and then push it to GitHub."
