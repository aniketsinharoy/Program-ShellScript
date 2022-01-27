echo "Which number factorial do you want: "
read n
i=0
s=1
while [ $i -lt $n  ]
	do
		i=`expr $i + 1`
		s=`expr $s \* $i`
	done
echo "$n ! = $s"
