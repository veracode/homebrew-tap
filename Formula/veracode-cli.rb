class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.38.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.38.0_macosx_arm64.tar.gz"
      sha256 "b49a468c6dbd10ae150a07a1680427c974dd38d50e853b2bdb9e0710643552f4"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.38.0_macosx_x86.tar.gz"
      sha256 "d58cbd9c8b7d62a1d56d9839e7c9704230b33068fdd8620bbada7b4ae8b77dbd"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.38.0_linux_x86.tar.gz"
    sha256 "4bc3a7c333fd8d1cff67003294cf1e63f6ac7d2b0f60c122e2ac304a78ae77de"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
