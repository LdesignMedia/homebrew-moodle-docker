#!/usr/bin/env bash
echo "Installing (moodle-docker-brew)"

if [ -d ~/.moodle-docker-brew ]; then
  rm -rf ~/.moodle-docker-brew
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
git clone git@github.com:LdesignMedia/moodle-docker-brew.git ~/.moodle-docker-brew

if [ -d ~/.moodle-docker-brew ]; then
  cd ~/.moodle-docker-brew || exit

  # Installing dependencies.
  if [ ! -f ~/.moodle-docker-brew/moodlehq-docker/config.docker-template.php ]; then
    git submodule update --init --recursive
  fi

  chmod +x ~/.moodle-docker-brew/moodle-docker
else
  echo "Error installing failed.."
  exit 1
fi
