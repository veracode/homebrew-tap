class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.49.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.49.0_macosx_arm64.tar.gz"
      sha256 "ff74f829841fe6db6672dd3ee4dfee955df934c9d3bd542343e16052f52642bb"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.49.0_macosx_x86.tar.gz"
      sha256 "c1b00431fd7091c1a21b6b1168c1e36ea23fa70c33bdb08686f57e2e405c5880"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.49.0_linux_x86.tar.gz"
    sha256 "39d5d632f332b9fef8a0505d65a1bec21f54b486d76a1d73c83de31a703f33ee"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
