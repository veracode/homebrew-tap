class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.52.2"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.2_macosx_arm64.tar.gz"
      sha256 "0f9ffcc5a20db4a05651fc098e8ad1ebf3483cb8c9f85c4b8ff7417bfcfb6245"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.2_macosx_x86.tar.gz"
      sha256 "f706c0ab9fb20f79f2cb99effb48842ac1f0a891949c2151463d70a41c92ab46"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.2_linux_x86.tar.gz"
    sha256 "bfe2b6f57ca08b80a107f98b36084d63295c700bb3266566a70ad1e854aee019"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
