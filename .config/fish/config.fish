set -x EDITOR atom

function ll --description "List contents of directory using long format"
    ls -lha $argv
end
