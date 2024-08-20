#!/bin/bash -i

HOME_DIR=$(dscl . -read /Users/$(whoami) NFSHomeDirectory | awk '{print $NF}')
DESTDIR="$HOME_DIR/.moodle-docker-brew"

if [ ! -d "$DESTDIR" ]; then

  echo "Installing (moodle-docker-brew)"
  echo "Installing to: $DESTDIR"

  # Check if unzip is installed
  if ! command -v unzip >/dev/null 2>&1; then
    echo "Error: unzip is required to extract the Moodle version."
    exit 1
  fi

  # Check if git is installed
  if ! command -v git >/dev/null 2>&1; then
    echo "Error: git is required."
    exit 1
  fi

  # Search for the application in the /Applications directory
  if [ ! -d "/Applications/OrbStack.app" ]; then
    echo "Error: Orbstack is not installed, please install it first."
    exit 1
  fi

  echo "Cloning (moodle-docker-brew)"
  git clone git@github.com:LdesignMedia/moodle-docker-brew.git "$DESTDIR"

  if [ -d "$DESTDIR" ]; then
    cd "$DESTDIR" || exit

    git clone git@github.com:moodlehq/moodle-docker.git moodlehq-docker
    chmod +x "$DESTDIR/moodle-docker"
  else
    echo "Error: installing failed.."
    exit 1
  fi

  echo "Finished installing dependencies"

else
  exec /bin/bash -i "$HOME_DIR"/.moodle-docker-brew/moodle-docker "$@"
fi
