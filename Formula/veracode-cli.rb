class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.43.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.43.0_macosx_arm64.tar.gz"
      sha256 "3c0356d6b58a7ce1be0108b7d69f6289be5fd946e171df87bfd42e1d00ba32e7"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.43.0_macosx_x86.tar.gz"
      sha256 "8c477b34f66f8bad04defa72170a8185ee8e2bd80233d7db1b13d9027f951a97"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.43.0_linux_x86.tar.gz"
    sha256 "b8cb66eec620e27a0f1bfee0bf5de4a507756780620e6fc288d606472d96ce3b"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
