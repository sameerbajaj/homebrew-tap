class AnkiwebCli < Formula
  desc "Terminal-native AnkiWeb CLI and MCP server"
  homepage "https://sameerbajaj.com"
  url "https://github.com/sameerbajaj/ankiweb-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "f7810cfb49249ab0ba09dc96ee9dd946bfe22631545cd9e282c083af4d3d0fdc"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/ankiweb"
    system "go", "build", *std_go_args(output: bin/"ankiweb-mcp", ldflags: "-s -w"), "./cmd/ankiweb-mcp"
  end

  test do
    assert_match "ankiweb", shell_output("#{bin}/ankiweb --help")
  end
end
