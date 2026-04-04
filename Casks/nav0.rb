cask "nav0" do
  version "0.1.2"

  on_arm do
    sha256 "6e1e757e8e5a36a6fc1d275a8b1f9d46d8059ed6eb3f752f797543624ac126d4"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.1.2.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "3b0f9a2a92dea29e8478fd5fee294dbcbf2d34a5b747c33ab89e283ed356d411"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.1.2.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  name "Nav0"
  desc "Minimal, privacy-focused web browser"
  homepage "https://nav0.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nav0.app"
end
