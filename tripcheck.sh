#!/bin/bash
echo "please enter a file name" 
read  filename 
if [ $filename = "tripwire.txt" ];
then
echo "error file exist "
exit
else
tripwire -m c > $HOME/$filename
diff -y $HOME/$filename $HOME/tripwire.txt > $HOME/$filename.diff
exit 
fi
