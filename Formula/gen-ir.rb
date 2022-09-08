class GenIr < Formula
	desc "Generate LLVM IR from an Xcode Build Log"
	homepage "https://github.com/NinjaLikesCheez/gen-ir"
	url "https://github.com/NinjaLikesCheez/gen-ir.git",
		tag: "v0.1",
		revision: "42edd726e18bef53f37beac7760a2c0673ac699f"
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
		root_url "https://github.com/ninjaLikesCheez/homebrew-tap/raw/main/Bottles"
		sha256 cellar: :any_skip_relocation, arm64_monterey: "10904e18cc5b8dbad441545c1ad72ad7cf8ea8cd784893d54d37d9875fbd293e"
  end

	def install
		system "swift", "build", "-c", "release", "--disable-sandbox"
		bin.install "./.build/release/gen-ir"
	end

	test do
		system "#{bin}/gen-ir", "--help"
	end
end
