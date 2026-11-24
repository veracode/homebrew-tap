class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.57.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.57.0_macosx_arm64.tar.gz"
      sha256 "c2dc0cf1d5cbf7cf7b5d969c6059f9b7c1f90722ea169295b3f6d672d9472c3d"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.57.0_macosx_x86.tar.gz"
      sha256 "02f22f47b2f1a3670129c3813c79ffda30a4fe02671a00322c4dc97393b2c1dd"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.57.0_linux_x86.tar.gz"
    sha256 "02815edc16e240d1c3a3b36810f693c23795c5554cbf0f1f0575c0e1884565ba"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
