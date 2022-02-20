#!/bin/bash

# exit on command failure
set -e

script_path="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd "$script_path"

## Library ##
# Build library
cd suntime
npm install

cd "$script_path"

## Web ##
cd suntime-web
# Build website
npm install

cd "$script_path"

echo "Install complete."