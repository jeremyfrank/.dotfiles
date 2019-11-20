# From https://til.hashrocket.com/posts/esd7dvzfme-using-yarn-global-w-node-through-asdf-mac

# asdf global version manager
source "$HOME/.asdf/asdf.sh"
source "$HOME/.asdf/completions/asdf.bash"

# set yarn binaries on path
# must be below the .asdf source commands ^
export PATH="$(yarn global bin):$PATH"