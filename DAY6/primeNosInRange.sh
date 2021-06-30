#! /bin/bash -x
read -p "Enter  the range m_n" m n
echo "The prime Numbers in the range are ":
while [ $m -lt $n ]
do
i=2
isprime=1
	while [ $i -lt $m ]
	do
	if [ $(($m%i)) -eq '0' ]
	then
	isprime=0
	break
	else 
	i=$(($i+1))
	fi
	done

if  [ $isprime -eq '1' ] && [ $m -ne '1' ]
then
echo $m
fi
m=$(($m+1))
done
