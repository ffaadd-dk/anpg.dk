#!/bin/sh

wget --post-file=query.xml -O data-tmp.json http://overpass-api.de/api/interpreter
cat data-tmp.json | jq '{elements: .elements, osm3s: {copyright: .osm3s.copyright}}' > data.json
rm data-tmp.json

