echo "Enter a number:"
read n
c=$n
sum=0
while [ $c -gt 0  ]
do
	a=`expr $c % 10`
	b=`expr $a \* $a \* $a`
	sum=`expr $b + $sum`
	c=`expr $c / 10`
done
if [ $n -eq $sum  ];
then
	echo "$n is an armstrong number."
else
	echo "$n is not an armstrong number."
fi
