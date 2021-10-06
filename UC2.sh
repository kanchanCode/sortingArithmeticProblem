#!/bin/bash -x

function readNum(){
read -p "Enter value of a " a
read -p "Enter value of b " b
read -p "Enter value of c " c
}
readNum


function calculate1()
{
sum=0
sum=$(($a+$b*$c))
echo $a"+"$b"*"$c"="$sum
}
calculate1