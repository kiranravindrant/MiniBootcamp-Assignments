#! /bin/bash -x 
read -p "Enter Number : " n
for((i=2; i<=$n/2; i++))
do
  check=$(( n%i ))
  if [ $check -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 
  fi
done
if [ $n -ne  1 ]
then echo "$n is a prime number."
else
echo "One is neither prime nor composite"
fi
