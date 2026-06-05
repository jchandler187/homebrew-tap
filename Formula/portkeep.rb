class Portkeep < Formula
  desc "Port management + security for self-hosted infrastructure"
  homepage "https://github.com/jchandler187/portkeep"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      sha256 "e66fe8db237a53a34a9fb3885a7554d7459ffe8d2bf9307ca0c70cdc33623a46"
      url "https://github.com/jchandler187/portkeep/releases/download/v1.0.0/portkeep_1.0.0_darwin_arm64.tar.gz"
    else
      sha256 "a62130b2d8f48df9d6fd3bfa3a745d7736a6db147f941d278f7ee9dca8bed0b8"
      url "https://github.com/jchandler187/portkeep/releases/download/v1.0.0/portkeep_1.0.0_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      sha256 "b9dd4bdaab3de0a8de034c85e04171975d0065385857e342e138eb51d8ae0a57"
      url "https://github.com/jchandler187/portkeep/releases/download/v1.0.0/portkeep_1.0.0_linux_arm64.tar.gz"
    else
      sha256 "d27f3dc399bea994274fec5e6f4eb814545f984dee10ffb8e8e0db796f608383"
      url "https://github.com/jchandler187/portkeep/releases/download/v1.0.0/portkeep_1.0.0_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "portkeep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkeep version")
  end
end