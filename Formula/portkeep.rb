class Portkeep < Formula
  desc "Port management + security for self-hosted infrastructure"
  homepage "https://github.com/jchandler187/portkeep"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      sha256 "ce377ba6c9f8029868cde7868debff51292be307fe0b371d2480aba606bd746a"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.1/portkeep_0.1.1_darwin_arm64.tar.gz"
    else
      sha256 "5b44f126e20cc1c1c1428a8c7896376898ef54751c29988d29e05e5d7013ac17"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.1/portkeep_0.1.1_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      sha256 "5740db2a540381020a6b06c665ffb84f7bde590d3ec6952df757aff953a9d84e"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.1/portkeep_0.1.1_linux_arm64.tar.gz"
    else
      sha256 "184a756b5d82960b919eb7992fcec270959a1dcfd8f8f1d0c5ae6d7f6fb3a9d4"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.1/portkeep_0.1.1_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "portkeep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkeep version")
  end
end