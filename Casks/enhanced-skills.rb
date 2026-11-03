cask "enhanced-skills" do
  version "1.0.78"
  sha256 "4164f551dc05a9fecc835216a59a5953084be3fd6d01bb0452a01ae571da1cc3"

  url "https://github.com/sameerbajaj/EnhancedSkills/releases/download/latest/EnhancedSkills-latest.dmg"
  name "EnhancedSkills"
  desc "Skill manager and validator for Claude Code and Codex"
  homepage "https://sameerbajaj.com/tools/enhanced-skills/"

  auto_updates true
  depends_on macos: :sonoma

  app "EnhancedSkills.app"

  zap trash: [
    "~/Library/Application Support/EnhancedSkills",
    "~/Library/Caches/com.sameerbajaj.EnhancedSkills",
    "~/Library/Preferences/com.sameerbajaj.EnhancedSkills.plist",
  ]
end
