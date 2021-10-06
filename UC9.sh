 `#!/bin/bash -x

function readNum(){
read -p "Enter value of a " a
read -p "Enter value of b " b
read -p "Enter value of c " c
}
readNum

function calculate1()
{
ans1=0
ans1=$(($a+$b*$c))
#echo $a"+"$b"*"$c"="$ans1
}
calculate1

function calculate2()
{
ans2=0
ans2=$(($a*$b+$c))
#echo $a"*"$b"+"$c"="$ans2
}
calculate2

function calculate3()
{
ans3=0
ans3=$(($c+$a/$b))
#echo $c"+"$a"/"$b"="$ans3
}
calculate3

function calculate4()
{
ans4=0
ans4=$(($a%$b+$c))
#echo $a"%"$b"+"$c"="$ans4
}
calculate4

declare -A toShow
function dictionary(){
toShow[1]=$ans1
toShow[2]=$ans2
toShow[3]=$ans3
toShow[4]=$ans4
echo $a"+"$b"*"$c"="${toShow[1]}
echo $a"*"$b"+"$c"="${toShow[2]}
echo $c"+"$a"/"$b"="${toShow[3]}
echo $a"%"$b"+"$c"="${toShow[4]}
}
dictionary

declare -a arr
function dictionaryToArr()
{
for((i=1;i<5;i++))
do
arr[$i]=${toShow[$i]}
done
echo "array of result is "${arr[*]}
}
dictionaryToArr


function resultInAscending(){
for((i=1;i<5;i++))
do
 for((j=$i;j<5;j++))
 do
  if [ ${arr[$i]} -gt ${arr[$j]} ];
  then
   temp=${arr[$i]}
   arr[$i]=${arr[$j]}
   arr[$j]=$temp
  fi
 done
done

echo "Result in ascending order "
for(( k=1;k<5;k++ ))
do
 echo ${arr[$k]}
done
}
resultInAscending