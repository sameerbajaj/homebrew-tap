cask "macyt" do
  version "1.0.29"
  sha256 "99594eb49d40d2e75cc1d21d062bab8a3c7c6823716dcf230fc5b50ed736ef6a"

  url "https://github.com/sameerbajaj/MacYT/releases/download/latest/MacYT-latest.dmg"
  name "MacYT"
  desc "Menu bar YouTube video and audio downloader"
  homepage "https://sameerbajaj.com/tools/macyt/"

  auto_updates true
  depends_on macos: :sonoma

  app "MacYT.app"

  zap trash: [
    "~/Library/Application Support/MacYT",
    "~/Library/Caches/com.sameerbajaj.MacYT",
    "~/Library/Preferences/com.sameerbajaj.MacYT.plist",
  ]
end
