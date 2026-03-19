cask "nav0-browser" do
  version "0.0.9"

  on_arm do
    sha256 "e79b65c5b82556e2da222e4b4c0ca383e234ad2c208b66a925106dc5f3fcc9b4"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.9.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "028a9c0afda7827cbdcf301b4a7d6a04e82deb03b50556a93a127dcf134d2c80"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.9.zip",
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
