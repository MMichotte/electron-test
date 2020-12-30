#!/bin/bash

VERSION=$1

# do some regex to match v.*.*.* ^v([0-9]+).([0-9]+).([0-9]+)

sed -i '' "4s/.*/  \"version\": \"${VERSION}\",/" package.json

git commit -am "${VERSION}"
git tag $VERSION
git push && git push --tags
