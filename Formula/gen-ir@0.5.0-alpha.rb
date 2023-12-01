class GenIrAT050Alpha < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/veracode/gen-ir"
  url "https://github.com/veracode/gen-ir.git",
    tag:      "0.5.0-alpha",
    revision: "cc6473e34036b791818658ec0edcb7e0b29d5fe9"
  version_scheme 1
  head "https://github.com/veracode/gen-ir.git", branch: "develop"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/gen-ir@0.5.0-alpha-0.5.0-alpha"
    sha256 cellar: :any_skip_relocation, monterey: "3edcd2b00bad4ef23a6f3eb751b412b3e032e14f3d694b0a09bee2c7b1d5d554"
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
