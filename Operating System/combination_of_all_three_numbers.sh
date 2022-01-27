echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Enter third number:"
read c
for i in $a $b $c
do
	for j in $a $b $c
	do
		for k in $a $b $c
		do
			echo "$i $j $k"
		done
	done
done
