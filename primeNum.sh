#The number inputed is prime or not

echo "Enter the number"
read num
if [[ $num == 0 || $num == 1 ]]
then
	echo $num is not a valid input
fi
ans=0
for ((i=2; i<$num; i++))
do
	for ((j=$i; j<$num; j++))
	do
		if [ $((num%j)) == 0 ]
		then
			ans=1
		fi
	done
done
if [ $ans == 1 ]
then
	echo "$num is a not Prime Number"
else
	echo "$num is a Prime Number"
fi