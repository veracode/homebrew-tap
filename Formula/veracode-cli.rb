class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.52.1"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.1_macosx_arm64.tar.gz"
      sha256 "603cf5bce4db9e0eb8f8f07cf4b621a016b6739196203056bda5ce5ba6231985"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.1_macosx_x86.tar.gz"
      sha256 "48b4b37d1183d7a6639af43d2167b2df5c9a1160fb0c9c7bbffeda0da024df94"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.1_linux_x86.tar.gz"
    sha256 "295135beed397326307949380319c30e2e67a0ca92fd4eafa544ab12674eb423"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
