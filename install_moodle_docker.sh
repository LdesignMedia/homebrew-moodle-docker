#!/usr/bin/env bash

echo "-------------"
echo "Installing (moodle-docker-brew)"

DESTDIR="/usr/local/lib/moodle-docker-brew"

if [ -d "$DESTDIR" ]; then
  rm -rf "$DESTDIR"
fi

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

  # Installing dependencies.
  git submodule update --init --recursive
  chmod +x "$DESTDIR/moodle-docker"
else
  echo "Error: installing failed.."
  exit 1
fi

echo "Finished installing dependencies"
echo "-------------"