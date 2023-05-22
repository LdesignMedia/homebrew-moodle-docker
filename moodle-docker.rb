class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://ldesignmedia.nl"
  url "https://github.com/LdesignMedia/homebrew-moodle-docker.git", :using => :git
  version "1.0.3"

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def install
    ohai "Installing Moodle Docker"

    system "bash", "./install_moodle_docker.sh"
    bin.install "~/.moodle-docker-brew/moodle-docker" => "moodle-docker"

    # Create a dummy file to satisfy Homebrew's requirement of installing something
    (prefix/"dummy").write ""

    ohai "Complete installation"
  end
  
end
