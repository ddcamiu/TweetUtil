${HOME}/bin:
	@mkdir ${HOME}/bin

${HOME}/bin/bbox : ${HOME}/bin
	@ln -s ${PWD}/bbox $@

${HOME}/bin/filterByBbox.awk :
	@chmod +x ${PWD}/genawk.sh
	@./genawk.sh
	@cp ${PWD}/filterByBbox.awk $@
	@chmod +x $@

${HOME}/bin/filter :
	@ln -s ${PWD}/filter.sh $@
	@chmod +x ${PWD}/filter.sh

${HOME}/bin/bbox.sh :
	@cp ${PWD}/bbox.sh $@
	@printf '[[ -f ${HOME}/bin/bbox.sh ]] && source ${HOME}/bin/bbox.sh #TWEET_UTIL_MARK' >>~/.bashrc

install : ${HOME}/bin/bbox ${HOME}/bin/filterByBbox.awk ${HOME}/bin/filter ${HOME}/bin/bbox.sh

clean :
	@rm ${HOME}/bin/bbox ${HOME}/bin/filterByBbox.awk ${HOME}/bin/filter ${HOME}/bin/bbox.sh
	@sed -i '/TWEET_UTIL_MARK/d' ~/.bashrc
