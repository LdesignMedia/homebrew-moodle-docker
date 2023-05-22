#!/usr/bin/env bash
echo "Installing (moodle-docker-brew)"

homedir=$(dscl . -read /Users/$(whoami) NFSHomeDirectory | awk '{print $NF}')
echo "The current user's home directory is: $homedir"
echo "Current user: $USER"

mkdir /Users/luukverhoeven/.test

destdir="$homedir/moodle-docker-brew"

if [ -d "$destdir" ]; then
  rm -rf "$destdir"
fi

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
git clone git@github.com:LdesignMedia/moodle-docker-brew.git "$destdir"

if [ -d "$destdir"  ]; then
  cd "$destdir" || exit

  # Installing dependencies.
  if [ ! -f "$destdir/moodlehq-docker/config.docker-template.php" ]; then
    git submodule update --init --recursive
  fi

  chmod +x "$destdir/moodle-docker"
else
  echo "Error: installing failed.."
  exit 1
fi

echo "Finished installing dependencies"