file_num=$( ls -l | wc -l )
echo "GUESSING GAME"
function guessinggame {
cv=1
while [[ $cv == 1 ]]
do
echo "Guess how many files?"
read num
 if [[ $num == $file_num ]]
 then
   echo "Congragulations"
   let cv=0
 else
   let cv=1
   t=2
	lim1=$(expr $file_num / $t)
	echo "$lim1"

        lim2=$(expr $file_num \* $t)
        echo "$lim2"
        
        if [[ $num < $file_num ]]
        then
         echo "Low"
        elif [[ $num > $file_num ]]
          then 
          echo "High"
         fi
fi
done
}
guessinggame
