class MoodleDocker < Formula
    desc "Moodle Docker"
    homepage "https://www.ldesignmedia.nl"
    url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.3.tar.gz"
    sha256 "900fd1f09331a230d261d447105803f8bc65c71ead1f53d369af46d03a0af73c"
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
end
