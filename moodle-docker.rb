class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://ldesignmedia.nl"
  url "https://github.com/LdesignMedia/homebrew-moodle-docker/archive/refs/tags/v1.0.2.zip"
  sha256 "50d6d9676a1454a35ad8a85358d152a64390751d88c7e62f9e0004d9cae424c6"
  version "1.0.2"
  license ""

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def install
    ohai "Installing Moodle Docker"

    bin.install "install_moodle_docker.sh"
    bin.install "~/.moodle-docker-brew/moodle-docker" => "moodle-docker"

    # Create a dummy file to satisfy Homebrew's requirement of installing something
    (prefix/"dummy").write ""

    ohai "Complete installation"
  end
  
end
