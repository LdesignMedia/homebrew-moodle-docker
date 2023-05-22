class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://www.ldesignmedia.nl"
  url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "f4a377844cb26947050b65a2a1dee2f48e2744b133fdb5f00e6244e76dff0ea9"
  version "1.0.0"
  license ""

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def install
    bin.install "#{ENV["HOME"]}/.moodle-docker-brew/install.sh"
  end

  def post_install
    system "git", "clone", "https://github.com/LdesignMedia/moodle-docker-brew", "#{ENV["HOME"]}/.moodle-docker-brew"
  end
  
end
