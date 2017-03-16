#!/bin/bash
if [[ $# == 1 ]]
then
	export ALL_GEO=1 
        twtfile=$1
else
	bbox=$1
	set -o allexport
	source $bbox
	set +o allexport
        twtfile=$2
fi

filterByBbox.awk $twtfile
