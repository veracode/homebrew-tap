class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.51.1"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.1_macosx_arm64.tar.gz"
      sha256 "b46ece69a7b31bd6e08af875d736ae75f8ce21f8ee2a07b5db23c6a7dffc3916"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.1_macosx_x86.tar.gz"
      sha256 "67615a62463cc219dc1156a934ef1f1d6d3e529b0604d9d0e387d883712886fa"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.1_linux_x86.tar.gz"
    sha256 "f8edff050380a19b9a78ee022a64351ff15e81913ac0d8b72f404d1015bad6ae"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
