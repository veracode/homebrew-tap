class ScanHealth < Formula
  desc "Gain insight into the health of a Veracode SAST scan"
  homepage "https://github.com/veracode/scan_health"
  url "https://github.com/veracode/scan_health",
    tag:      "2.46",
    revision: "2cdbe3d1a958d6d0aebf7b1f71316d737093e59e"
  license "MIT"
  version_scheme 1
  head "https://github.com/veracode/scan_health.git", branch: "main"

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/scan_health-64"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "55a7080195269b686ce7adc8a9e4cd6a4182aa463f3e3eb8c37b334f4c1d83a6"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/veracode/scan_health/releases/download/2.46/scan_health-mac-arm64"
      sha256 "a6bd925cd7b81b478f6265d1f708e74d74b95c04260edbb59c7e6229e7e02622"
    elsif Hardware::CPU.intel?
      url "https://github.com/veracode/scan_health/releases/download/2.46/scan_health-mac-amd64"
      sha256 "bfa38ee1b40fca670398fff284e2d2895191363b6276068764ab8a01402b431d"
    end
  elsif OS.linux?
    url "https://github.com/veracode/scan_health/releases/download/2.46/scan_health-linux-amd64"
    sha256 "9f994bbd2dac8b47d74d220b2aea2b0abf9a7c93ce6d2456ed8ad2923d1f4f3e"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "scan_health-mac-arm64" => "scan_health"
      elsif Hardware::CPU.intel?
        bin.install "scan_health-mac-amd64" => "scan_health"
      end
    elsif OS.linux?
      bin.install "scan_health-linux-amd64" => "scan_health"
    end
  end

  test do
    system bin/"scan_health", "--help"
  end
end
