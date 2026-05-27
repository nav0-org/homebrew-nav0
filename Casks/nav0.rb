cask "nav0" do
  version "0.3.1"

  on_arm do
    sha256 "4ee1f1ed68abcc573bf54f3d9da98ef3d0dbb89e1967546e250fb9daf13c4e00"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.3.1.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "f43f0463e385bf3ae61f5a635c01c8cc7e8b5084a0b7dbefd8ee6df3e4a872d5"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.3.1.zip",
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
