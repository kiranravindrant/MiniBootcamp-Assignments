#!  /bin/bash -x
read -p "Enter a number to calculate factorial : " n
Fact=1
for ((i=2 ; i<=$n ; i++ ))
do
Fact=$(($Fact*$i))
done
echo  The factorial of  $n  is : $Fact

