class VeracodeCliAT2510 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.51.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.0_macosx_arm64.tar.gz"
      sha256 "a845567d864962ffbffcc0b688ce42fd7e272d6091e8d7b1acb6e5b4a28c1585"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.0_macosx_x86.tar.gz"
      sha256 "c4e47896a6e389b578f389f86f9d8d48e4231e05aa1d13eb3ef202bfc0eeb187"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.0_linux_x86.tar.gz"
    sha256 "c1659cbe1c593a8c693704af5111f142659e47107fc84e243ef8fe9bcf791fc7"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
