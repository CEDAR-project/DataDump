#!/bin/bash
mkdir -p /tmp/rdf
files=`ls rdf/*.ttl.bz2`
for file in $files #'rdf/BRT_1899_10_T_marked.ttl.bz2'
do
	base_name=$( echo $file | sed 's/rdf\///' | sed 's/\.ttl\.bz2//' )
	echo "loading $base_name"
	cp $file /tmp/$file
	bunzip2 /tmp/$file
	raw_file=$( echo $file | sed 's/\.bz2//' )
	#curl -X DELETE "http://localhost:8080/data/$base_name.rdf"
	curl -T /tmp/$raw_file -H 'Content-Type: application/x-turtle' "http://localhost:8080/data/$base_name.rdf"
	#4s-import cedar_data --model http:/example.com/graph/$base_name /tmp/$raw_file
	rm /tmp/$raw_file
done
