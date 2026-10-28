class GenIr < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/veracode/gen-ir"
  url "https://github.com/veracode/gen-ir.git",
    tag:      "1.0.4",
    revision: "a29d65fbb4ed883fadce352d50f600a089da7988"
  version_scheme 1
  head "https://github.com/veracode/gen-ir.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/veracode/homebrew-tap/releases/download/gen-ir-1.0.4"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "086ae8366105d2d148b8daa6aabe59cd540946cf116ecac58e4fac8d0bf241c9"
  end

  depends_on xcode: ["26", :build]
  depends_on macos: :tahoe

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install "./.build/release/gen-ir"
  end

  test do
    system "#{bin}/gen-ir", "--help"
  end
end
