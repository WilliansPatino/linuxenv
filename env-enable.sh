#!/bin/bash
#  by W.Patino   30.07.2020 22:42

#  Enable customized linux environment from bash
#

. ~/linuxenv/base/styles/setting

update_bash() {
	file=$1
{
	echo '# Custom console environment - https://github.com/wajojo ' >>  ~/$file
	echo ' '
	echo 'link_env() { '
	echo '   if [ ! -d ~/base ]; then'
	echo '	    ln -s ~/linuxenv/base ~/'
	echo '   fi'
	echo '   source  ~/linuxenv/base/config/workshop'
	echo '   echo -e "$OK Custom console environment" '
	echo ' '
	echo '}'
	echo ' '
	echo 'if [ -f ~/linuxenv/base/config/workshop ]; then'
	echo '	link_env'
	echo 'else'
	echo '	echo -e "$WARNING Custom environment not enabled!" '
	echo 'fi '

} >> ~/$file
echo -e "$OK $file updated!"

}

update_bash '.bashrc'
update_bash '.bash_profile'
