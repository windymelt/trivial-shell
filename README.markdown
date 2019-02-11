# Trivial-Shell

Trivial variables/functions useful for scripting with Roswell.

## Usage

### `*$0*`

An alias for `*LOAD-TRUENAME*`. Intended to be used as like as `$0` in shell script.

### `*$0-dir*`

The directory path which contains `*$0*`. Equivalent for `dirname $0` in bash.

### `*$0-basename*`

The name for running image. Equivalent for `basename $0` in bash.

### `path-from-script-dir`

A function to return relative path which is from `*$0-dir*`. For example, `(path-from-script-dir "templates/")` in `/tmp/test.ros` returns `#P"/tmp/templates/"`.

## Installation

- Quicklisp preparing
- Use qlot
  - `github trivial-shell windymelt/trivial-shell`

## Author

* Windymelt

## Copyright

Copyright (c) 2019 Windymelt
