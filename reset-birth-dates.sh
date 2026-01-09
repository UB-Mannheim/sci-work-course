#!/bin/sh

if [ $# -gt 0 ]; then
    RESET_COMMIT="$1"
else
    RESET_COMMIT="bc0238e371780fb0a294e62c5f2daa2b32c82154"
fi
set -x
git pull --rebase origin
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x

echo "\nYou can check the latest commit now and then push it to GitHub."
