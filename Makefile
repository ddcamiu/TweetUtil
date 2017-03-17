${HOME}/bin/bbox :
	@ln -s ${PWD}/bbox ${HOME}/bin/bbox

${HOME}/bin/filterByBbox.awk :
	@ln -s ${PWD}/filterByBbox.awk ${HOME}/bin/filterByBbox.awk
	@chmod +x ${PWD}/filterByBbox.awk

${HOME}/bin/filter :
	@ln -s ${PWD}/filter.sh ${HOME}/bin/filter
	@chmod +x ${PWD}/filter.sh

${HOME}/bin/bbox.sh :
	@cp ${PWD}/bbox.sh ${HOME}/bin/bbox.sh

all: ${HOME}/bin/bbox ${HOME}/bin/filterByBbox.awk ${HOME}/bin/filter ${HOME}/bin/bbox.sh

install : all
	@printf '[[ -f ${HOME}/bin/bbox.sh ]] && source ${HOME}/bin/bbox.sh' >>~/.bashrc

clean : all
	@rm ${HOME}/bin/{bbox,filterByBbox.awk,filter,bbox.sh}
