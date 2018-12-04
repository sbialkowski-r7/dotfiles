#!/bin/bash
#   Credit:
#       github.com/jessfraz/dotfiles

source /usr/share/defaults/etc/profile
source ~/.aliases

eval $(dircolors ~/.dir_colors)

#   Add go bin to path
PATH=$PATH:~/go/bin

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Allow bash recursive globbbing
shopt -s globstar

#   History time format
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export GPG_TTY=$(tty)

#   Tab case insensitive autocompletion
bind 'set completion-ignore-case on'

# List all matches in case multiple possible completions are possible
bind 'set show-all-if-ambiguous on'

# Do not autocomplete hidden files unless the pattern explicitly begins with a dot
# bind 'set match-hidden-files off'

# Show all autocomplete results at once
bind 'set page-completions off'

# If there are more than 100 possible completions for a word, ask to show them all
bind 'set completion-query-items 100'

# Show extra file information when completing, like `ls -F` does
bind 'set visible-stats on'

# Allows cycling through options
bind 'TAB':menu-complete

# Partial completion of first tab, cycling on second onwards
bind "set menu-complete-display-prefix on"

# miniconda
export PATH=~/miniconda3/bin:$PATH

# Only show n directorys in terminal working path
export PROMPT_DIRTRIM=2
