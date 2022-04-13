#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
set -o vi # vi mode


#PS1='[\u@\h \W]\$ '
export PS1="\[\033[38;5;220m\][\[$(tput sgr0)\]\[\033[38;5;208m\]\u\[$(tput sgr0)\]\[\033[38;5;220m\]@\[$(tput sgr0)\]\[\033[38;5;208m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;202m\]\W\[$(tput sgr0)\]\[\033[38;5;220m\]]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
source ~/.config/env
source ~/.config/aliases
source ~/.scripts/lfcd


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
