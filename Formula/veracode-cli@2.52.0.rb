class VeracodeCliAT2520 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.52.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.0_macosx_arm64.tar.gz"
      sha256 "b3ce2a532652ad70c13a4b550f8f15dad7e58ced8e9ae4a6c3d1d0d4aba7d69d"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.0_macosx_x86.tar.gz"
      sha256 "3e4deadf116e31802632415651a85eadbf17fdf35271b9956347f8b74f3f337d"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.52.0_linux_x86.tar.gz"
    sha256 "97b85fa20f5ec98c48c4dbd2ac234b538e1acb7bbcd06d0b187dcc356d25f870"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
