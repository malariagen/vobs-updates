#!/bin/bash

set -xeou pipefail

date=$1  # date the cohorts analysis was released in YYYY-MM-DD format
resource=$2  # name of the resource, either "Ag3" or "Af1"
version=$3  # version of the cohorts analysis
dataset=$4  # latest dataset included in the cohorts analysis, e.g., "Ag3.10"
resvar=${resource,,}  # lower case
slug="${resvar}-cohorts"

dest="_posts/${date}-${slug}-v${version}.md"
cp -v _src/cohorts.md ${dest}
sed -i "s|RESOURCE|${resource}|g" ${dest}
sed -i "s|VERSION|${version}|g" ${dest}
sed -i "s|DATASET|${dataset}|g" ${dest}
sed -i "s|RESVAR|${resvar}|g" ${dest}
