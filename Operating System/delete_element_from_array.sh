echo "Enter number of elements:"
read n
echo "Enter the numbers:"
i=0
while [ $i -lt $n  ]
do
	read a[$i]
	let i=i+1
done
echo "Enter element index number to be deleted: "
read s
if [ $s -ge 0 ] && [ $s -lt $n ];
then
	unset -v 'a[$s]'
	echo "Array after deleting the element: "
	echo "${a[@]}"  
else
	echo "Deleting element index number out of range."
fi

