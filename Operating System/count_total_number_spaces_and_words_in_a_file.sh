echo "Enter the file name:"
read f
echo "Total numbers of words in $f:"
wc -w $f
echo "Total numbers of characters in $f:"
wc -c $f
echo "Total numbers of spaces in $f:"
grep -o ' ' $f| wc -l 
sc=`echo $s | tr -cd "^\~!@#$&*()[]-_=+/<>,.?{}:;" | wc -c`
echo Number of special characters: $sc

