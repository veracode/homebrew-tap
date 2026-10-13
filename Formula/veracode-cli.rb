class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.53.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.53.0_macosx_arm64.tar.gz"
      sha256 "8a194ce4cd047e721e27637cf6d63eadf61503b3a160ea65f973aa2a3cab9dca"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.53.0_macosx_x86.tar.gz"
      sha256 "add477701262997eedb9e314d555c38616ca6239631d250a31df6f6e1eced356"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.53.0_linux_x86.tar.gz"
    sha256 "93c3921c72316d7d79f7fdac76723cd9c592d314589f06f2a77eceb718cdb03e"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
