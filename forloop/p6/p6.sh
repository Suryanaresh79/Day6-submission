read -p "enter the number" num
p=0
while [ $(($num % 2)) -eq 0 ]
do
  p=1
  num=`expr $num / 2`
done
if [ $p -eq 1 ]
  then
    echo 2
fi
for ((i=3;i*i<=$num;i+=2))
do
  q=0
  while [ $(($num % $i)) -eq 0 ]
  do
    q=1
    num=`expr $num / i`
  done
  if [ $q -eq 1]
    then
      echo $i
  fi

done
if [ $num -gt 2 ]
  then
    echo $num
fi
