class MoodleDocker < Formula
    desc "Moodle Docker"
    homepage "https://www.ldesignmedia.nl"
    url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "f5127e94cb2974fc968133f45f7fd24c07431309830c605a76119dd448bab540"
    license ""

    depends_on "bash"
    depends_on "awk"
    depends_on "git"
    depends_on "unzip"
    depends_on "libunistring"

    def install
      bin.install "moodle-docker"
      bin.install Dir["scripts"]
      prefix.install "README.md"
    end
end
