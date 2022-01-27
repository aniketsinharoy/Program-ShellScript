echo "Enter the string: "
read a
length=${#a}
i=0
flag=0
n=`expr $length - 1`
while [ $i -lt $length  ]
do
	if [ ${a:$i:1} = ${a:$n:1}  ];
	then
		let i=i+1
	        let n=n-1
		continue
	else
		flag=1
		break
	fi
done 
if [ $flag -eq 0  ];
then
	echo "The given string is palindrom."
else
	echo "The given string is not palindrom."
fi

