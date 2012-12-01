PROMPT='
%{$fg[green]%}%n%{$fg[yellow]%}@%{$reset_color%}%{$fg[green]%}%m%{$reset_color%}%{$reset_color%} %{$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
