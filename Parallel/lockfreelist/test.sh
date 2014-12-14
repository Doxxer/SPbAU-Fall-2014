#!/bin/bash

path='target/classes'
program='ru.spbau.parallel.turaevt.Main'

for threads in 2 8 16
do
    for ops in 100000 1000000 10000000
    do
        block=$((time java -cp $path $program $threads $threads $ops 0) 2>&1)
        block=$(echo $block | awk '{print $2}')
		
        free=$((time java -cp $path $program $threads $threads $ops 1) 2>&1)
        free=$(echo $free | awk '{print $2}')
		
        printf "$threads $threads $ops \t\t block: $block free: $free \n"
    done
done