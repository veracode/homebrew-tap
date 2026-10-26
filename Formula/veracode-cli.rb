class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.54.1"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.54.1_macosx_arm64.tar.gz"
      sha256 "357f65aaee43b0dc20f9c8f7fad4cf69b1272ee3f6e88b3aa9c7eb7ffc992e29"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.54.1_macosx_x86.tar.gz"
      sha256 "d11bee277febedf04a979a27ca2b23730e6346524489b9f57e136379e583c255"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.54.1_linux_x86.tar.gz"
    sha256 "bd7141ee89ca02b02ee4a5205537be5c4d190de4db56b41779aa47deceab173b"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
