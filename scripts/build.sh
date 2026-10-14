#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")/.."

BASE="${1:-/slidev/}"
BASE="${BASE%/}/"

rm -rf dist
mkdir -p dist

for file in *.md; do
  [[ "$file" == "README.md" ]] && continue

  name="${file%.md}"

  echo "Building: $file"

  pnpm exec slidev build "$file" \
    --base="${BASE}${name}/" \
    --out="dist/$name"
done
