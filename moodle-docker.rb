class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://ldesignmedia.nl"
  url "https://github.com/LdesignMedia/homebrew-moodle-docker/archive/refs/tags/v1.0.1.zip"
  sha256 "9a2867cf395a49c326c1846c6c029889f6d6714cad52af30a60059e80ac60e91"
  version "1.0.1"
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
