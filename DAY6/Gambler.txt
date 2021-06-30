#!/bin/bash -x
#gambler program
start=100
win=0
lose=0
numberOfBets=0
while [[ $start -eq 0 ]] || [[ $start -lt 200 ]]
do
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
((win++))
((start++))
((numberOfBets++))
else
((lose++))
((start-1))
((numberOfBets++))
fi
done
echo "You won $win times :)"
echo "You have $start Rs left."
echo "Number of Bets Made $numberOfBets"
