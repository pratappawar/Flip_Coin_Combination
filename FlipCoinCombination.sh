#! /bin/bash
echo "Welcome to Flip coin Combination problem"
Head=1
if [ $((RANDOM%2)) -eq $Head ]
   then
	echo "**Head**"
   else
	echo "***Tail***"
fi
