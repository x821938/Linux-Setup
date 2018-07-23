export ZSH=".oh-my-zsh"
ZSH_THEME="alex"

plugins=(
  git
  colored-man-pages
  command-not-found
  zsh-syntax-highlighting
)

TZ='Europe/Copenhagen'; export TZ
TERM=screen-256color	

if [ "$USER" != "root" ]; then
	if [[ -z "$TMUX" ]]; then
		if tmux has-session 2>/dev/null; then
			exec tmux attach
		else
			exec tmux
		fi
	fi
fi

source $ZSH/oh-my-zsh.sh
