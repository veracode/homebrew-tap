class VeracodeCliAT2340 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.34.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.34.0_macosx_arm64.tar.gz"
      sha256 "14d914dad805dd10a4e41080c377173b1f8c3caa9133bc67d2c30dcc4ba0a68b"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.34.0_macosx_x86.tar.gz"
      sha256 "a0cfa12f3c5feee20b5ccf41070a3155b5f9e8a7670ffe60cc7940901bb9afbe"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.34.0_linux_x86.tar.gz"
    sha256 "28e7d313e9b9820af85e817ea8a4469650f23ac735aa60b58c64094c55a3db73"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
