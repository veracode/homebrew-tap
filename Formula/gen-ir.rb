class GenIr < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/veracode/gen-ir"
  url "https://github.com/veracode/gen-ir.git",
    tag:      "0.2.0",
    revision: "32d4be42e52a1779c6dd2a2573042c2caf34ee08"
  version_scheme 1
  head "https://github.com/veracode/gen-ir.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/gen-ir-0.2.0"
    sha256 cellar: :any_skip_relocation, monterey: "7eee49ad3f115829c0b48768e6c1657362bf8b868eda801063829a318c016e7f"
  end

  depends_on xcode: ["13.0", :build]
  depends_on macos: :monterey

  uses_from_macos "swift"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install "./.build/release/gen-ir"
  end

  test do
    system "#{bin}/gen-ir", "--help"
  end
end
