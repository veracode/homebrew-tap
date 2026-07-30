class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.51.2"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.2_macosx_arm64.tar.gz"
      sha256 "7b965b137ede0fb6a51723fb36f0197a2b3217fd6cd21ee71f9a0bd3abd746e5"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.2_macosx_x86.tar.gz"
      sha256 "defad471b2f1f6f1e336bd5c80f8fdd145fdc6851e2151b5716d6d5aaddfd78c"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.51.2_linux_x86.tar.gz"
    sha256 "e3ead5deed86c27118b2c8a1cf82b939b87d287f6b358c3205e3b22084127241"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
