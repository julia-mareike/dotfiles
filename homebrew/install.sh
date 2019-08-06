#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."


  if test ! "$(uname)" = "Darwin"
  then
      echo "Not in macOS"
      exit
  elif test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  # then
  # ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi
elif test $(which brew)
then
  echo "  Updating Homebrew for you."
  brew update
  brew upgrade
fi

exit 0
