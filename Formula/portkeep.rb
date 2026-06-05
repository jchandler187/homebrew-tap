class Portkeep < Formula
  desc "Port management + security for self-hosted infrastructure"
  homepage "https://github.com/jchandler187/portkeep"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      sha256 "5ea1947a92c1e4a55b52bbdf15ef93fc9830e1344a3fe2059785b868e5011b59"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.0/portkeep_0.1.0_darwin_arm64.tar.gz"
    else
      sha256 "99c1754de5cc6c401730339154115a5e01d44f9a3a4ddaa89f40a8bc4dd00d06"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.0/portkeep_0.1.0_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      sha256 "5167096c5c454b3051198f9b0aabc7b07a26f1ce3f5626f490708e47a7ba59ae"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.0/portkeep_0.1.0_linux_arm64.tar.gz"
    else
      sha256 "76d18bbc7419dedfed0b8e384f8eff2e13f9aa5ee43134979ebe2d557d127b80"
      url "https://github.com/jchandler187/portkeep/releases/download/v0.1.0/portkeep_0.1.0_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "portkeep"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portkeep version")
  end
end