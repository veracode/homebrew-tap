class VeracodeCli < Formula
  desc "Command-line test tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.31.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.31.0_macosx_arm64.tar.gz"
      sha256 "f8fdec76b9c2a90d91dd5d38a4f8a3c5ded9154a4b5ec3343ff7036b0da2b61e"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.31.0_macosx_x86.tar.gz"
      sha256 "5825d189e0a18feb80c9e464fccd24e28fc48862bfd7e1914a30f1c5e21274b4"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.31.0_linux_x86.tar.gz"
    sha256 "0ff2b5f90e56c8b383536e9b6aa3015e256b8bb47a7d04b2b4d4a2ecbbbcedc5"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
