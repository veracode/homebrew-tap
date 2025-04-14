class VeracodeCliAT2382 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.38.2"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.38.2_macosx_arm64.tar.gz"
      sha256 "c7241f25dc69e41029aae89255e8e7d3e6f0fe111db7c4304e6116b9b7aa1b7e"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.38.2_macosx_x86.tar.gz"
      sha256 "bb5ef2cf11dcf9ac2290af94291117b8cfefd1b5a7f3dbffa7b42e5558ab1724"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.38.2_linux_x86.tar.gz"
    sha256 "19b152ba4f90aa79da338b87da1b87645fc72e743fc3d06ff315638188ce2b74"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
