#!/bin/sh
cp ./src/index.html ./public/
npx sass ./src/sass/style.scss ./public/style.css --style=compressed
npx esbuild ./src/js/main.js --bundle --outfile=./public/main.js  --minify
cp ./src/favicons/*.* ./public/
cp -R ./src/images ./public/
cp -R ./src/fonts ./public/