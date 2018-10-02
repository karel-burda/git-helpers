#!/usr/bin/env bash

set -e

"$(dirname "$0")/gitignore_test.sh"
"$(dirname "$0")/gitattributes_test.sh"

set +e
