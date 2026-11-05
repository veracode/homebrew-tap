class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.55.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.55.0_macosx_arm64.tar.gz"
      sha256 "17da0aa356b7ccc773180aa5681d32b71cd99b2dea8dd55fb6c2bc6e70cbcf16"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.55.0_macosx_x86.tar.gz"
      sha256 "7b8d687dc21be9bf7019afcca1a8f33c2c9b6481c5caa75d2ced074e88a28961"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.55.0_linux_x86.tar.gz"
    sha256 "44fde332acc9401f51486404dba3289cff894cf32aafda612e0a8f1cbc1b2140"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
