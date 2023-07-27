#!/bin/sh

rm -rf _site && rm -rf .jekyll-cache

git add --all && git commit -m 'update' && git push origin master

bundle install && jekyll build

rm -rf ../luyik754081.github.io/*

cp -R _site/* ../luyik754081.github.io/

cd ../luyik754081.github.io

git add --all && git commit -m 'update' && git push origin master