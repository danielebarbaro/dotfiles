#
# .bash_profile
#
# @author Daniele Barbaro
#

# Add date on history command.
export HISTTIMEFORMAT="%d/%m/%y %T "

# Use colors.
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Custom $PATH with extra locations.
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/local/git/bin:$HOME/.composer/vendor/bin:$PATH

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.bash_aliases ]
then
  source ~/.bash_aliases
fi

# Include bashrc file (if present).
if [ -f ~/.bashrc ]
then
  source ~/.bashrc
fi

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
	source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Idiot bash alias
alias gitst="git st"
alias gits="git st"
alias gi="git"
alias gti="git"
alias githistory="git for-each-ref --sort=-committerdate refs/heads/"
alias s="git st"
alias gitlog="git log --oneline --since={20.weeks.ago} --format=\"%h %cd %an %s\" --author=\"barbaro.daniele@gmail.com\""
alias gitlog100="git log --oneline --reverse --all --branches --since={100.weeks.ago} --format=\"%h %cd %an %s\" --author=\"barbaro.daniele@gmail.com\""
alias gitlogall="git log --oneline --since={30.weeks.ago} --format=\"%h %cd %an %s\""
alias gitbrhistory="git branch --sort=-committerdate"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# General bash command
alias ll="ls -l"
alias subl='/Applications/Sublime\ Text\.app/Contents/SharedSupport/bin/subl'
alias phpstorm='/usr/local/bin/pstorm'
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias artisan="php artisan"
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
