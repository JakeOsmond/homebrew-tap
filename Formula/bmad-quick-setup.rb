class BmadQuickSetup < Formula
  desc "One command to create a BMAD project, install it, and open Claude"
  homepage "https://github.com/JakeOsmond/bmad-quick-setup"
  url "https://github.com/JakeOsmond/bmad-quick-setup/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "6b2c8f8f6827b82d45b54ed537cd1d3698b3f107d3326990ca082130cadb1b67"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/bmad"
  end

  test do
    assert_match "bmad-quick-setup", shell_output("#{bin}/bmad --version")
  end
end
