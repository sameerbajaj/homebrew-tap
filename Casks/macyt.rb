cask "macyt" do
  version "1.0.28"
  sha256 "92e4ed864cd320fc491817bb058a5c2fef19e71745bf8c9279fb9362a297e254"

  url "https://github.com/sameerbajaj/MacYT/releases/download/latest/MacYT-latest.dmg"
  name "MacYT"
  desc "Native macOS menu bar YouTube video and audio downloader"
  homepage "https://sameerbajaj.com/tools/macyt"

  auto_updates true
  depends_on macos: :sonoma

  app "MacYT.app"

  zap trash: [
    "~/Library/Application Support/MacYT",
    "~/Library/Caches/com.sameerbajaj.MacYT",
    "~/Library/Preferences/com.sameerbajaj.MacYT.plist",
  ]
end
