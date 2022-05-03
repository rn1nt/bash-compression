#! /bin/bash

# For ziP
mkdir zip
for file in $(find . -name 'daily.log.2022-*-*')
do 
	base=$(basename "$file")
	zip -v "${base##*.}.zip" "$file"
	mv "${base##*.}.zip" zip
done


# For tar 
mkdir tar
for file in $(find . -name 'daily.log.2022-*-*')
do 
	base=$(basename "$file")
	tar cvf "${base##*.}.tar" "$file"
	mv "${base##*.}.tar" tar
done 

# For tar.gz
mkdir tar.gz
for file in $(find . -name 'daily.log.2022-*-*')
do
	base=$(basename "$file")
	tar cvzf "${base##*.}.tar.gz" "$file"
	mv "${base##*.}.tar.gz" tar.gz
done


# For bzip2 
mkdir bzip2 
for file in $(find . -name 'daily.log.2022-*-*')
do
	bzip2 -kv "${file}"
	mv "${file}.bz2" "${file##*.}.bz2"
	mv "${file##*.}.bz2" bzip2
done

# For lz4
mkdir lz4
for file in $(find . -name 'daily.log.2022-*-*')
do 
	lz4 -v "${file}"
	mv "${file}.lz4" "${file##*.}.lz4"
	mv "${file##*.}.lz4" lz4
done






