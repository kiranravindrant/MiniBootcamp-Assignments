#!/bin/bash -x
for((i=1;i<=100;i++))
do
       echo $i
if [ $i -eq $(($i%10)) ]
then
        output=$(($i*11))
        array[i]=$output
        echo $output
fi
done

echo "${array[@]}"
