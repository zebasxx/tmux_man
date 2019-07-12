# tmux_man

Simple collection of scrpts to manage tmux session with a ssh session manager. For example you can use this scipt in combination with Remote Desktop Manager Free, when creating an SSH entry, you can add a post login command using this script to reconnect to existing session or, to create a new session if no session exist or if all connection are attached. For example you can add this command in post login section:

./tmux_man/tmux_secman.sh && tmux attach && exit

and it will use the tmux_secman.sh script to querry if there is any existing unattached session and in case there is non it will create one... then tmux attach will attach to that session.
