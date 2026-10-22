#!/bin/bash
set -euo pipefail

TEMPLATE="${1:-.env.template}"
TARGET="${2:-.env}"
LENGTH=25

if [[ ! -f "$TEMPLATE" ]]; then
  echo "Template not found: $TEMPLATE" >&2
  exit 1
fi

if [[ -e "$TARGET" ]]; then
  echo "Target already exists: $TARGET (refusing to overwrite)" >&2
  exit 1
fi

random_secret() {
  # head closing the pipe early makes tr fail under pipefail, so disable it here
  set +o pipefail
  LC_ALL=C tr -dc 'A-Za-z0-9' < /dev/urandom | head -c "$LENGTH"
  set -o pipefail
}

umask 077
: > "$TARGET"

while IFS= read -r line || [[ -n "$line" ]]; do
  if [[ "$line" =~ ^([A-Za-z_][A-Za-z0-9_]*)= ]]; then
    key="${BASH_REMATCH[1]}"
    if [[ "$key" == *PASSWORD* || "$key" == *SECRET* ]]; then
      line="${key}=$(random_secret)"
    fi
  fi
  printf '%s\n' "$line" >> "$TARGET"
done < "$TEMPLATE"

echo "Wrote $TARGET with generated ${LENGTH}-character secrets."
