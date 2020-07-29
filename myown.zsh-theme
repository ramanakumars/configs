# Copied and modified from the oh-my-zsh theme from geoffgarside, jispwoso,
# daveverwer 
# yellow username/server name, magenta cwd, blue git status

#PROMPT='$FG[156]%m%{$reset_color%}:%{$FG[160]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '
PROMPT='$FG[156]%m%{$reset_color%}:%{$FG[160]%}%c%{$reset_color%}%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}*)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
