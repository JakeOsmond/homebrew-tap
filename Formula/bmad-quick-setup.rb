class BmadQuickSetup < Formula
  desc "One command to create a BMAD project, install it, and open Claude or Codex"
  homepage "https://github.com/JakeOsmond/bmad-quick-setup"
  url "https://github.com/JakeOsmond/bmad-quick-setup/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "687456ef5c54445d8ef1250da0a27046359a25fc99b28d8d3f4efc9236f333c2"
  license "MIT"

  depends_on "node"

  def install
    bin.install "bin/bmad"
  end

  test do
    assert_match "bmad-quick-setup", shell_output("#{bin}/bmad --version")
  end
end
