class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://www.ldesignmedia.nl"
  url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.12.zip"
  sha256 "086092a21377d3e43684f4c31c078baec36bba0ae93c7eaa6284cd7932e56e18"
  version "1.0.2"
  license ""

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def post_install
    system "git", "clone", "https://github.com/LdesignMedia/moodle-docker-brew", "~/.moodle-docker-brew"
  end
  
end
