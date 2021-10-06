#!/bin/bash -x

function readNum(){
read -p "Enter value of a " a
read -p "Enter value of b " b
read -p "Enter value of c " c
}
readNum


function calculate3()
{
sum=0
sum=$(($c+$a/$b))
echo $c"+"$a"/"$b"="$sum
}
calculate3