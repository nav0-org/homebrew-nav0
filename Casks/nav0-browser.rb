cask "nav0-browser" do
  version "0.0.4"

  on_arm do
    sha256 "3cfc47eb8b58517ee6b1bc7023b6e5bb7cecc40a800a1eb6c4c3cf29ef86f4fe"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.4.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "4ca770f8c59372e04713d5de14c932a502566b8da528ab8f877433a90900eed8"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.4.zip",
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
