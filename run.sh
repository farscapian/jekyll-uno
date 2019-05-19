#!/bin/bash

set -Eeuo pipefail
cd "$(dirname "$0")"

docker pull jekyll/jekyll

export JEKYLL_VERSION=3.8
docker run -it --rm --volume="$PWD:/srv/jekyll" -p "4000:4000" jekyll/jekyll:$JEKYLL_VERSION jekyll serve
