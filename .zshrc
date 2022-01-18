# the / sign displays the current path
# F is used to___
# %n is referring to the username

#PROMPT='%F{cyan}%n%/  :)'
PROMPT='%n%/  :)'
# this is to look for a directory
#find "Public" -type d
# the /Users/$USERNAME makes sure that the search is only searching for the currents username's folders



if [ -d "/Users/$USERNAME/v" ]
#if [ -d "/Users/$USERNAME/dev" ]

then
	echo "dev folder exists"
	echo "Navigating..."
	cd "/Users/$USERNAME/dev"
else
	echo "No dev folder found"
	#echo "Would you like to create a dev folder?"

	read muffin

	if [[ -z $muffin ]] 
	then
  		echo "Space pressed, do something"
    		#echo [$key] is empty when SPACE is pressed # uncomment to trace
	else
    		echo "Anything else pressed, do whatever else."
    		#echo [$key] not empty
	fi	


fi

#create a dev folder if the user states to make one by using the enter key