class Sdd < Formula
  desc "CLI for Story Driven Development"
  homepage "https://github.com/applica-software-guru/sdd"
  url "https://registry.npmjs.org/@applica-software-guru/sdd/-/sdd-1.0.3.tgz"
  sha256 "a4735c3a5a9258a6e4d73f157b0d13914b3745c967288a594e3a4a5fcf3a11fc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdd --version")
  end
end
