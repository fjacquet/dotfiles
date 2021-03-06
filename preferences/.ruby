#!/usr/bin/env bash

###############################################################################
# ruby
###############################################################################

if [[ -f "/usr/local/bin/rbenv" ]] ; then
    eval "$(rbenv init -)"

    # install ruby versions
    rbenv install 2.4.2

    # set the global version
    rbenv global 2.4.2

    # install gems
    rbenv exec gem install bundler
    rbenv exec gem install mdl
    rbenv exec gem install rubocop
    rbenv exec gem install tmuxinator
    rbenv exec gem install yaml-lint

    rbenv rehash
else
    echo "ERROR: rbenv is not available."
    exit 1
fi
