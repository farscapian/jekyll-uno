#!/bin/bash

set -Eeuo pipefail
cd "$(dirname "$0")"

docker pull jekyll/jekyll

export JEKYLL_VERSION=3.8
docker run -it --rm --volume="$PWD:/srv/jekyll" jekyll/builder:$JEKYLL_VERSION jekyll build
