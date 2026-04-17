cask "nav0" do
  version "0.2.2"

  on_arm do
    sha256 "b05d7870199fe0ec094315245593b183931a899c0619b1712030f702354bccfc"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.2.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "6bd772a7ff9b70186ae79c1944c8c264b6300652e913223c1c3b5e9d4b876f00"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.2.zip",
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
