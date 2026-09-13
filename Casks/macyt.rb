cask "macyt" do
  version "1.0.27"
  sha256 "5eb227c7f8082007810d6e63b8606610a1acdf9b0c10c593a78c7bf2f8c99b8c"

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
