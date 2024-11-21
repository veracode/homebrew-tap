class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.36.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.36.0_macosx_arm64.tar.gz"
      sha256 "d4c821c1a1d6eaa09ff78fc80c9108062de29cead5ff31cd22bb3a980718ebc4"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.36.0_macosx_x86.tar.gz"
      sha256 "2f72365ddb1956d6a62d404c8a065605304e666d2831fc31567d59bade375740"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.36.0_linux_x86.tar.gz"
    sha256 "28c17caa672722fec04a27d2123b4c51702a1b74619a7e8f4102c6605ddd2cc9"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
