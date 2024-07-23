class GenIrAT050Beta < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/veracode/gen-ir"
  url "https://github.com/veracode/gen-ir.git",
    tag:      "0.5.0-beta",
    revision: "e50e90b5080ba3b50b742891517ba130f44f217f"
  version_scheme 1
  head "https://github.com/veracode/gen-ir.git", branch: "develop"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/gen-ir@0.5.0-beta-0.5.0-beta"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "43cf147d0dc085faf2666e2424054cc212fa11876bf137dcea80013314edd2d5"
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
