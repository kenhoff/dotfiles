# set -x EDITOR nvim
set -x EDITOR code

function ls
    exa  $argv
end

function ll --description "List contents of directory using long format"
    exa -lha $argv
end

function lg --description "Lazygit"
    lazygit
end

function gs --description "git status"
    git status $argv
end

function gd --description "git diff"
    git diff $argv
end

function gc --description "git commit"
    git commit -m $argv
end

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias code="/usr/local/bin/code"

thefuck --alias | source

# fuzzy file finder for tracked git files
function f
  if test -d .git
    git ls-files | uniq | fzf | xargs $EDITOR
  else
    fzf | xargs $EDITOR
  end
end

# sets up nodenv
status --is-interactive; and source (nodenv init -|psub)
