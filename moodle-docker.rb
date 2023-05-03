class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://www.ldesignmedia.nl"
  url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "4e57d5eae274e54e909eeac80630fe7a2b6859fe6f78f9a0ae2bf04e41bfeb4a"
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
