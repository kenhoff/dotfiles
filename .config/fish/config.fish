set -x EDITOR atom
set -gx PATH ~/.hyper_plugins $PATH
set -g fish_user_paths "/usr/local/opt/mongodb@3.4/bin" $fish_user_paths

function ll --description "List contents of directory using long format"
    ls -lha $argv
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
