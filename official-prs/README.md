# Official Homebrew Submission PR Files

This directory contains ready-to-submit Cask and Formula files for upstreaming into official Homebrew repositories:
- **`Homebrew/homebrew-cask`**: macOS GUI Applications
- **`Homebrew/homebrew-core`**: CLI utilities and developer tools

All casks and formulae are configured with canonical tool homepages on `https://sameerbajaj.com/tools/<slug>/` and have passed `brew style` verification with 0 offenses.

---

## Directory Structure

```
official-prs/
├── homebrew-cask/
│   └── Casks/
│       ├── a/agy-usage-stats.rb
│       ├── c/codex-accounts.rb
│       ├── e/enhanced-skills.rb
│       └── m/macyt.rb
├── homebrew-core/
│   └── Formula/
│       ├── a/ankiweb-cli.rb
│       ├── e/elevenreader.rb
│       └── g/goodreads-cli.rb
└── README.md
```

---

## Tool Directory & Canonical Mappings

| Tool Slug | Type | Target Repo | Canonical Homepage |
| :--- | :--- | :--- | :--- |
| `agy-usage-stats` | Cask | `Homebrew/homebrew-cask` | `https://sameerbajaj.com/tools/agy-usage-stats/` |
| `codex-accounts` | Cask | `Homebrew/homebrew-cask` | `https://sameerbajaj.com/tools/codex-accounts/` |
| `enhanced-skills` | Cask | `Homebrew/homebrew-cask` | `https://sameerbajaj.com/tools/enhanced-skills/` |
| `macyt` | Cask | `Homebrew/homebrew-cask` | `https://sameerbajaj.com/tools/macyt/` |
| `ankiweb-cli` | Formula | `Homebrew/homebrew-core` | `https://sameerbajaj.com/tools/ankiweb-cli/` |
| `elevenreader` | Formula | `Homebrew/homebrew-core` | `https://sameerbajaj.com/tools/elevenreader/` |
| `goodreads-cli` | Formula | `Homebrew/homebrew-core` | `https://sameerbajaj.com/tools/goodreads-cli/` |

---

## How to Submit Upstream PRs

### 1. Homebrew Casks (`Homebrew/homebrew-cask`)

```bash
# Fork and clone Homebrew/homebrew-cask
gh repo fork Homebrew/homebrew-cask --clone
cd homebrew-cask

# For example, adding agy-usage-stats:
git checkout -b add-agy-usage-stats
mkdir -p Casks/a
cp /path/to/homebrew-tap/official-prs/homebrew-cask/Casks/a/agy-usage-stats.rb Casks/a/
brew style Casks/a/agy-usage-stats.rb
brew audit --cask --new Casks/a/agy-usage-stats.rb
git add Casks/a/agy-usage-stats.rb
git commit -m "add agy-usage-stats 1.1.90"
gh pr create --title "add agy-usage-stats 1.1.90" --body "Add agy-usage-stats: Native menu bar app monitoring Google Antigravity quota and cost metrics."
```

### 2. Homebrew Core Formulae (`Homebrew/homebrew-core`)

```bash
# Fork and clone Homebrew/homebrew-core
gh repo fork Homebrew/homebrew-core --clone
cd homebrew-core

# For example, adding ankiweb-cli:
git checkout -b add-ankiweb-cli
mkdir -p Formula/a
cp /path/to/homebrew-tap/official-prs/homebrew-core/Formula/a/ankiweb-cli.rb Formula/a/
brew style Formula/a/ankiweb-cli.rb
brew audit --formula --new Formula/a/ankiweb-cli.rb
git add Formula/a/ankiweb-cli.rb
git commit -m "ankiweb-cli 0.1.2 (new formula)"
gh pr create --title "ankiweb-cli 0.1.2 (new formula)" --body "Add ankiweb-cli: Terminal-native AnkiWeb CLI and MCP server."
```

---

## Style & Validation Status

All 7 files in this directory have been validated with Homebrew's internal linter:
```bash
brew style official-prs/homebrew-cask/Casks/*/*.rb official-prs/homebrew-core/Formula/*/*.rb
# 7 files inspected, no offenses detected
```
