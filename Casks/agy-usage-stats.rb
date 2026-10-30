cask "agy-usage-stats" do
  version "1.1.88"
  sha256 "40719f8910c2297843d0e5c020614e0cdf3046c9d36092021712b1500e6bcec6"

  url "https://github.com/sameerbajaj/agy-usage-stats/releases/download/latest/agy-usage-stats-latest.dmg"
  name "agy-usage-stats"
  desc "Native macOS menu bar app monitoring Google Antigravity quota and cost metrics"
  homepage "https://sameerbajaj.com"

  auto_updates true
  depends_on macos: :sonoma

  app "agy-usage-stats.app"

  zap trash: [
    "~/Library/Application Support/agy-usage-stats",
    "~/Library/Caches/luminoslabs.agy-usage-stats",
    "~/Library/Preferences/luminoslabs.agy-usage-stats.plist",
  ]
end
