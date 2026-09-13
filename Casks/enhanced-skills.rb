cask "enhanced-skills" do
  version "1.0.76"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/sameerbajaj/EnhancedSkills/releases/download/latest/EnhancedSkills.dmg"
  name "EnhancedSkills"
  desc "Native macOS skill manager and validator for Claude Code and Codex"
  homepage "https://sameerbajaj.com/tools/enhanced-skills"

  auto_updates true
  depends_on macos: :sonoma

  app "EnhancedSkills.app"

  zap trash: [
    "~/Library/Application Support/EnhancedSkills",
    "~/Library/Caches/com.sameerbajaj.EnhancedSkills",
    "~/Library/Preferences/com.sameerbajaj.EnhancedSkills.plist",
  ]
end
