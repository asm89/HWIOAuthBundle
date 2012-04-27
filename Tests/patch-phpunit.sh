#!/usr/bin/env bash

# patch path
patch_path=$PWD"/"$(dirname $0)"/phpunit.patch"

# current pear lib path
pear_path=$(pear config-get php_dir)

cd $pear_path
patch -p1 < "$patch"
