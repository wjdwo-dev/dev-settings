#!/bin/bash
REPO=$1

cat labels/labels.json | jq -c '.[]' | while read label; do
  name=$(echo $label | jq -r '.name')
  color=$(echo $label | jq -r '.color')
  desc=$(echo $label | jq -r '.description')
  gh label create "$name" --color "$color" --description "$desc" --repo $REPO --force
done