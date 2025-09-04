#!/usr/bin/env bash

# Checks a single edited file in data/birth-dates/*.txt against an answer key.
# Rules:
#   - Exactly ONE *.txt file in data/birth-dates/ must be edited in the PR (strict).
#   - Comparison ignores CRLF and outer whitespace/newlines.
#   - Fails on mismatch or rule violation; writes a short summary.

# `>> "$GITHUB_STEP_SUMMARY"` writes to the GitHub Actions step summary.
# `echo "::error::SomeMessage..."` annotates the file in the PR view.

set -euo pipefail

# Get BASE and HEAD commit SHAs from env vars:
BASE="${BASE_SHA:-}"
HEAD="${HEAD_SHA:-}"

# Find changed files in this PR:
mapfile -t files < <(git diff --name-only "$BASE..$HEAD" -- 'data/birth-dates/*.txt' | tr -d '\r')

# Enforce exactly one changed file:
count=${#files[@]}
if [[ $count -ne 1 ]]; then
  echo "::error::Expected exactly 1 edited file in data/birth-dates/ but found $count files!"
  if [[ $count -gt 0 ]]; then
    # List edited files in summary as markdown table:
    echo -e "### Edited birthdate files: \n" >> "$GITHUB_STEP_SUMMARY"
    echo "| Files edited: $count |" >> "$GITHUB_STEP_SUMMARY"
    echo "|---|" >> "$GITHUB_STEP_SUMMARY"
    for f in "${files[@]}"; do
      echo "| \`$(basename "$f")\` |" >> "$GITHUB_STEP_SUMMARY"
    done
  else
    echo "_No target files were changed._" >> "$GITHUB_STEP_SUMMARY"
  fi
  exit 1
fi

# Check the single changed file:
file="${files[0]}" # There is exactly one file
basefile="$(basename "$file")"

# Lookup expectedLine line from the answer key: format is "filename|exact expectedLine line"
# reminder for future self:
# - grep1: drops comment lines
# - grep2: matches the line starting with "filename|"
# - cut: splits the matching line, outputs the 2nd part
# - sed: trims leading/trailing whitespaces
expectedLine="$(
  base64 --decode .github/workflows/birthdates \
  | grep -v '^[[:space:]]*#' \
  | grep -m1 "^${basefile//./\\.}|" \
  | cut -d'|' -f2- \
  | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
)"

# Check if the file had an entry in the results file:
if [[ -z "$expectedLine" ]]; then
  echo "::error file=${file}::No result match found for ${basefile}!" #
  echo "**${basefile}** – ❌ No result match found" >> "$GITHUB_STEP_SUMMARY"
  exit 1
fi

# Read received change: strip CRs, trim leading/trailing whitespace/newlines
receivedLine="$(
  tr -d '\r' < "$file" \
  | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
)"

# Compare:
if [[ "$receivedLine" == "$expectedLine" ]]; then
  echo "**${basefile}** – ✅ correct" >> "$GITHUB_STEP_SUMMARY"
else
  echo "::error file=${file}::Content does not match expected line"
  echo -e "**${basefile}** – ❌ mismatch \n" >> "$GITHUB_STEP_SUMMARY"
  echo -e "**Expected:** \`$expectedLine\` \n" >> "$GITHUB_STEP_SUMMARY"
  echo -e "**Received:** \`$receivedLine\` \n" >> "$GITHUB_STEP_SUMMARY"
  exit 1
fi
