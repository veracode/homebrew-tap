class VeracodeCli < Formula
  desc "This is the homebrew formula for Veracode CLI"
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "d3899199dd2f1376621bea4f2f29cddb6a2448a0b374cebdcb7f11d6f2eea4d9"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "ba3b01010fa509725f65bd0c4226f325cb9e345c872cdc1c4eae882c84aabedd"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "7eb96802d03e20d01760fac823ffa1422c2d5760bbe6063f7503564920c4a1fe"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
