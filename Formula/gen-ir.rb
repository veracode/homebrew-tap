class GenIr < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/veracode/gen-ir"
  url "https://github.com/veracode/gen-ir.git",
    tag:      "0.3.10",
    revision: "b3451294a8770669f75bdcfa056e074d0b78e0af"
  version_scheme 1
  head "https://github.com/veracode/gen-ir.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/gen-ir-0.3.10"
    sha256 cellar: :any_skip_relocation, monterey: "c25a5ce81a0b190c9468f76c711b787dcee01b9f226749bc774adbb7b7cee5f1"
  end

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
