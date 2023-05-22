class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://ldesignmedia.nl"
  url "https://github.com/LdesignMedia/homebrew-moodle-docker.git", :branch => "main", :using => :git
  version "1.0.9"

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def install
    ohai "Installing Moodle Docker"
    #ohai `bash ./install_moodle_docker.sh`

    #system "bash", "./install_moodle_docker.sh"
    system "git", "clone", "git@github.com:LdesignMedia/moodle-docker-brew.git", "#{bin}/moodle-docker-brew"
    system "git", "clone", "git@github.com:LdesignMedia/moodle-docker-brew.git"

    bin.install "#{bin}/moodle-docker-brew/moodle-docker" => "moodle-docker"

    # Create a dummy file to satisfy Homebrew's requirement of installing something
    (prefix/"dummy").write ""

    ohai "Complete installation"
  end
end
