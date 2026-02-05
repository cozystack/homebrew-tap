class CozyvaluesGen < Formula
  desc "Code generator for Go structs, CRDs, and JSON schemas from annotated YAML"
  homepage "https://github.com/cozystack/cozyvalues-gen"
  url "https://github.com/cozystack/cozyvalues-gen/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "a94c0085bad68d5fa4f8af08e3346d44f85cca7f6ac12b112ca32d52f501d112"
  license "Apache-2.0"
  head "https://github.com/cozystack/cozyvalues-gen.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cozyvalues-gen --version")
  end
end
