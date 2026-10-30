cask "codex-accounts" do
  version "1.0.90"
  sha256 "3c923c73988bba8f32e474a328b01525b739da93545e8439a393241f815a288c"

  url "https://github.com/sameerbajaj/CodexAccounts/releases/download/latest/CodexAccounts-latest.dmg"
  name "Codex Accounts"
  desc "Native macOS menu bar app tracking OpenAI Codex CLI usage across multiple accounts"
  homepage "https://sameerbajaj.com/tools/codex-accounts"

  auto_updates true
  depends_on macos: :sonoma

  app "CodexAccounts.app"

  zap trash: [
    "~/Library/Application Support/CodexAccounts",
    "~/Library/Caches/com.sameerbajaj.CodexAccounts",
    "~/Library/Preferences/com.sameerbajaj.CodexAccounts.plist",
  ]
end
