class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.56.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.56.0_macosx_arm64.tar.gz"
      sha256 "01217a407b9ce9e7baa3f55f1018f5bf695f6471cc4445d674e8a2de5c4c7ed3"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.56.0_macosx_x86.tar.gz"
      sha256 "d408f9fdd4e0901e6cf581d135a78aca2aade632f6ff4108e6b4ea5fce399f90"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.56.0_linux_x86.tar.gz"
    sha256 "e09a1958733cd0e59748d85b05924a1e0e1ce667d8c9e03707166b9e5d7113c9"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
