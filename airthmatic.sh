eclare -A dict
declare -a arr

read -p "ENTER VALUE OF A : " a
read -p "ENTER VALUE OF B : " b
read -p "ENTER VALUE OF C : " c

c1=$(($a+$b*$c))
echo "Array1=$c1"
c2=$(($a*$b+$c))
echo "Array2=$c2"
c3=$(($c+$a/$b))
echo "Array3=$c3"
c4=$(($a%$b+$c))
echo "Array4=$c4"

echo -e "\n( a + b x c ) : $(($a+$b*$c))"
echo -e "\n( a x b + c ) : $(($a*$b+$c))"
echo -e "\n( c + a / b ) : $(($c+$a/$b))"
echo -e "\n( a % b + c ) : $(($a%$b+$c))"

dict["c1"]+=$c1
dict["c2"]+=$c2
dict["c3"]+=$c3
dict["c4"]+=$c4

a=0
arr[((a++))]=${dict[@]}
echo -e "\nDICTIONARY : ${dict[@]}"

echo -e "\nARRAY VALs : ${arr[@]}"

d_dict=($(echo ${dict[@]} | tr " " "\n" | sort -nr))
echo "Descending sorted : ${d_dict[@]}"


s_arr=($(echo ${arr[@]}| tr " " "\n" | sort -n))
echo -e "\nSORTED ASC : ${s_arr[@]}"
