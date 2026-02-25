cask "nav0-browser" do
  version "0.0.3-alpha"

  on_arm do
    sha256 "a079e6db7595b0a6e1639b335c8e8d1f09d064fe750e1ebb8636ea812a1fc582"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.3-alpha.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "94f8301cd6fd29a2fd86acf58f99d516145876386a0256ab67149a7b165c7a42"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.3-alpha.zip",
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
