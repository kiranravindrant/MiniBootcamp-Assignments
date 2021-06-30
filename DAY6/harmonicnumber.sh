#! /bin/bash -x
read -p "Enter  value of n: "  n
for ((i=1; i <= $n; i++))
do 
# Formula : hn=h*(n-1) + (1/n)
eqpart2=$(echo $1 $i |awk '{print 1/$i }')
hn=$(awk "BEGIN {print $hn+$eqpart2;}")
done
echo $hn
