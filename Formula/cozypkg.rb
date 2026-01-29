class Cozypkg < Formula
  desc "CLI for managing Cozystack packages"
  homepage "https://github.com/cozystack/cozystack"
  url "https://github.com/cozystack/cozystack/archive/refs/tags/v1.0.0-alpha.2.tar.gz"
  sha256 "4c3422c67cde0670a08a863fe06c4725764720522469c1ee12aad7ce04b9e177"
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
