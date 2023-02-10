#!/bin/bash
if [ $# -eq 2 ];
  then
  task_arg="$2"
  ((day_arg="$1"))
  printf -v day "%.2d" $day_arg 
    for (( n=task_arg; n>=0; n--))
    do
      printf -v var "%.2d" $n
      mkdir ./ex"$var";
      touch ./ex"$var"/day"$day"_ex"$var".sql;
    done
  else
    echo "./make_empty_ex.sh DAY_NUMBER TASK_NUMBER"
fi
