echo "Enter number of element:"
read n
i=0
echo "Enter the numbers: "
while [ $i -lt $n  ]
do
	read a[$i]
	let i=i+1 
done
nn=`expr $n - 1`
i=0
while [ $i -lt $nn  ]
do
	j=`expr $i + 1`
	while [ $j -lt $n  ]
	do
		if [ ${a[$j]} -lt ${a[$i]}  ];
		then
			temp=${a[$j]}
			a[$j]=${a[$i]}
			a[$i]=$temp
		fi
		let j=j+1
	done
	let i=i+1
done
echo "Ascending Order: ${a[@]}"
