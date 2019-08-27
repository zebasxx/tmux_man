# tmux_man

Simple collection of scripts to manage tmux session with a ssh session manager. For example you can use this scipt in combination with Remote Desktop Manager Free, when creating an SSH entry, you can add a post login command using this script to reconnect to existing session or, to create a new session if no session exist or if all connection are attached. For example you can add this command in post login section:

{[ -d "./tmux_man" ] && echo "Directory ./tmux_man exists." || git clone https://github.com/zebasxx/tmux_man.git;./tmux_man/tmux_secman.sh && tmux attach && exit

and it will:

if tmux is not installed, it install it
if Script is not in home folder, it clone the repo
if there is no tmux session it creates one in detached mode
it will connect to the last disconnected tmux session

Enjoy.
