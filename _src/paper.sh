#!/bin/bash

set -xeou pipefail

date=$1
year=$2
authors=$3
slug=$4
url=$5
journal=$6
title=$7

dest=_posts/${date}-${slug}.md
cp -v _src/paper.md ${dest}
sed -i "s/YEAR/${year}/g" ${dest}
sed -i "s/AUTHORS/${authors}/g" ${dest}
sed -i "s/URL/${url}/g" ${dest}
sed -i "s/JOURNAL/${journal}/g" ${dest}
sed -i "s/TITLE/${title}/g" ${dest}
