#i/nin/bash
echo -n "please input name;"
read INPUT1
echo -n "please input age;"
read INPUT2
echo -n "please in put gender(male/female);"
read INPUT3
echo "Risk countries of covind19"
echo "Taiwan Southkorea Chaina Italy Japan Iran France Germany Spain Sweden USA"
echo -n "Are you back from risk contries?(Answer Yes or NO)"
read INPUT4
if [ $INPUT4 = Yes ];
then
		echo "Are you have fever,sore throat or cough?"
		OPTIONS="yes no"
		select opt in $OPTIONS; do
			if [ "$opt" = "yes" ]; then
				echo "Plase go to see  a doctor right away! You are at risk of Covid-19."
				exit
			elif [ "$opt" = "no" ]; then
				echo "Congratulation You are Free from Covid-19."
				exit
			fi
		done
else
		echo "Congratulation You are free from Covid-19."
fi
exit 0

