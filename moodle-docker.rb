class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://ldesignmedia.nl"
  url "https://github.com/LdesignMedia/homebrew-moodle-docker.git", :branch => "main", :using => :git
  version "1.0.21"

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def install
    ohai "Installing/updating Moodle Docker"
    bin.install "install_moodle_docker.sh" => "moodle-docker"
    ohai "Complete"
  end
end
