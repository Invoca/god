#!/bin/bash
#
# this script will build a tarball suitable for
# installation in a packer image without real
# git credentials or reliable access to private
# git repos
#
# assumes that the god repo is downloaded with a
# built package from virtualbox
#
filename="god-`date +%s`.tar.gz"

bundle package
pushd ..
tar czvf $filename god
popd

echo "created ../$filename"
echo `shasum -a256 ../$filename`
