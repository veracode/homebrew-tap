class ScanHealth < Formula
  desc "Gain insight into the health of a Veracode SAST scan"
  homepage "https://github.com/veracode/scan_health"
  url "https://github.com/veracode/scan_health",
    tag:      "2.48",
    revision: "2d00aad56ec9d57f458ca9475a516264c080cc58"
  license "MIT"
  version_scheme 1
  head "https://github.com/veracode/scan_health.git", branch: "main"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/veracode/scan_health/releases/download/2.48/scan_health-mac-arm64"
      sha256 "841c0628baa11b7c47a585aac11ec85e23e340e8c9bf90a829e8060c5226be0d"
    elsif Hardware::CPU.intel?
      url "https://github.com/veracode/scan_health/releases/download/2.48/scan_health-mac-amd64"
      sha256 "86195f97856e3be59fbd0e69d2d5a52e0342b5935c96be8c19ff319be3571c08"
    end
  elsif OS.linux?
    url "https://github.com/veracode/scan_health/releases/download/2.48/scan_health-linux-amd64"
    sha256 "e578f160c13d201ee0116b52b6a6c0d72260fa805fdc09305e35d6839469a6a7"
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
