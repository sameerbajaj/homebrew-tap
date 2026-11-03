cask "agy-usage-stats" do
  version "1.1.90"
  sha256 "56b049802a6f0e7a97225ea3f61d6fce2ae928d0220a93158db2e7fc6679c84c"

  url "https://github.com/sameerbajaj/agy-usage-stats/releases/download/latest/agy-usage-stats-latest.dmg"
  name "agy-usage-stats"
  desc "Menu bar app monitoring Google Antigravity quota and cost metrics"
  homepage "https://sameerbajaj.com/tools/agy-usage-stats/"

  auto_updates true
  depends_on macos: :sonoma

  app "agy-usage-stats.app"

  zap trash: [
    "~/Library/Application Support/agy-usage-stats",
    "~/Library/Caches/luminoslabs.agy-usage-stats",
    "~/Library/Preferences/luminoslabs.agy-usage-stats.plist",
  ]
end
