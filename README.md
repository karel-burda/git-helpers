![Version](https://img.shields.io/badge/version-1.0.4-blue.svg)
[![License](https://img.shields.io/badge/license-MIT_License-blue.svg?style=flat)](LICENSE)
[![Build Status](https://travis-ci.org/karel-burda/git-helpers.svg?branch=master)](https://travis-ci.org/karel-burda/git-helpers)

## Introduction
Common git-related files intended for my projects.

## Continuous Integration
Automatic tests are being run as part of the CI, see [tests](tests/integration) that are used in the [.travis.yml](.travis.yml).

Static analysis is performed on the testing bash scripts using [ShellCheck](https://github.com/koalaman/shellcheck) on Linux.

The project is using these jobs:
  * `tests -- linux, shellcheck`
  * `tests -- osx`
  * `tests -- windows`
