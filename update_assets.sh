#!/bin/bash
TAG=$1

version=`echo $TAG | tr -d 'v'`
manifest_url="https://github.com/danielskowronski/bundles-dsenv/releases/download/${TAG}/assets.csv"
curl -sL $manifest_url -o assets.csv

for asset in `cat assets.csv`; do
	file=`echo $asset | awk -F, '{print $1}'`
	url=`echo $asset | awk -F, '{print $2}'`
	sha256=`echo $asset | awk -F, '{print $3}'`
	formula="`echo $file | awk -F\. '{print $1}'`.rb"

	path=`find . -name $formula`

	echo "updating ${path}: version ${version}, sha256: ${sha256}, url: ${url}"

	gsed -i "s|  url .*|  url \"$url\"|g" $path
	gsed -i "s|  sha256 .*|  sha256 \"$sha256\"|g" $path
	gsed -i "s|  version .*|  version \"$version\"|g" $path
done
