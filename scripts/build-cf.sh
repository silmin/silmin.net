#!/bin/bash
set -eu

cd "$(dirname "$0")/.."

rm -rf dist
mkdir -p dist
cp pub/html/index.html dist/
cp -r static/css dist/css
cp -r static/image dist/image
