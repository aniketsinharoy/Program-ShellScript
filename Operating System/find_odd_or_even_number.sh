echo "Enter the number:"
read a
c=`expr $a % 2`
if [ $c -eq 1  ];
then 
	echo "$a is an odd nuber."
else
	echo "$a is an even number."
fi
