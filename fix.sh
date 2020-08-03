if [ ! -f $HOME/bin ]; then
	mkdir $HOME/bin
fi	
cp $HOME/templateMake/genMake.sh $HOME/bin
cp $HOME/templateMake/genMake64.sh $HOME/bin
cp $HOME/templateMake/genC.sh $HOME/bin
echo "PATH=$PATH:$HOME/bin/:$HOME/templateMake/bin" >> $HOME/.bashrc
if [ ! -f $HOME/projects ]; then
	mkdir $HOME/projects
fi
