#!/usr/bin/env bash
# Build all focused guides, or pass one basename (without a directory).
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p .build
if (( $# > 1 )); then
    printf 'Usage: bash build.sh [guide_basename]\n' >&2
    exit 2
fi
if (( $# == 1 )); then
    sources=("${1%.tex}.tex")
else
    shopt -s nullglob
    sources=([0-9][0-9]_*.tex)
fi
for source in "${sources[@]}"; do
    if [[ "$source" == */* || ! -f "$source" ]]; then
        printf 'Expected a guide basename in FocusedContent: %s\n' "$source" >&2
        exit 2
    fi
    name=${source%.tex}
    for pass in 1 2; do
        if ! pdflatex -interaction=nonstopmode -halt-on-error -file-line-error \
            -output-directory=.build "$source" > ".build/$name.build-output.txt" 2>&1; then
            cat ".build/$name.build-output.txt" >&2
            exit 1
        fi
    done
    cp ".build/$name.pdf" "$name.pdf"
    printf 'Built %s.pdf\n' "$name"
done
