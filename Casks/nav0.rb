cask "nav0" do
  version "0.2.1"

  on_arm do
    sha256 "43fd81c5e6c5272e62736f02a79e32be3c536a41c603a3632b6beafd28c03f6b"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.1.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "7329b5d772005e55a83976efc9819acd546090a973916d5df1013d6a7b05ebf9"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.1.zip",
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
