# the / sign displays the current path
# F is used to___
# %n is referring to the username

PROMPT='%F{cyan}%n%/  :)'

# this is to look for a directory
#find "Public" -type d

if [ -d "/Users/$USERNAME/dev" ]

then
	echo "dev folder exists"
	echo "Navigating..."
	cd "/Users/$USERNAME/dev"
else
	echo "No dev folder found"
fi