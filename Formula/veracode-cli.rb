class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.46.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.46.0_macosx_arm64.tar.gz"
      sha256 "e238bbe16f94972adfbb67df53624093539a44030095300d519760027c0f6125"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.46.0_macosx_x86.tar.gz"
      sha256 "3f5f9a0de44d339f7b1dd1fdd959950f1c252fc7019ef17ac4ca7e914614f20d"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.46.0_linux_x86.tar.gz"
    sha256 "8ff7614234b65ac17a2293a8cf82818cbccaf5468830f235ee91c9babc73ce0e"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
