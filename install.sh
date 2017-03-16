#!/bin/bash
ln -s ${PWD}/bbox ~/bin/bbox

ln -s ${PWD}/filter.sh ~/bin/filter
chmod +x ${PWD}/filter.sh

ln -s ${PWD}/filterByBbox.awk ~/bin/filter/ByBbox.awk
chmod +x ${PWD}/filterByBbox.awk

echo 'bbox (){
cat ${HOME}/bin/bbox/$1.bbox
}' >>${HOME}/.bashrc
