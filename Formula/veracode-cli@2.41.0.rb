class VeracodeCliAT2410 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.41.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.41.0_macosx_arm64.tar.gz"
      sha256 "5e127c9becbd4ef9f66b0a253384bbab5c7dcd5099c9557fae1165e75e979708"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.41.0_macosx_x86.tar.gz"
      sha256 "e56109c7c5e7ba1f93b93308c70e4378a359b18fcb6d2bb1ce6bf5812ba2eb90"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.41.0_linux_x86.tar.gz"
    sha256 "00db93689c7dc0bd2fa24d045d05f3acb91f5b6d3dc4058560846b846d57619e"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
