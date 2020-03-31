#!/bin/bash

DATA=${1}
TARGET=${2}

# generate random prefix for all tmp files
RAND_1=`echo $((1 + RANDOM % 100))`
RAND_2=`echo $((100 + RANDOM % 200))`
RAND_3=`echo $((200 + RANDOM % 300))`
RAND=`echo "${RAND_1}${RAND_2}${RAND_3}"`

head -1 ${DATA} | tr ',' '\n' | tail -n +2 > ${RAND}_tmp1.txt
cut -f 1 -d ',' ${TARGET} | tail -n +2 > ${RAND}_tmp2.txt 

if diff ${RAND}_tmp1.txt ${RAND}_tmp2.txt 1> /dev/null 2>&1; then
        echo  "INDEXES ARE THE SAME"
else
        echo  "WARNING: INDEXES ARE NOT THE SAME"
fi

rm ${RAND}_*