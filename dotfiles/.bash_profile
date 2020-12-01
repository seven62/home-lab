# Default to Vim
export EDITOR="vim"

export BASH_SILENCE_DEPRECATION_WARNING=1

# Color LS output to differentiate between directories and files
export LS_OPTIONS="--color=auto"
export CLICOLOR="Yes"
export LSCOLOR=""

# Customize Path
export PATH=$HOME/bin:$PATH

## get current branch in git repo
#function parse_git_branch() {
#  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
#  if [ ! "${BRANCH}" == "" ]
#  then
#    STAT=`parse_git_dirty`
#    echo "[${BRANCH}${STAT}]"
#  else
#    echo ""
#  fi
#}
#
## get current status of git repo
#function parse_git_dirty {
#  status=`git status 2>&1 | tee`
#  dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
#  untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
#  ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
#  newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
#  renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
#  deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
#  bits=''
#  if [ "${renamed}" == "0" ]; then
#    bits=">${bits}"
#  fi
#  if [ "${ahead}" == "0" ]; then
#    bits="*${bits}"
#  fi
#  if [ "${newfile}" == "0" ]; then
#    bits="+${bits}"
#  fi
#  if [ "${untracked}" == "0" ]; then
#    bits="?${bits}"
#  fi
#  if [ "${deleted}" == "0" ]; then
#    bits="x${bits}"
#  fi
#  if [ "${dirty}" == "0" ]; then
#    bits="!${bits}"
#  fi
#  if [ ! "${bits}" == "" ]; then
#    echo " ${bits}"
#  else
#    echo ""
#  fi
#}
#
#export PS1="\[\e[36m\]\W\[\e[m\]\[\e[32m\]\`parse_git_branch\`\[\e[m\] $ "

PS1='\u@\h \W$ '
#PS1="\e[0;32m\u@\h\e[m \e[0;34m\w\e[m $ "


alias ll='ls -lahtG'
alias gs='git status'
alias gb='git branch'
alias v='vim'
alias gl='git log --graph --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%ae%d%x1b[0m%x20%s"'
alias sshagent='eval "$(ssh-agent -s)"'

### Bash Completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


# pyenv setup
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


export PATH="/usr/local/sbin:$PATH"



# run pfetch
pfetch