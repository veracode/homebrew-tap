class VeracodeCliAT2420 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.42.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.42.0_macosx_arm64.tar.gz"
      sha256 "be943b46eb1fa5dbb34bf3729374ac6ba5e792cdd418d34f0714f2b36233cad3"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.42.0_macosx_x86.tar.gz"
      sha256 "e156689e61f0fd0d39e221cdde93e6b2e3e46084d20fb9e80ca4681629b4d696"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.42.0_linux_x86.tar.gz"
    sha256 "79d02702a81b34ef4d711f41a0ffe976f0a9a2034223b2dc185f2efe1141e2f0"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
