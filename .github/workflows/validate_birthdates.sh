#!/usr/bin/env bash

# Validates the birthdate exercise submitted by a pull request.
#
# Each participant edits one numbered file in data/birth-dates/. The file must contain the one expected "Person Name: YYYY" line 
# for that exercise number. The expected lines are stored in the answer file.
#
# Rules:
#   - Exactly ONE *.txt file in data/birth-dates/ must be edited in the PR (strict).
#   - The filename must consist of two digits followed by .txt, for example 07.txt.
#   - Comparison ignores CRLF and outer whitespace/newlines.
#   - Fails on mismatch or rule violation; writes a short summary.

# The workflow checks out the trusted base revision (`$BASE`) and fetches the untrusted PR revision (`$HEAD`) only into Git's object database.
# Therefore, this script reads PR files with `git show`; it must never source or execute content from the PR revision. The comparison starts at the
# commits' merge base so newer changes on the base branch are not mistaken for changes made by an older PR.
#
# Appending to SUMMARY_FILE writes Markdown to the GitHub Actions job summary. A line in the form `::error file=path::message` also creates an
# annotation on the relevant file (`$file`) in GitHub's pull-request and workflow views.

set -euo pipefail

# The workflow supplies the trusted target commit as BASE_SHA and the exact PR commit that triggered the run as HEAD_SHA. Both commits must already
# have been fetched by the workflow before this script starts.
BASE="${BASE_SHA:-}"
HEAD="${HEAD_SHA:-}"
# Outside GitHub Actions there may be no summary file, so /dev/null lets the validator remain convenient to run locally.
SUMMARY_FILE="${GITHUB_STEP_SUMMARY:-/dev/null}"

if [[ -z "$BASE" || -z "$HEAD" ]]; then
  echo "::error::BASE_SHA and HEAD_SHA must both be set"
  echo "❌ Validator configuration error: missing BASE_SHA or HEAD_SHA." >> "$SUMMARY_FILE"
  exit 1
fi

if ! git cat-file -e "${BASE}^{commit}" 2>/dev/null; then
  echo "::error::Base commit ${BASE} is not available"
  echo "❌ Validator configuration error: the base commit is unavailable." >> "$SUMMARY_FILE"
  exit 1
fi

if ! git cat-file -e "${HEAD}^{commit}" 2>/dev/null; then
  echo "::error::PR head commit ${HEAD} is not available"
  echo "❌ Validator configuration error: the PR head commit is unavailable." >> "$SUMMARY_FILE"
  exit 1
fi

# Find the common ancestor of the current base tip and the PR head. A direct
# BASE-to-HEAD comparison would also include changes added to the base branch
# after the contributor created their PR.
if ! MERGE_BASE="$(git merge-base "$BASE" "$HEAD")" || [[ -z "$MERGE_BASE" ]]; then
  echo "::error::Could not find a common ancestor for the base and PR commits"
  echo "❌ Validator configuration error: could not determine the PR's merge base." >> "$SUMMARY_FILE"
  exit 1
fi

# Keep only birthdate files changed by the PR itself. The separate restriction
# job rejects changes elsewhere; this script enforces the exercise-specific
# "exactly one birthdate file" rule.
if ! changed_files="$(git diff --name-only "$MERGE_BASE" "$HEAD" -- 'data/birth-dates/*.txt' | tr -d '\r')"; then
  echo "::error::Could not determine the changed birthdate files"
  echo "❌ Could not determine the changed birthdate files." >> "$SUMMARY_FILE"
  exit 1
fi
mapfile -t files < <(printf '%s' "$changed_files")

