#!/bin/bash

target=List.txt

set $(find ./ -name package.xml)

#truncate
echo > $target

while [ "$1" != "" ]; do
	sub=${1%/package*}
	echo ${sub##*/}: >> $target
	cat $1 | grep "build_depend" >> $target
	cat $1 | grep "run_depend" >> $target
	echo >> $target
	shift
done

exit 0
