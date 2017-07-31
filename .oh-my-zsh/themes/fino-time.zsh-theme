# fino-time.zsh-theme
# Added node version prompt (@markvasile 2017-07-31)

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

local node_ver='‹$(node --version)›%{$reset_color%}'
local cordova_ver='‹$(cordova --version)›%{$reset_color%}'
local ionic_ver='‹$(ionic --version)›%{$reset_color%}'
local rvm_ruby='‹$(rvm-prompt i v g)›%{$reset_color%}'
local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}${current_dir}%{$reset_color%}${git_info} - %*
╰─$(virtualenv_info)$(prompt_char) "

RPS1="${return_code} %{$FG[040]%}${node_ver}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} ‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%} ✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"
