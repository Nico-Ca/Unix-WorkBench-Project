README.md: guessinggame.sh 
	echo "# Nico-Ca project: Bash, Make, Git and GitHub"> README.md
	echo " \ndate and time at which **make** was run**:">> README.md
	date>> README.md
	echo "\nnumber of lines of code contained in **guessinggame.sh**:">> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+">> README.md
