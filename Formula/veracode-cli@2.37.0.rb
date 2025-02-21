class VeracodeCliAT2370 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.37.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.37.0_macosx_arm64.tar.gz"
      sha256 "c0ee8ceb476528dab081917d4b1b12d5f208b7288ca842b250dd2f65a6168ee5"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.37.0_macosx_x86.tar.gz"
      sha256 "4e730ae521b4c3dd64e21578bf94703da036628908ab9b26b297238063e6d7bf"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.37.0_linux_x86.tar.gz"
    sha256 "db3b6902c481a1f8e9ffcae5e515307fb3b0fac538f84bcbca23d6086c71e8f4"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
