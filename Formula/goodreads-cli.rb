class GoodreadsCli < Formula
  desc "Goodreads CLI for book search, metadata enrichment, and authenticated shelf write-back"
  homepage "https://sameerbajaj.com"
  url "https://github.com/sameerbajaj/goodreads-cli/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "b765041a40ad40ab239142100a0da4ae83a45a02d08c0e6ef53fdd8d95ee27c2"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/goodreads"
    system "go", "build", *std_go_args(output: bin/"goodreads-mcp", ldflags: "-s -w"), "./cmd/goodreads-mcp"
  end

  test do
    assert_match "goodreads", shell_output("#{bin}/goodreads --help")
  end
end
