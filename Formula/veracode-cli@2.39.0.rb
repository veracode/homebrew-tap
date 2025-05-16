class VeracodeCliAT2390 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.39.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.39.0_macosx_arm64.tar.gz"
      sha256 "3d58596c1464396ffaf70834753d6d56f9b89cedf38605a801bb85f9ec94784c"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.39.0_macosx_x86.tar.gz"
      sha256 "e409ddd21b24bd3b69cdc6e6ea745815384f1a14844f4dcf16d8579093f789f5"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.39.0_linux_x86.tar.gz"
    sha256 "21664d3c2fe559b09fd02e27dbd320e09196cfca34ddf2f07577bc8132f6d740"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
