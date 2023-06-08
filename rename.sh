if [[ $# -ne 1 ]] ; then
  echo "error: yu must enter argument" >&2; exit 1
fi
list=$(ls -ltr -1 "./screenshots/" | grep S)
numCheck=$(ls -l -1 "./screenshots/" | grep "^$1" | wc -l)
num=1
if [[ $numCheck -ne 0 ]]; 
  then
    youngestName=$(ls -lt -1 "./screenshots/" | grep "^$1" | head -n 1)
    bn="${youngestName%.png}"
    num="${bn: -1}"
    num=$(( num + 1))
fi
    echo "$num"

IFS=$'\n'
for file in $list ; 
  do
    echo "old name " 
    mv "./screenshots/$file" "./screenshots/$1.$num.png"
    num=$(( num + 1))
    echo $file
done
