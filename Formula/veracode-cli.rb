class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.48.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.48.0_macosx_arm64.tar.gz"
      sha256 "3f2ca8b39e1c6dbdb34b2520a886f8649e999d045e72d50a5babe54127362787"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.48.0_macosx_x86.tar.gz"
      sha256 "a43c0569900d8524b537f3030734cd817e158e9839fc58155b6b3c3631bb36dd"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.48.0_linux_x86.tar.gz"
    sha256 "3f65dfe296ca06d9cf38f9ddbb19eaac943ed9714eb05127e30aff4fd86be32d"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
