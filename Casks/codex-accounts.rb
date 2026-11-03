cask "codex-accounts" do
  version "1.0.91"
  sha256 "84aeafacfae8cdddd8f6d3b4b030d1886561b6fa842bb02aeba59de39ad38514"

  url "https://github.com/sameerbajaj/CodexAccounts/releases/download/latest/CodexAccounts-latest.dmg"
  name "Codex Accounts"
  desc "Menu bar app tracking OpenAI Codex CLI usage across multiple accounts"
  homepage "https://sameerbajaj.com/tools/codex-accounts/"

  auto_updates true
  depends_on macos: :sonoma

  app "CodexAccounts.app"

  zap trash: [
    "~/Library/Application Support/CodexAccounts",
    "~/Library/Caches/com.sameerbajaj.CodexAccounts",
    "~/Library/Preferences/com.sameerbajaj.CodexAccounts.plist",
  ]
end
