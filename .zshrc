# Load a z styler to compare lower case characters to both lower and capital case characters.
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# the / sign displays the current path
# F is used to___
# %n is referring to the username

#PROMPT='%F{cyan}%n%/  :)'
PROMPT='%n%/: '
# this is to look for a directory
#find "Public" -type d
# the /Users/$USERNAME makes sure that the search is only searching for the currents username's folders





# Check if dev folder exists in $USERNAME folder. If yes, navigate there. If no, create a dev folder if the user states to make one by using the enter key. navigate to dev folder.






if [ -d "/Users/$USERNAME/dev" ]
#if [ -d "/Users/$USERNAME/dev" ]

then
	echo ""
	echo "dev folder exists"
	echo "Navigating..."
	echo ""
	cd "/Users/$USERNAME/dev"
else
	echo ""
	echo "No dev folder found in $USERNAME folder"
	echo ""
	echo "Would you like to create a dev folder? if so, press enter or space enter, otherwise, press anything else then enter"

	read muffin
#	-z means if nothing is (string is equal to zero) pressed like space, enter, than go in to if statement 
	if [[ -z $muffin ]] 
#	if [ $muffin = y ]  
	then
# 		echo "Enter/Space Enter pressed.
#		echo "Creating dev directory in $USERNAME folder using mkdir command"
		echo "Enter or Space Enter pressed, creating dev directory in $USERNAME folder using mkdir command"
		cd 
		mkdir dev
		echo ""
		echo "navigating to dev directory..."
		echo ""
		cd dev

    		#echo [$key] is empty when SPACE is pressed # uncomment to trace
	else
    		echo "Anything else pressed, do whatever else."
    		#echo [$key] not empty
	fi	


fi












code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
alias code .="code"