echo "Enter how many numbers do you want to enter:"
read n
echo "Enter only positive numbers."
min=100000000
max=0
i=0
while [ $i -lt $n  ]
do
	echo "Enter the number:"
	read a
	if [ $min -gt $a  ];
	then
		min=$a
	fi
	if [ $max -lt $a  ];
	then
		max=$a
	fi
	i=`expr $i + 1`
done
echo "Max number: $max"
echo "Min number: $min"

