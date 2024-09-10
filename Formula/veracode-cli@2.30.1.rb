class VeracodeCliAT2301 < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.30.1"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url 
"https://tools.veracode.com/veracode-cli/veracode-cli_2.30.1_macosx_arm64.tar.gz"
      sha256 
"f9dd3d15dbdc92ff3307a50d17d51ef8dbc4e5ed0713e05d530754fb80da870d"
    elsif Hardware::CPU.intel?
      url 
"https://tools.veracode.com/veracode-cli/veracode-cli_2.30.1_macosx_x86.tar.gz"
      sha256 
"b829a49d6fa3793bb29598ce85b2944f0a8395ef9de6887e7231245b282169cc"
    end
  elsif OS.linux?
    url 
"https://tools.veracode.com/veracode-cli/veracode-cli_2.30.1_linux_x86.tar.gz"
    sha256 
"81edbad3cf97c7cc0d1750872e0c33e56446b042b0b664e91ac95f94771ecb7e"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
