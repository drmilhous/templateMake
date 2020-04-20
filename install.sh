#!/bin/bash
if [ ! -f /usr/local/bin/templateMake ]; then
	mkdir /usr/local/bin/templateMake
	echo "created directory"
fi
cp -R /home/millermj/templateMake/* /usr/local/bin/templateMake/
mv /usr/local/bin/templateMake/genMake.sh /usr/local/bin
mv /usr/local/bin/templateMake/genMake64.sh /usr/local/bin
