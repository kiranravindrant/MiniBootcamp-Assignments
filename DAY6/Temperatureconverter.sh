#! /bin/bash -x
read -p "Choose a conversion :  1)DegF  to DegC 2)DegC to DegF " n

function degc() {
	read -p "Enter the value in F (32F-212F)" a
	local Formula=$( awk "BEGIN { print (($a-32))*5/9;}")
	echo $Formula "C"
}

function degf() {
	read -p "Enter the value in C (0C-100C)" a
	local Formula=$( awk "BEGIN { print (($a*9/5))+32;}")
	echo $Formula  "F"
}
case $n  in
	1) echo "$( degc )" ;;
	2) echo "$( degf )" ;;
	*) echo wrong choice ;;
esac
echo $result
