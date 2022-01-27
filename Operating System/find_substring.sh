echo "Enter the string:"
read s
echo "Enter the sub string:"
read s1
s_length=${#s}
s1_length=${#s1}
i=0
while [ $i -lt $s_length  ]
do
	flag=0
	if [ ${s:$i:1} == ${s1:0:1}  ];
	then
		k=$i
		let i=i+1
		j=1
		while [ $i -lt $s_length  ]
		do
			if [ $j -lt $s1_length  ] && [ ${s:$i:1} = ${s1:$j:1}  ];
			then
				let i=i+1
				let j=j+1
			elif [ $j -eq $s1_length  ];
			then
				flag=2
				break
			else
				flag=1
				break
			fi
		done
		if [ $j -eq $s1_length ] && [ $flag -eq 2  ];
		then
			echo "Sub string start at index: $k"
			break
		else
			i=`expr $k + 1`
		fi
	else
		let i=i+1
	fi
done
if [ $flag -eq 0  ];
then
	echo "Above sub string does not exist."
fi
