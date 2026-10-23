class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.54.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.54.0_macosx_arm64.tar.gz"
      sha256 "3de7a51258201707b79f2c306a01766fa373d9c70eaad76bc73ba0d05f3a7dda"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.54.0_macosx_x86.tar.gz"
      sha256 "639b6271c518fe167a91167dc682344cf6e318c166d1aeb2987b4cbb56a3ce8e"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.54.0_linux_x86.tar.gz"
    sha256 "77e33b327cde9613b2943d09dbb6a3a2a1f5cf485c71530a3f3f998834409436"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
