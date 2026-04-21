class ScanHealth < Formula
  desc "Gain insight into the health of a Veracode SAST scan"
  homepage "https://github.com/veracode/scan_health"
  url "https://github.com/veracode/scan_health",
    tag:      "2.47",
    revision: "634e10efea2a5fac8c104f289e4a5ea160706058"
  license "MIT"
  version_scheme 1
  head "https://github.com/veracode/scan_health.git", branch: "main"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/veracode/scan_health/releases/download/2.47/scan_health-mac-arm64"
      sha256 "637de3bad50d8ebb30e32dc7b3d3be0c47a89cc509cbb2446eb3ac00af604077"
    elsif Hardware::CPU.intel?
      url "https://github.com/veracode/scan_health/releases/download/2.47/scan_health-mac-amd64"
      sha256 "7378993c1ac940605dd22ccf6374eff43ac6046e51fe1ce7f0a24c8f410889a7"
    end
  elsif OS.linux?
    url "https://github.com/veracode/scan_health/releases/download/2.47/scan_health-linux-amd64"
    sha256 "44ed87e3e1c46c6e603328255161d20d34866b0ea4705cd9ba211a53e5cfa578"
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
