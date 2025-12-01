class GenIrAT054 < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/veracode/gen-ir"
  url "https://github.com/veracode/gen-ir.git",
    tag:      "0.5.4",
    revision: "0bfd3f76d258886c264ca9a6ae2530a47a4726ac"
  version_scheme 1
  head "https://github.com/veracode/gen-ir.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/gen-ir@0.5.4-0.5.4"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7421ecf00871abddbc38ea59939b4faaaa94a6b87e854c0798e27c7c4dfe8207"
  end

  keg_only :versioned_formula

  depends_on xcode: ["13.0", :build]
  depends_on macos: :monterey

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install "./.build/release/gen-ir"
  end

  test do
    system "#{bin}/gen-ir", "--help"
  end
end
