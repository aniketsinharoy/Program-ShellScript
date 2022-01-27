echo "1) Number of presently active users"
echo "2) Displaying some desired number of lines from top of a file"
echo "3) Updating the access time of a given file to current time"
echo "Enter your choice: "
read choice
case $choice in
1) who;;
2) echo "Enter file name: "
   read f
   echo "Enter number of line: "
   read l
   head -$l $f;;
3) echo "Enter file name: "
   read f
   touch $f
   ls -l $f;;
*) echo "Invalid option";;
esac
