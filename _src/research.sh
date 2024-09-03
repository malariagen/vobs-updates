#!/bin/bash

set -xeou pipefail

date=$1
date_split=(${date//-/ })
year=${date_split[0]}
authors=$2
slug=$3
url=$4
journal=$5
title=$6
template=$7

dest=_posts/${date}-${slug}-${template}.md
cp -v _src/${template}.md ${dest}
sed -i "s|YEAR|${year}|g" ${dest}
sed -i "s|AUTHORS|${authors}|g" ${dest}
sed -i "s|URL|${url}|g" ${dest}
sed -i "s|JOURNAL|${journal}|g" ${dest}
sed -i "s|TITLE|${title}|g" ${dest}
