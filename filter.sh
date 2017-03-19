#!/bin/bash
if [[ $# == 1 ]]
then
	# no bbox file specified, use the bbox in environ.
	# if no bbox in environ or "nobbox" defined, then filter all geo-tagged tweets
        [[ "$no_bbox" ]] || [[ ! $top ]] || [[ ! $bottom ]] || [[ ! $left ]] || [[ ! $right ]] && export ALL_GEO=1  
        twtfile=$1
else
	bbox=$1
	if [[ -f "$bbox" ]]
	then
		# specific bbox file provided
		bboxfile=$bbox
	else
	        if [[ -f "${HOME}/bin/bbox/${bbox}.bbox" ]]
		then 
			# pre-defined bbox files can be called with names
			bboxfile=${HOME}/bin/bbox/${bbox}.bbox
		else
			echo "No such bbox file!"
			exit 1
		fi
	fi

	set -o allexport
	source ${bboxfile}
	set +o allexport
        twtfile=$2
fi

filterByBbox.awk $twtfile
