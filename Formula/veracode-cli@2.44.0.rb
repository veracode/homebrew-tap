class VeracodeCliAT2440 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.44.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.44.0_macosx_arm64.tar.gz"
      sha256 "4c494a91259337d8c207326559a36257d10f69cae259f56047eda5a1e92574d3"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.44.0_macosx_x86.tar.gz"
      sha256 "0fea3348b915f8795ed9675bf1d0b7f1ce6312ee022d46998268561f4e016f95"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.44.0_linux_x86.tar.gz"
    sha256 "38b615b5087f06ae3ffec5d20434d36a274859cf04b528bc8f306713b77f5e4e"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
