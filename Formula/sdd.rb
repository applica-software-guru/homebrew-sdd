class Sdd < Formula
  desc "CLI for Story Driven Development"
  homepage "https://github.com/applica-software-guru/sdd"
  url "https://registry.npmjs.org/@applica-software-guru/sdd/-/sdd-1.3.1.tgz"
  sha256 "c5ea2f034282402b4dbd268cdade09932ba46a920ee6f2ed931ea2a9efe48fea"
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
