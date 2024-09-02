#!/bin/bash

set -xeou pipefail

level=$1
date=$2
version=$3

cp -v _src/YYYY-MM-DD-malariagen-data-vX.Y.X-${level}.md _posts/${date}-malariagen-data-v${version}.md
sed -i "s/X.Y.Z/${version}/g" _posts/${date}-malariagen-data-v${version}.md
