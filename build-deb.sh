#!/bin/bash

install='debian/install'
echo -n "Creating $install: "
(find ./etc -type f; find ./usr -type f) |\
    grep -v \.git | grep -v \.travis > $install
echo "done."

cp -f LICENSE debian/copyright

debuild -us -uc

name=`cat debian/files |grep \.deb | sed 's/ .*$//'`

echo "moving package file $name to current directory"
mv "../$name" .

