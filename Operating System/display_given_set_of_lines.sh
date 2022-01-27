echo "Enter file name: "
read f
echo "Enter starting line number: "
read s
echo "Enter number of lines to be displayed: "
read e
k=`expr $s + $e - 1`
head -$k $f | tail +$s
