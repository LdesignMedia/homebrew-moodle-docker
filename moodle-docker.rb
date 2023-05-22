class MoodleDocker < Formula
  desc "Moodle Docker"
  homepage "https://ldesignmedia.nl"
  url "https://github.com/LdesignMedia/homebrew-moodle-docker/archive/refs/tags/v1.0.0.zip"
  sha256 "9a2867cf395a49c326c1846c6c029889f6d6714cad52af30a60059e80ac60e91"
  version "1.0.3"
  license ""

  depends_on "bash"
  depends_on "wget"
  depends_on "awk"
  depends_on "git"
  depends_on "unzip"

  def install
    # ohai "Cloning repository into home directory..."
    #system "git", "clone", "git@github.com:LdesignMedia/moodle-docker-brew.git", "~/.moodle-docker-brew"
    #system "git", "clone", "git@github.com:LdesignMedia/moodle-docker-brew.git", "#{ENV["HOME"]}/moodle-docker-brew"
    
    bin.install "install_moodle_docker.sh"
    
    #ohai "Repository successfully cloned!"
    
    # Create a dummy file to satisfy Homebrew's requirement of installing something
    (prefix/"dummy").write ""
  end
  
end
