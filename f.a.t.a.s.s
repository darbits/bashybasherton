#!/usr/bin/env bash
#get name of food eaten, test if already in database, append if needed
	
food(){
	read -p "what did you eat? : " food 
	local food="$food"
if grep -q "$food*" foodlist.txt ; then
	echo ""$food"? Great."
	
else 
	echo "$food" >> foodlist.txt

fi
}

food