# Enforce exactly one changed file:
count=${#files[@]}
if [[ $count -ne 1 ]]; then
  echo "::error::Expected exactly 1 edited file in data/birth-dates/ but found $count files!"
  if [[ $count -gt 0 ]]; then
    # List edited files in summary as markdown table:
    echo -e "### Edited birthdate files: \n" >> "$SUMMARY_FILE"
    echo "| Files edited: $count |" >> "$SUMMARY_FILE"
    echo "|---|" >> "$SUMMARY_FILE"
    for f in "${files[@]}"; do
      echo "| \`$(basename "$f")\` |" >> "$SUMMARY_FILE"
    done
  else
    echo "_No target files were changed._" >> "$SUMMARY_FILE"
  fi
  exit 1
fi

# Check the single changed file:
file="${files[0]}" # There is exactly one file
basefile="$(basename "$file")"

# Reject names that cannot identify one of the numbered exercises before using the name to query the answer key:
if [[ ! "$file" =~ ^data/birth-dates/[0-9]{2}\.txt$ ]]; then
  echo "::error file=${file}::Invalid birthdate filename; expected data/birth-dates/NN.txt"
  echo "**${basefile}** – ❌ Invalid filename; expected \`NN.txt\`." >> "$SUMMARY_FILE"
  exit 1
fi

# Decode the answer key separately so a missing or damaged key produces a clear configuration error instead of looking like a wrong student submission:
answer_key=".github/workflows/birthdates"
if [[ ! -r "$answer_key" ]]; then
  echo "::error::Answer key ${answer_key} is missing or unreadable"
  echo "❌ Validator configuration error: the answer key is unavailable." >> "$SUMMARY_FILE"
  exit 1
fi

if ! decoded_answers="$(base64 --decode "$answer_key" 2>/dev/null)"; then
  echo "::error::Could not decode answer key ${answer_key}"
  echo "❌ Validator configuration error: the answer key is invalid." >> "$SUMMARY_FILE"
  exit 1
fi

# Locate the expected submission by matching the filename field exactly. Comment lines in the decoded key begin with optional whitespace followed by `#`.
# Everything after the first `|` is the expected file content:
expectedLine="$(
  awk -F'|' -v wanted="$basefile" '
    /^[[:space:]]*#/ { next }
    $1 == wanted {
      value = substr($0, index($0, "|") + 1)
      sub(/^[[:space:]]*/, "", value)
      sub(/[[:space:]]*$/, "", value)
      print value
      exit
    }
  ' <<< "$decoded_answers"
)"

# A correctly shaped filename can still be outside the exercises represented in the key (for example, 99.txt), so report that case explicitly:
if [[ -z "$expectedLine" ]]; then
  echo "::error file=${file}::No result match found for ${basefile}!"
  echo "**${basefile}** – ❌ No answer-key entry found." >> "$SUMMARY_FILE"
  exit 1
fi

# Read the submitted version directly from the PR commit without checking out the untrusted PR tree. A failed lookup normally means the file was deleted:
if ! received_content="$(git show "${HEAD}:${file}" 2>/dev/null)"; then
  echo "::error file=${file}::Could not read ${basefile} from the PR head; the file may have been deleted"
  echo "**${basefile}** – ❌ Could not read the file from the PR head." >> "$SUMMARY_FILE"
  exit 1
fi
receivedLine="$(
  printf '%s\n' "$received_content" \
  | tr -d '\r' \
  | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'
)"

# Compare the normalized submitted line with the normalized answer-key value and put the useful details in the GitHub Actions summary:
if [[ "$receivedLine" == "$expectedLine" ]]; then
  echo "**${basefile}: ✅ correct**" >> "$SUMMARY_FILE"
  echo -e "Expected: \`$expectedLine\` \n" >> "$SUMMARY_FILE"
  echo -e "Received: \`$receivedLine\` \n" >> "$SUMMARY_FILE"
else
  echo "::error file=${file}::Content does not match expected line"
  echo -e "**${basefile}: ❌ mismatch** \n" >> "$SUMMARY_FILE"
  echo -e "Expected: \`$expectedLine\` \n" >> "$SUMMARY_FILE"
  echo -e "Received: \`$receivedLine\` \n" >> "$SUMMARY_FILE"
  exit 1
fi
