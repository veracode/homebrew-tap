class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.32.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.32.0_macosx_arm64.tar.gz"
      sha256 "8b30dac038b0013ef7e61897027d77dbaed89724655b463e0e3f7dda224e16a1"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.32.0_macosx_x86.tar.gz"
      sha256 "916c914c0f2863ad11eeed1b5879246e040790f48e433abf45ff8752d7b1978a"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.32.0_linux_x86.tar.gz"
    sha256 "3474576376ba4ef422656d4c23a634a1b30f5e596fca6e6fe6683811b468c934"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
