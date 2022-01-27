echo "1)Merging the contents of two files into another."
echo "2)Searching a pattern from a file."
echo "Enter your choice: "
read choice
case $choice in
	1) echo "Enter 1st file name: "
	read f1
	echo "Enter 2nd file name:"
	read f2
	cat $f1 $f2 > file3
	cat file3;;
	2) echo "Enter file name: "
	read f1
	echo "Enter the searching word: "
	read s1
	grep $s1* $f1;;
	*) echo "Invalid option";;
esac
