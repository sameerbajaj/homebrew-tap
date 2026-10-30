class Elevenreader < Formula
  desc "Fast, lightweight CLI for ElevenReader library management and markdown reading"
  homepage "https://sameerbajaj.com"
  url "https://github.com/sameerbajaj/elevenreader/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b1736855eaa19bdea5f57ac31bee5ed708f1e3bda0861b1ea363efd383a064fd"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/elevenreader"
  end

  test do
    assert_match "elevenreader", shell_output("#{bin}/elevenreader --help")
  end
end
