#!/bin/bash

for ip in 'seq 1 254'; do
    # -c 1: ping one ip at a time
    # $1.$ip: $1 will be the user input. we will input the first 3 ranges of 
    # the IP and the last range will be taken from the for loop. 
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done