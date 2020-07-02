if [ ! -d $HOME/projects/ ]; then
	mkdir $HOME/projects
fi
TEMPLATE=$HOME/templateMake
if [ ! -d $TEMPLATE ] ; then
	TEMPLATE=/usr/local/bin/templateMake
fi
DIR=$HOME/projects/$1
if [ ! -d "$DIR" ]; then
	mkdir $DIR
	echo -e "Created $DIR !\n"
	cp $TEMPLATE/c/main.c $DIR/$1.c
	cat $TEMPLATE/c/Makefile | sed "s/XX/$1/g" > $DIR/Makefile
else
	echo -e "Directory Exists! Not Created.\n"
fi
