programs=(tmux)
for program in "${programs[@]}"; do
    if ! command -v "$program" > /dev/null 2>&1; then
        sudo apt-get update
        sudo apt-get install "$program" -y
    fi
done

tmux list-session > ./tmux_session_list.dat
clear
if [ -s tmux_session_list.dat ]; then
    lines="./tmux_session_list.dat"
    unattached=false
    while IFS= read -r line
    do
      if [[ ! $line == *"attached"* ]]; then
        echo "Unattached session found..."
	unattached=true
      fi
    done < "$lines"

    if ! $unattached; then
	#No session found, creating one in detached mode
	tmux new-session -d
    fi
else
    #No session found, creating one in detached mode
    echo 'No tmux session found, creating one...'
    tmux new-session -d
fi
rm ./tmux_session_list.dat
#At this point Script exit with at least one unattached session available, run "tmux attach" to join
