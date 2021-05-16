#!/bin/sh

if [ $# -gt 0 ]; then
    RESET_COMMIT="$1"
else
    RESET_COMMIT="016dce962e682cca82efc481a6b8974ed1c3c5b5"
fi
set -x
git pull origin
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x

echo "\nYou can check the latest commit now and then push it to GitHub."
