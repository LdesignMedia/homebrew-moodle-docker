class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://www.ldesignmedia.nl"
  url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "847254029c0ca1750f553cb4755b323e54d5a3db9f1c7bf72cc5ad377648987a"
  license ""

  depends_on "bash"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"
  depends_on "libunistring"

  def install
    bin.install "moodle-docker"
    bin.install Dir["moodle"]
    bin.install Dir["moodlehq-docker"]
    bin.install Dir["scripts"]
    prefix.install "README.md"
    prefix.install "moodle_versions.txt"
  end

  def post_install
    system "git", "clone", "https://github.com/moodlehq/moodle-docker.git", "#{bin}/moodlehq-docker"
  end
end
