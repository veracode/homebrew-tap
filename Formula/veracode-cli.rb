class VeracodeCli < Formula
  desc "Command-line tool for testing application security with Veracode"
  homepage "https://www.veracode.com"
  version "2.33.0"
  license "MIT"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.33.0_macosx_arm64.tar.gz"
      sha256 "856515d53324f513bf9048332ab951eb2af00325bdd38fd81b53a14f65f3cf89"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.33.0_macosx_x86.tar.gz"
      sha256 "dbaf85fcca1ac310622bb397a95a35f0c9f601dfdf4fbf26932efed28974db42"
    end
  elsif OS.linux?
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.33.0_linux_x86.tar.gz"
    sha256 "e77b8b4f3272865109735d2bf7bf29ca64e4e8780dcaa7f03106e9ad4459fa1c"
  end
  def install
    bin.install "veracode"
  end
  test do
    system "#{bin}/veracode", "version"
  end
end
