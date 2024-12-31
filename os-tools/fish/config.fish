if status is-interactive
    # Commands to run in interactive sessions can go here
  # pokemon-colorscripts -r --no-title
end

# Some config
set -g fish_greeting

set TERM xterm-256color
#
# alias ps="procs"
alias v="nvim"

# proxy-tx
alias setproxy-tx="export all_proxy=http://10.10.22.19:8118"
alias setproxy-own="export all_proxy=http://127.0.0.1:7890"
alias noproxy="set --erase https_proxy && set --erase http_proxy && set --erase all_proxy"

# git
alias gst="git status"
alias gco="git checkout"

# Fish syntax highlighting
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command blue --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow '--background=brblack'
set -g fish_color_selection white --bold '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# go
set PATH $PATH /usr/local/go/bin
set PATH $PATH /home/dwz/go/bin

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source


# Created by `pipx` on 2024-02-26 05:09:35
set PATH $PATH /home/dwz/.local/bin

set LD_LIBRARY_PATH $LD_LIBRARY_PATH /opt/cuda/lib64
set PATH $PATH /opt/cuda/lib64
set PATH $PATH /opt/cuda/bin

set PATH $PATH /opt/TensorRT-8.6.1.6/targets/x86_64-linux-gnu/bin/
set LD_LIBRARY_PATH $LD_LIBRARY_PATH /opt/TensorRT-8.6.1.6/targets/x86_64-linux-gnu/lib/
set LIBRARY_PATH $LIBRARY_PATH /opt/TensorRT-8.6.1.6/targets/x86_64-linux-gnu/lib/

set EDITOR vim

# asdf
source /opt/asdf-vm/asdf.fish

starship init fish | source

