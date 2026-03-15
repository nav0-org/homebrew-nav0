cask "nav0-browser" do
  version "0.0.8"

  on_arm do
    sha256 "c4ca594ace0f015c969632df256605de374e4f9176eda4be8f36e49a50df2ac2"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.8.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "283bfd9bb8195bceb3fd6f8748106395577283e627fbd3826a1bdd937eb1706f"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.8.zip",
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
