class GenIr < Formula
  desc "Generate LLVM IR from an Xcode Build Log"
  homepage "https://github.com/NinjaLikesCheez/gen-ir"
  url "https://github.com/NinjaLikesCheez/gen-ir.git",
    tag:      "0.1.2",
    revision: "9eea227317f687cfc4ac9b8df6a619e8b56b7a1a"
  version_scheme 1
  head "https://github.com/NinjaLikesCheez/gen-ir.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/NinjaLikesCheez/homebrew-tap/releases/download/gen-ir-0.1.2"
    sha256 cellar: :any_skip_relocation, monterey: "321230fe26e41580453934ef3752f4696f8028e3df92e130a30f10bde8ba198e"
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
