cask "nav0-browser" do
  version "0.1.1"

  on_arm do
    sha256 "7a3db0d92a3b58643edf02b62e9fdce84ef440d2f4a8d1c2322bb2d6493e0c55"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.1.1.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "c74094d0484af095f5002eeda722c9c3a033d82765426a3b31466c281e4f6918"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.1.1.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  name "Nav0"
  desc "Minimal, privacy-focused web browser"
  homepage "https://nav0.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "nav0-browser.app"
end
