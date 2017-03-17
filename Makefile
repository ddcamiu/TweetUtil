bbox:
	ln -s ${PWD}/bbox ${HOME}/bin/bbox

filterByBbox.awk:
	ln -s ${PWD}/filterByBbox.awk ${HOME}/bin/filterByBbox.awk
	chmod +x ${PWD}/filterByBbox.awk

filter.sh:
	ln -s ${PWD}/filter.sh ${HOME}/bin/filter
	chmod +x ${PWD}/filter.sh

install: bbox, filterByBbox.awk, filter.sh
	echo 'bbox (){cat ${HOME}/bin/bbox/$1.bbox}' >>${HOME}/.bashrc

clean:
	rm ${HOME}/bin/{bbox,filterByBbox.awk,filter}
	echo 'unset bbox' >>${HOME}/.bashrc
