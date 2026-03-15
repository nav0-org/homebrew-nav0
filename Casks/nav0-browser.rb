cask "nav0-browser" do
  version "0.0.8"

  on_arm do
    sha256 "683bb0da1f17410e26cbc53fea174921210e72f99927c189935d45337c21a9cb"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.8.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "eeb31dae2846ecf9d550673b81967ac5be43ac3ae2070953f10de8cce0e2b125"
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
