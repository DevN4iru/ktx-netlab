#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lah'

# KTX shortcuts
export KTX_NETLAB_OS=1
export EDITOR=nano

alias ktx-status='ktx status'
alias ktx-net='ktx net'
alias ktx-mode='ktx mode status'
alias ktx-audit='ktx audit'
alias ktx-repo='ktx repo'
alias ktx-logs='ktx logs'
alias ports='ss -tunlp'
alias myip='ip -br addr'
alias gw='ip route | grep default'

ktx_git_segment() {
  git rev-parse --is-inside-work-tree >/dev/null 2>&1 || return 0

  local branch dirty
  branch="$(git branch --show-current 2>/dev/null)"
  [ -n "$branch" ] || branch="$(git rev-parse --short HEAD 2>/dev/null)"
  [ -n "$branch" ] || return 0

  if ! git diff --quiet --ignore-submodules -- 2>/dev/null || \
     ! git diff --cached --quiet --ignore-submodules -- 2>/dev/null; then
    dirty="*"
  else
    dirty=""
  fi

  printf " git:%s%s" "$branch" "$dirty"
}

ktx_prompt() {
  local exit_code="$?"
  local status=""
  local gitseg=""

  gitseg="$(ktx_git_segment)"

  if [ "$exit_code" -ne 0 ]; then
    status=" \[\e[1;31m\]✗ $exit_code\[\e[0m\]"
  fi

  PS1="\n\[\e[1;36m\]KTX\[\e[0m\] \[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\W\[\e[0m\]\[\e[90m\]${gitseg}\[\e[0m\]${status}\n\[\e[1;37m\]❯\[\e[0m\] "

  return "$exit_code"
}

PROMPT_COMMAND=ktx_prompt
