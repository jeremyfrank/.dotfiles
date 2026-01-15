# Path to your oh-my-zsh configuration.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  brew
  git
  macos
  mise
  starship
  z
)

source $ZSH/oh-my-zsh.sh
