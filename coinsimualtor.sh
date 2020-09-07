#!bin/bash -x

a=1
headcount=0
tailcount=0
n=30
for ((i=1;i<=$n;i++))
do
flip=$(($(($RANDOM%10))%2))
if [ $flip -eq 1 ]; then
        headcount=$(($headcount+1))
                        if [ $headcount -eq 21 ]
                        then
                                echo "HEADS IS WINNER , WON ○"
                                echo "$headcount times"
                                echo "HEADS WON BY : $(($headcount-$tailcnt)) times"
                        break
                        fi
else
        tailcount=$(($tailcount+1))
                        if [ $tailcount -eq 21 ]
                        then
                                echo "TAILS IS WINNER , WON ○"
                                echo "$tailcount times"
                                echo "TAILS WON BY : $(($tailcnt-$headcount)) times"
                        break
                        fi
fi
if [ $i == $n ] && ( [ $headcount -lt 21 ] || [  $tailcount -lt  21 ] )
then
        echo "TIE #$a"
                echo "TIE HEADS COUNT : " $headcount
                echo "TIE TAILS COUNT : " $tailcount
        n=$(($n+2))
        a=$(($a+1))
fi

done


echo "HEADS COUNT : " $headcount
echo "TAILS COUNT : " $tailcount
