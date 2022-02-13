read -p "enter a number " n;

i=2
count=0
flag=0

for ((i;i<$n;));
do
	if [ $(($n%$i)) -eq 0 ];
	then
		factor=$i;

			for ((j=2;j<=$(($factor / 2)); ));
			do
      		flag=0;

      			if [  $(($factor % $j)) -eq 0 ];then
      				flag=1;
      				break
      			fi

      		j=$(( $j + 1));
  			done

				   if [ $flag -eq 0 ]
					then
						c=0;
						primefactors[((c++))]=$i;
						echo "["${primefactors[@]}"]";  
					fi

count=1;
  
  					fi


  						i=$(( $i + 1));
done
  						if [ $count -eq 0 ];
						then
  							echo "no prime factors found except 1 and $input";
  						fi
