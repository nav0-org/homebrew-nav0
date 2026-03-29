cask "nav0-browser" do
  version "0.1.0"

  on_arm do
    sha256 "a566461d4672f633dc03140fc2c876e11d13f84190dbc393b28174cb7dd505f8"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.1.0.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "d48a7b6e70a6798b64379f306597c1e28d8d2ee5adf754ff25f26699ba11e248"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.1.0.zip",
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
