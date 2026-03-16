class Sdd < Formula
  desc "CLI for Story Driven Development"
  homepage "https://github.com/applica-software-guru/sdd"
  url "https://registry.npmjs.org/@applica-software-guru/sdd/-/sdd-1.3.4.tgz"
  sha256 "c4f29c4c7f004aaaeb383b2aeb27742c8af08742cdee63ef9cd3c31d498f2b05"
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
