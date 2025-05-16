class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.40.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.40.0_macosx_arm64.tar.gz"
      sha256 "496ecc845cc11f3ed846b3d8c0f7445d5f311c2361228e527edcb9df5bffd1e1"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.40.0_macosx_x86.tar.gz"
      sha256 "6a61215d7a128fa8c76549ff9a3c6efcf206c0a5f38f4b6cacd96cfa71828be1"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.40.0_linux_x86.tar.gz"
    sha256 "194a5117a021aac72fa1e46197c12e3d664af106f001c2848a313e2043383a14"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
