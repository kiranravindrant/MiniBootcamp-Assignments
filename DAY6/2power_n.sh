#! /bin/bash -x

read -p "Enter  value of n: "  n
for ((i=0; i <= $n; i++))
do 
echo "2 ^ $i " equals :$((2 ** $i))
done

