set -x EDITOR atom
set -gx PATH ~/.hyper_plugins $PATH

function ll --description "List contents of directory using long format"
    ls -lha $argv
end

function gs --description "git status"
    git status $argv
end

thefuck --alias | source
