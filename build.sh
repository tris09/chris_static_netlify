#!/bin/sh
cp ./src/index.html ./public/
npx sass ./src/sass/style.scss ./public/style.css --style=compressed --no-source-map
npx esbuild ./src/js/main.js --bundle --outfile=./public/main.js --minify
cp ./src/favicons/*.* ./public/ 2>/dev/null || true
cp -R ./src/images ./public/
cp -R ./src/fonts ./public/
