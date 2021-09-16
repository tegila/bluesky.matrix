#!/bin/bash

# use nullglob in case there are no matching files
shopt -s nullglob

# create an array with all the filer/dir inside ~/myDir
arr=(*.yaml)

ACTION="${1:-up -d}"

# iterate through array using a counter
for ((i=0; i<${#arr[@]}; i++)); do
    #do something to each element of array
    echo "docker-compose -f ${arr[$i]} -p ${arr[$i]%.yaml} ${ACTION}"
    docker-compose -f ${arr[$i]} -p ${arr[$i]%.yaml} ${ACTION}
done

#FILES=$(printf ' -f %s' "${arr[@]}"; echo)

#echo docker-compose $FILES up -d
#docker-compose $FILES up -d
