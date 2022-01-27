echo "Enter the number of terms to be displayed:"
read n
a1=0
a2=1
i=2
if [ $n -eq 1  ]
then
	echo "$a1"
elif [ $n -eq 2  ]
then
	echo "$a1"
	echo "$a2"
else
	echo "a1"
	echo "a2"
	while [ $i -lt $n  ]
		do
			a3=`expr $a1 + $a2`
			a1=`expr $a2 + 0`
			a2=`expr $a3 + 0`
			echo "$a3"
			i=`expr $i + 1`
		done
fi			
	  
