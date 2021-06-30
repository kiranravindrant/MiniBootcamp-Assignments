#! /bin/bash -x

echo "THINK A NUMBER B/W 1 TO 100"
a=0
b=100
N=$((b-a))

mid=$((mid+N/2))
while [ $N -ne '1' ]
do
read -p "Is number greater than $mid ?? (y/n) " userinput
if [ $userinput == 'y' ]
then 
	a=$mid
	N=$((b-a))
	mid=$((mid+N/2))
else 
	b=$mid
	N=$((b-a))
	mid=$((mid-N/2))
fi
done
echo "Your number is $b "
