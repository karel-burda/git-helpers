#!/usr/bin/env bash

set -e

source "$(dirname "$0")/include/common.incl"

function test
{
    echo "Running $0"

    local -r PATH_TO_GITATTRIBUTES="$(dirname "$0")/../../.gitattributes"

    assert_whether_file_exists "$PATH_TO_GITATTRIBUTES" 1
    assert_whether_file_empty "$PATH_TO_GITATTRIBUTES" 2

    exit  0
}

test

set +e
