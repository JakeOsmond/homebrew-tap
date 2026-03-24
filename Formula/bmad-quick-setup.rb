class BmadQuickSetup < Formula
  desc "One command to create a BMAD project, install it, and open Claude"
  homepage "https://github.com/JakeOsmond/bmad-quick-setup"
  url "https://github.com/JakeOsmond/bmad-quick-setup/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e70050b77e92a3de3919afb3a5d5cc37aa7386e3b0611d66c1458d3973500a13"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/bmad"
  end

  test do
    assert_match "bmad-quick-setup", shell_output("#{bin}/bmad --version")
  end
end
