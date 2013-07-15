# Glean - Clean and powrful
#
# Tested on a Mac under ANSI colors.
# It is recommended to use with a dark background and the font Menlo.
#
# Based on ys theme:
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Jun 2013 gr

# Machine name
function box_name {
	[ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# Directory
local current_dir='${PWD/#$HOME/~}'

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}(%{$reset_color%}%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"

# Ruby
function show_ruby {
  if [ -f ${PWD/#$HOME/~}/.ruby-version ]
  then
    echo "[${$(rbenv_prompt_info):0:5}]"
  else
    echo ""
  fi
}

local final_ruby='$(show_ruby)'

# Prompt: \n # USER@MACHINE[RUBY]:DIRECTORY (BRANCH STATE) [TIME] \n $
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$fg[cyan]%}%n\
%{$fg[white]%}@\
%{$fg[green]%}$(box_name)\
%{$fg[red]%}${final_ruby}%{$reset_color%}\
%{$fg[white]%}:\
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${git_info} \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
