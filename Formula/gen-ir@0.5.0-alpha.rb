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
