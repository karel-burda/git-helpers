#!/usr/bin/env sh

set -xe

source $(dirname $0)/common.incl


function test
{
    readonly PATH_TO_GITATTRIBUTES="$(dirname $0)/../.gitattributes"

    assert_whether_file_exists $PATH_TO_GITATTRIBUTES 1
    assert_whether_file_empty $PATH_TO_GITATTRIBUTES 2

    exit  0
}

test

set +xe
