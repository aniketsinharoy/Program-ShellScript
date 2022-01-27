echo "Enter first number:"
read n1
echo "Enter second number:"
read n2
gcd=1
i=1
if [ $n1 -gt $n2  ];
then
	while [ $i -le $n2  ]
	do
		a=`expr $n1 % $i`
		b=`expr $n2 % $i`
		c=`expr $b + $a`
		if [ $c -eq 0  ];
		then
			gcd=$i
		fi
		i=`expr $i + 1`
	done
else 
	while [ $i -le $n1  ]
	do
		a=`expr $n1 % $i`
		b=`expr $n2 % $i`
		c=`expr $b + $a`
		if [ $c -eq 0  ];
		then
			gcd=$i
		fi
		i=`expr $i + 1`
	done
fi
echo "GCD of $n1 and $n2 is: $gcd"
