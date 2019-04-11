print_message() {
	figlet $1; sleep $2; exit
}

display_message() {
# first argument is characters displayed
# second argument is duration of display in seconds
	xterm -e "source ~/lib/myfunc.sh && print_message $1 $2" & 
}

pomo_session() {
	t=$((60*$1/2))
	display_message '"debut du pomodoro" 1'
	sleep $t
	display_message '"reposez vos yeux" 20'
	sleep $t
	display_message '"fin du pomodoro" 10'
	sleep 300
	display_message '"fin de la pause" 1000'
}

pomo(){
# argument is duration of the pomodoro cycle in minutes
	pomo_session $1
}
