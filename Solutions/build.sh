#!/usr/bin/env bash
# Rebuild all notebook explanations, or give one basename without a directory.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p .build
if (( $# > 1 )); then
    printf 'Usage: bash Solutions/build.sh [name_solution]\n' >&2
    exit 2
fi
if (( $# == 1 )); then
    sources=("${1%.tex}.tex")
else
    shopt -s nullglob
    sources=(*_solution.tex)
fi
for source in "${sources[@]}"; do
    if [[ "$source" == */* || ! -f "$source" || "$source" != *_solution.tex ]]; then
        printf 'Expected a solution basename: %s\n' "$source" >&2
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
