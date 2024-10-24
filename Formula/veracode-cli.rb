class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.35.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.35.0_macosx_arm64.tar.gz"
      sha256 "37641121f6f5043a1aa1314be18f14bf459b8adc4f3233977f25d25788b6a97f"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.35.0_macosx_x86.tar.gz"
      sha256 "de68651f6757ac96627d25f1e94b27045767206981b3ba07cea3dcb76235729b"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.35.0_linux_x86.tar.gz"
    sha256 "c13b6a6bfea5c21269e0e057fe02cb55ad5b1a30efacf0ee95b9ea7e5a0761db"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
