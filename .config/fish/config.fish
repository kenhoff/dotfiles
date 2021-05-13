set -gx PATH ~/.hyper_plugins $PATH
# set -gx PATH /usr/local/anaconda3/bin $PATH  # commented out by conda initialize
# set -x EDITOR nvim
set -x EDITOR code

function ls
    exa  $argv
end

function ll --description "List contents of directory using long format"
    exa -lha $argv
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

thefuck --alias | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ken/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/ken/Downloads/google-cloud-sdk/path.fish.inc'; end
