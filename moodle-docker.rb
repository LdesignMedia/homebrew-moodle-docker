class MoodleDocker < Formula
    desc "Moodle Docker"
    homepage "https://www.ldesignmedia.nl"
    url "https://github.com/LdesignMedia/moodle-docker-brew/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "f53b3eae361da3880c4f52825d6e77b852047f35648a5c43146852546fd6abbb"
    license ""

    depends_on "bash"
    depends_on "awk"
    depends_on "git"
    depends_on "unzip"

    def install
      bin.install 'moodle-docker'
    end
end
