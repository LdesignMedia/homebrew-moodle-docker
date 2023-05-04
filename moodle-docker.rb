class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://www.ldesignmedia.nl"
  url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "a099885d12fa867f1bb19e249b649092523dfc1b8fe9a3cfb25546bed4a4cf24"
  license ""

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

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
