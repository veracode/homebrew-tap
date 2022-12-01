class GenIr < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/NinjaLikesCheez/gen-ir"
  url "https://github.com/NinjaLikesCheez/gen-ir.git",
    tag:      "0.1.4",
    revision: "8c02b4c74cecd14f0470e7c003f9e5e32b1a67f5"
  version_scheme 1
  head "https://github.com/NinjaLikesCheez/gen-ir.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/NinjaLikesCheez/homebrew-tap/releases/download/gen-ir-0.1.4"
    sha256 cellar: :any_skip_relocation, monterey: "0a9f35dc04c747a4d758fcf3e3b5ce9e6cdb65ed5e120c2eea892b95fbeac739"
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
