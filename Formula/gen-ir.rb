class GenIrAT104 < Formula
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
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a8fb17e69ae1eb2bc6a57854b645c57d2c134e7c9b9192994a6021fa7a2b8d68"
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
