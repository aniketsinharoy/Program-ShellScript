echo "1. Display the contents of whole file."
echo "2. Display the information of a student with specific Roll Number supplied by the User."
echo "3. Delete the entry of a student from the file with a specific Roll Number supplied by User."
echo "4. Add a new entry in the file."
echo "5. Update an entry of a student with a specific Roll Number supplied by the User."
echo "Enter your choice:"
read choice
case $choice in
1)cat students;;
2)echo "Enter roll number of the student whose information will be shown: "
  read n
  grep -w $n students;;
3)echo "Enter roll number of the student whose information is to be deleted:"
  read n
  grep -v -w $n students > tmpfile
  mv tmpfile students
  echo "Roll No : $n deleted from the file:"
  cat students;;
4)echo "Enter new Roll No:"
  read n
  echo "Enter Name:"
  read a
  echo "Enter City:"
  read c
  echo "$n | $a | $c" >> students
  sort -n students > tmpfile && mv tmpfile students
  echo "Roll No : $n information added"
  cat students;;
5)echo "Enter roll number of the student whose information is to be modify:"
  read n
  echo "Enter Student Name:"
  read a
  echo "Enter new City:"
  read c
  k=`cut -d "|" -f 1 students | grep -n -w $n | cut -d ":" -f 1`
  head -$((k-1)) students > tempfile
  echo "$n  |  $a  |  $c  " >> tempfile
  tail +$((k+1)) students >> tempfile
  mv tempfile students
  echo "Roll No : $n data modified:"
  cat students;;
*)echo "Invalid option";;
esac

