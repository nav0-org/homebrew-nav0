cask "nav0-browser" do
  version "0.0.5-alpha"

  on_arm do
    sha256 "aa8f31f555b93864329e047fb303fb32f23db28575f55116ebcb6ed0ac41f254"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.5-alpha.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "82c9351693310d38e04359156fb3eec8b1f9aac1e76c889a3edff81e12beb813"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.5-alpha.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  name "nav0"
  desc "Minimal, privacy-focused web browser"
  homepage "https://nav0.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "nav0-browser.app"
end
