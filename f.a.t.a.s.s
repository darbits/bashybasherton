#!/usr/bin/env bash


#get name of food eaten, test if already in database, append if needed
	
food(){
	read -p "enter new food record : " food 
	read -p "use singular tense and input unit of measurement for new food : " unit 
	read -p "how many calories does one 'unit' of this food contain? : " calin 
	
	local $food
	local $unit
	local $calin

if grep -qw "$food*"  foodlist.txt ; then
	read -p "an entry for "$food*" already exists, do you want to replace it? 'y' will replace 'n' will add a new entry - hit enter to exit : " yn  
		case $yn in
			
			"")
				 exit;;
			y)
				echo "boobies";;
			n)						
				echo ""$food" "$unit" "$calin"" >> foodlist.txt
				echo "new entry for "$food" added
				exit;;
		esac
else	
	echo "new entry added"
	echo ""$food" "$unit" "$calin"" >> foodlist.txt
				exit		
fi	
}

#beginning step for activity
#
#activity(){
#	read -p "what activity did we do? Enter if none : " activity 3	local activity="$activity"
#if grep -q "$activity*" workout.txt ; then
#	echo ""$activity"? Great."
#
#elif	[[ -z "$activity" ]] ; then
#	exit 
#	
#else 
#	echo "$activity" >> workout.txt
#
#fi
#}

#activity

food
