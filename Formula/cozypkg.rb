class Cozypkg < Formula
  desc "CLI for managing Cozystack packages"
  homepage "https://github.com/cozystack/cozystack"
  url "https://github.com/cozystack/cozystack/archive/refs/tags/v1.0.0-beta.2.tar.gz"
  sha256 "700670c57b2c1c9d34f7fa80003e544f831a0503fc6e41e6b77e51a55af54c3e"
  license "Apache-2.0"
  head "https://github.com/cozystack/cozystack.git", branch: "main"

  depends_on "go" => :build

  def install
    cd "cmd/cozypkg" do
      system "go", "build", *std_go_args(ldflags: "-s -w")
    end
  end

  test do
    assert_match "A CLI for managing Cozystack packages", shell_output("#{bin}/cozypkg --help")
  end
end
