cask "nav0" do
  version "0.2.5"

  on_arm do
    sha256 "0e0020a360d62cc7c5ce24123a4baf06ff5091446310c8daef52a02b6686be47"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.5.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "9762f44e3493c7f3790b48924fdaa0e589c9904564ce37413319c9a5614ed0d1"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.5.zip",
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
