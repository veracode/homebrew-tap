class GenIr < Formula
	desc "Generate LLVM IR from an Xcode Build Log"
	homepage "https://github.com/NinjaLikesCheez/gen-ir"
	url "https://github.com/NinjaLikesCheez/gen-ir.git",
		tag: "v0.1",
		revision: "4cc12670b261640fd3b0dfcee11756ada221ddd5"
	version_scheme 1
	head "https://github.com/NinjaLikesCheez/gen-ir.git", branch: "main"

	livecheck do
		url :stable
		strategy :github_latest
	end

	depends_on macos: :monterey
	depends_on xcode: ["13.0", :build]

	uses_from_macos "swift"

	bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_monterey: "0d1f47a006c055baa4133c3e2ab4b2c6307fc20561cb2bd2f3294ca4fcf0931e"
  end

	def install
		system "swift", "build", "-c", "release", "--disable-sandbox"
		bin.install "./.build/release/gen-ir"
	end

	test do
		system "#{bin}/gen-ir", "--help"
	end
end
