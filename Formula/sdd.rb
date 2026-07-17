class Sdd < Formula
  desc "CLI for Story Driven Development"
  homepage "https://github.com/applica-software-guru/sdd"
  url "https://registry.npmjs.org/@applica-software-guru/sdd/-/sdd-1.9.8.tgz"
  sha256 "a1837f24c7819033d3c451c241b2027d9d3c0cc747773057b661c99e6fb6e0e6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--min-release-age=0"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdd --version")
  end
end
