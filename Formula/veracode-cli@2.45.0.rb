class VeracodeCliAT2450 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.45.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.45.0_macosx_arm64.tar.gz"
      sha256 "14b378e74e034e4d1b9cacc8fd58dda0ada16a9531c56eadd2e0b01b963899a7"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.45.0_macosx_x86.tar.gz"
      sha256 "180329c7cd3834d1841d88badc3efc054e5bd48f56723f1cada21b51fc59b887"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.45.0_linux_x86.tar.gz"
    sha256 "e37df61bcef573f4b35e31dd8e96d999262067264e8b162a7fd6c9ff75bf20c4"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
