#! /bin/bash -x
counter=0
declare -a  primefactors
read -p " Enter the number :" n
for((i=2;i<=n;i++))
do
while [ $((n%i)) -eq '0' ]
do
primefactors[((counter++))]=$i
n=$((n/$i))
done
done
echo  "${primefactors[*]}"


