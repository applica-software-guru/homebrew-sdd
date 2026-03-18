class Sdd < Formula
  desc "CLI for Story Driven Development"
  homepage "https://github.com/applica-software-guru/sdd"
  url "https://registry.npmjs.org/@applica-software-guru/sdd/-/sdd-1.4.1.tgz"
  sha256 "d58d223a384ab59bd232eab6a3ec943558f61bc4b1ecb390b021b1b5cf432e42"
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
