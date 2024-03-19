#set -x EDITOR nvim
set -U EDITOR code


fish_add_path ~/bin
fish_add_path ~/.nodenv/bin
fish_add_path ~/.yarn/bin
fish_add_path /usr/bin/python3
# todo: figure out how to make this different between macos and linux?
fish_add_path /snap/bin/code
fish_add_path /opt/homebrew/bin
alias python="python3"
source ~/.asdf/asdf.fish


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

function gdc --description "git diff --cached"
    git diff --cached $argv
end

function dcu --description "docker compose up"
    docker compose up $argv
end

function dcd --description "docker compose down"
    docker compose down $argv
end

function dip --description "docker image prune"
    docker image prune -a $argv
end


function c --description "Open $EDITOR with current dir, or whatever dir is specified"
    # Check if an argument is provided, otherwise use the default value
    if test -n "$argv[1]"
        set path $argv[1]
    else
        set path .
    end

    # Your command logic using $path
    # echo "My command with argument: $path"
    $EDITOR $path
end

function gc --description "git commit"
    git commit -m $argv
end

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias openscad="/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD"
# alias code="/usr/local/bin/code"

thefuck --alias | source

# function f 
#     $EDITOR (fzf)
# end


# fuzzy file finder for tracked git files
# function f
#  if test -d .git
#    git ls-files | uniq | fzf | xargs $EDITOR
#  else
#    fzf | xargs $EDITOR
#  end
#end

# sets up nodenv
status --is-interactive; and source (nodenv init -|psub)

# ~/.zshrc
set -U AWS_PROFILE_PROD sso-prod-readonly
set -U AWS_PROFILE_DEV sso-dev-sysadmin
set -U AWS_PROFILE $AWS_PROFILE_DEV
set -U AWS_CREDFUL_URL "https://sso.jumpcloud.com/saml2/aws"


# Switch to prod env. Requires user to have an AWS_PROFILE_PROD env var
function prod
    set -x AWS_PROFILE $AWS_PROFILE_PROD
    set -x AWS_REGION us-west-2
    kubectl config use-context prod-techstars
end

# Switch to dev env. Requires user to have an AWS_PROFILE_DEV env var
function dev
    set -x AWS_PROFILE $AWS_PROFILE_DEV
    set -x AWS_REGION us-west-2
    kubectl config use-context dev-techstars
end

function login
    aws-credful --all --hours 12 -u $AWS_CREDFUL_URL
end


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ken/google-cloud-sdk/path.fish.inc' ]; . '/Users/ken/google-cloud-sdk/path.fish.inc'; end
