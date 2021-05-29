#!/bin/bash

mkdir -p build
./node_modules/html-minifier/cli.js --collapse-inline-tag-whitespace --collapse-whitespace --decode-entities \
    --no-html5 --minify-css --minify-js --use-short-doctype --file-ext html \
    --input-dir './src' --output-dir './build'
cp ./src/*.jpg ./build/.
cp ./src/robots.txt ./build/.
cp ./src/favicon.ico ./build/.
