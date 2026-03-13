class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.47.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.47.0_macosx_arm64.tar.gz"
      sha256 "d01bb4d1cc18f7a1f71c19a9c18e96dbcee7295d7773c52e37de9e6415179370"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.47.0_macosx_x86.tar.gz"
      sha256 "2db882bb358648ef22fde044a5b4fcc7b94649453e51fbc03a0f91ef7954c5a2"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.47.0_linux_x86.tar.gz"
    sha256 "709cb34f549823f84fd8f1bfff1a73fb03bb01966296269f2f1be353c8f8c3eb"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
