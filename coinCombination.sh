\declare -A dict

h=0
headcount=0

t=1
tailcount=0

hh=00
shhcount=0

tt=11
ttcount=0

ht=01
htcount=0

th=10
thcount=0

hhh=000
hhhcount=0
ttt=111
tttcount=0

hht=001
hhtcoumt=0
htt=011
httcount=0

tth=110
tthcount=0
thh=100
thhcount=0

tht=101
thtcount=0
hth=010
hthcount=0


for ((i=1;i<=80;i++))
do

flip1=`shuf -i 0-1 -n 1`
flip2=`shuf -i 0-1 -n 1`
flip3=`shuf -i 0-1 -n 1`

flipc="$flip1$flip2$flip3"
flipa="$flip1"
flipb="$flip1$flip2"

if [[ $flipa == *"$h"* ]]
then
        headcount=$(($headcount+1))
        dict[H]=$headcount
fi

if [[ $flipa == *"$t"* ]]
then
        tailcount=$(($tailcount+1))
        dict[T]=$tailcount
fi

if [[ $flipb == *"$hh"* ]]
then
        hhcount=$(($hhcount+1))
        dict[HH]=$hhcount
fi

if [[ $flipb == *"$tt"* ]]
then
        tt_c=$(($ttcount+1))
        dict[TT]=$ttcount
fi

if [[ $flipb == *"$ht"* ]]
then
        htcount=$(($htcount+1))
        dict[HT]=$htcount
fi

if [[ $flipb == *"$th"* ]]
then
        thcount=$(($thcount+1))
        dict[TH]=$thcount
fi

if [[ $flipc == *"$hhh"* ]]; then
        hhhcount=$(($hhhcount+1))
        dict[HHH]=$hhhcount
fi

if [[ $flipc == *"$ttt"* ]]
then
        tttcount=$(($tttcount+1))
        dict[TTT]=$tttcount
fi


if [[ $flipc == *"$hht"* ]]
then
        hhtcount=$(($hhtcount+1))
        dict[HHT]=$hhtcount
fi

if [[ $flipc == *"$htt"* ]]
then
        httcount=$(($httcount+1))
        dict[HTT]=$httcount
fi

if [[ $flipc == *"$tth"* ]]
then
        tthcount=$(($tthcount+1))
        dict[TTH]=$tthcount
fi

if [[ $flipc == *"$thh"* ]]
then
        thhcount=$(($thhcount+1))
        dict[THH]=$thhcount
fi

if [[ $flipc == *"$tht"* ]]
then
        thtcount=$(($thtcount+1))
        dict[THT]=$thtcount
fi

if [[ $flipc == *"$hth"* ]]
then
        hthcount=$(($hthcount+1))
        dict[HTH]=$hthcount
fi
done

echo "H : "${dict[H]}
echo "T : "${dict[T]}

echo "HH : "${dict[HH]}
echo "TT : "${dict[TT]}
echo "HT : "${dict[HT]}
echo "TH : "${dict[TH]}

echo "HHH : "${dict[HHH]}
echo "TTT : "${dict[TTT]}

echo "HHT : "${dict[HHT]}
echo "HTT : "${dict[HTT]}

echo "TTH : "${dict[TTH]}
echo "THH : "${dict[THH]}

echo "THT : "${dict[THT]}
echo "HTH : "${dict[HTH]}




max=9
if [ $headcount -gt $max ]
then
 max_p="H"
 max=$headcount

elif [ $tailcount -gt $max ]
then
 max_p="T"
 max=$tailcount





elif [ $hhcount -gt $max ]
then
 max_p="HH"
 max=$hhcount

elif [ $ttcount -gt $max ]
then
 max_p="TT"
 max=$ttcount

elif [ $htcount -gt $max ]
then
 max_p="HT"
 max=$htcount

elif [ $thcount -gt $max ]
then
 max_p="TH"
 max=$thcount





elif [ $hhhcount -gt $max ]
then
 max_p="HHH"
 max=$hhhcount

elif [ $tttcount -gt $max ]
then
 max_p="TTT"
 max=$tttcount




elif [ $hhtcount -gt $max ]
then
 max_p="HHT"
 max=$hhtcount

elif [ $httcount -gt $max ]
then
 max_p="HTT"
 max=$httcount




elif [ $tthcount -gt $max ]
then
 max_p="TTH"
 max=$tthcount

elif [ $thhcount -gt $max ]
then
 max_p="THH"
 max=$thhcount




elif [ $thtcount -gt $max ]
then
 max_p="THT"
 max=$thtcount

elif [ $hthcount -gt $max ]
then
 max_p="HTH"
 max=$hthcount



fi
