# Set language
export LANG=en_US.UTF-8

# Ruby (https://gorails.com/setup/macos/13-ventura)
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Starship prompt (https://starship.rs/)
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
