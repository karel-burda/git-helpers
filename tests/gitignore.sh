#!/usr/bin/env bash

set -xe

source $(dirname $0)/common.incl

function assert_git_status_output
{
    readonly EXIT_CODE_ON_ERROR=$1
    readonly IGNORE_LIST="git-ignore-output.txt"
    readonly IGNORE_LIST_REFERENCE="$(dirname $0)/list-of-files-that-should-be-ignored.txt"

    mkdir -p build/a/b/c CMakeFiles
    touch build/foo.txt CMakeFiles/foo.cmake
    touch .DS_Store foo.d foo.doxygen.d foo.obj foo.foo.obj

    git ls-files -o -i --exclude-standard > $IGNORE_LIST
    sort -o $IGNORE_LIST $IGNORE_LIST
    sort -o $IGNORE_LIST_REFERENCE $IGNORE_LIST_REFERENCE

    cat $IGNORE_LIST
    cat $IGNORE_LIST_REFERENCE

    diff $IGNORE_LIST $IGNORE_LIST_REFERENCE || (>&2 echo "diffent output of ignored files than should be according to the template" && exit $EXIT_CODE_ON_ERROR)
}

function test
{
    readonly PATH_TO_GITIGNORE="$(dirname $0)/../.gitignore"

    assert_whether_file_exists $PATH_TO_GITIGNORE 1
    assert_whether_file_empty $PATH_TO_GITIGNORE 2
    assert_git_status_output 3

    exit  0
}

test

set +xe
