echo "Enter first number:"
read a
echo "Enter second number:"
read b
c=`echo $a + $b|bc`
echo "$a + $b = $c"
c=`echo $a - $b|bc`
echo "$a - $b = $c"
c=`echo $a \* $b|bc`
echo "$a * $b = $c"
c=`echo $a / $b|bc`
echo "$a / $b = $c"

