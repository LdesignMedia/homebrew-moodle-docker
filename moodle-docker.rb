class MoodleDocker < Formula
    desc "Moodle Docker"
    homepage "https://www.ldesignmedia.nl"
    url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.4.tar.gz"
    sha256 "dde8d011ae88a9d70d5121afda77d4c0649a4f47128f75fec18ecc7c0f60f1b8"
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
