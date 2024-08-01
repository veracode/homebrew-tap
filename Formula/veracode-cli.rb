class VeracodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.29.0_macosx_arm64.tar.gz"
      sha256 "ea898ce255db51150937ec15ed17e9a3110a14628468852efce64b05b61e8a97"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.29.0_macosx_x86.tar.gz"
      sha256 "bf6060fda0db988e77b04d3ece3b9c9e20de59b72f11dcc2c0df451cb8ed56c8"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.29.0_linux_x86.tar.gz"
      sha256 "667cfe73181875233eff3f5ef0cd1bfbf9a6d5c3229cd4e12ba3990f35a97afd"

      def install
        bin.install "veracode"
      end
    fi
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.29.0_linux_x86.tar.gz"
      sha256 "667cfe73181875233eff3f5ef0cd1bfbf9a6d5c3229cd4e12ba3990f35a97afd"

      def install
        bin.install "veracode"
      end
    fi
  end

  test do
    system "#{bin}/veracode --version"
  end
end
