#!/bin/bash


if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if [ $# -ne  2 ]; then
    echo "need two parametrs for work"
    exit 1
fi

if  id -u $1 > /dev/null;
then
    echo "..."
else
    exit 1
fi


if [ -d $2 ] 
then
    echo "..."
else
     echo "you can choose only directory"
     exit 1
fi

chown $1 $2

echo "you switch owner $2 to $1"
