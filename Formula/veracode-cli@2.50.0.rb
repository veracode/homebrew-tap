class VeracodeCliAT2500 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.50.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.50.0_macosx_arm64.tar.gz"
      sha256 "62b6a48e658be2bcabc16971a03aef3ff93a253714d1c561169c68b0125b44ed"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.50.0_macosx_x86.tar.gz"
      sha256 "6c9269386e669756406776178bb59f17f17bed50958ba1373be37633aad02f9f"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.50.0_linux_x86.tar.gz"
    sha256 "fdd1e63f084dfdfd9d61b87315e48c7954db27c7d7de8aca4121d90cdc6522fe"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
