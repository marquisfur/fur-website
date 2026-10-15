#!/bin/bash
DIR="./content/products"
IDS=$(ls "$DIR"/*.md 2>/dev/null | xargs basename -s .md | jq -R . | jq -s .)
echo "$IDS" > "$DIR/index.json"
echo "✅ 已更新 content/products/index.json"
echo $IDS
