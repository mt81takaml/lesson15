#!/bin/bash

if [ $# -ne 2];
then echo "ERROR: PLZ INPUT 2 ARGMENTS"
exit 1
fi

if [ $1 = $2 ];
then
echo "same"
else
echo "not same"
fi
