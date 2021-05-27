autoload colors
colors

PROMPT="%{$fg[yellow]%}%S%1~%s%(!.#.%%) %{$reset_color%}"

# zsh-git-prompt
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX=" ]"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}%{ %G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[magenta]%}%{x%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[red]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}%{-%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{✔%G%}"
RPROMPT='$(git_super_status)'

# zsh_completion
if [ -e /usr/local/share/zsh-completions ]; then
        fpath=(/usr/local/share/zsh-completions $fpath)
fi

# git completion
fpath=(~/.zsh/completion $fpath)

autoload -U compinit
compinit -u

# 補完候補に色つける
zstyle ':completion:*' list-colors "${LS_COLORS}"

# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/taiga/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/taiga/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/taiga/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/taiga/google-cloud-sdk/completion.zsh.inc'; fi
