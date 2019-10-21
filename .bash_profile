# bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# anyenvのPATH追加
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# phpenvの設定
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# pyenvのPATH追加
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# gitのPATH追加
export PATH="/usr/local/Cellar/git/2.16.1/bin:$PATH"

# gitのブランチ表示・補完
source $HOME/git-prompt.sh
source $HOME/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

##
# Your previous /Users/fukudataiga/.bash_profile file was backed up as /Users/fukudataiga/.bash_profile.macports-saved_2018-02-23_at_16:25:36
##

# MacPorts Installer addition on 2018-02-23_at_16:25:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export PATH="/usr/local/opt/icu4c/bin:$PATH"
