echo "Enter the file name: "
read a
if [ -f "$a" ];
then
	echo "File already exists."
	ls -l $a
else
	echo "File does not exits...Creating a file name $a"
	touch $a
	ls -l $a
fi
