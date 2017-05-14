# should probably make this work even without go

set -x GOPATH $HOME/dev/go
set -x PATH $PATH $GOPATH/bin
set -x EDITOR atom

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ken/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/ken/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/ken/Downloads/google-cloud-sdk/path.fish.inc'; end; end
