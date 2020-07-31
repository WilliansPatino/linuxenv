#!/bin/bash
#  by W.Patino   30.07.2020 22:42

#  Enable customized linux environment from bash
#


{
	echo '# Custom enviroment' >>  ~/.bashrc
	echo 'link_env() { '
	echo '   if [ ! -d ~/_myLinuxENV ]; then'
	echo '	    ln -s ~/linuxenv/_myLinuxENV ~/'
	echo '	    echo -e "$BULLET Environment linked!" '
	echo '   fi'
	echo '}'
	echo ' '
	echo 'if [ -f ~/linuxenv/_myLinuxENV/config/workshop ]; then'
	echo '	link_env'
	echo '	source  ~/linuxenv/_myLinuxENV/config/workshop'
	echo '	echo -e "$OK Personal Workshop/environment enabled" '
	echo 'else'
	echo '	echo -e "$WARNING - Workshop is disabled, 'linuxenv' not found!" '
	echo 'fi '

} >> ~/.bashrc
