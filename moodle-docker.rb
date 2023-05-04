class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://www.ldesignmedia.nl"
  url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "f4a377844cb26947050b65a2a1dee2f48e2744b133fdb5f00e6244e76dff0ea9"
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
    prefix.install Dir["moodlehq-docker"]
  end

  def post_install
    system "git", "clone", "https://github.com/moodlehq/moodle-docker.git", "#{bin}/moodlehq-docker"
    system "git", "clone", "https://github.com/moodlehq/moodle-docker.git", "#{prefix}/moodlehq-docker"
  end
end
