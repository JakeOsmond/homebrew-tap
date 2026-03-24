class BmadQuickSetup < Formula
  desc "One command to create a BMAD project, install it, and open Claude"
  homepage "https://github.com/JakeOsmond/bmad-quick-setup"
  url "https://github.com/JakeOsmond/bmad-quick-setup/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "3ad5b69bf0f46a691982434221d3509cb461ee06bf7741c002c2b024f0ea0c75"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/bmad"
  end

  test do
    assert_match "bmad-quick-setup", shell_output("#{bin}/bmad --version")
  end
end
