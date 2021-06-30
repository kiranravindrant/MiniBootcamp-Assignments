#! /bin/bash -x
ishead=1
istail=0
h=0
t=0
while [ $h -le '11' ] && [ $t -le '11' ]
do
coinflip=$((RANDOM%2))
if [ $coinflip -eq  $ishead ]
then h=$((h+1))
else
t=$((t+1))
fi

case $coinflip in
		$ishead) echo  HEAD ;; 

		$istail) echo  TAIL;; 
esac
done
