#!/bin/sh

if [ $# -gt 0 ]; then
    RESET_COMMIT="$1"
else
    RESET_COMMIT="798f29063ace01c61ebe57b9f9e726398556509f"
fi
set -x
git pull origin
git checkout "$RESET_COMMIT" data/birth-dates/*
git commit -m "Reset birth dates"
set +x

echo "\nYou can check the latest commit now and then push it to GitHub."
