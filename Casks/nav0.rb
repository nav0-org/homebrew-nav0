cask "nav0" do
  version "0.2.9"

  on_arm do
    sha256 "c40e8dd6d411a549f4eb3f2b3d4cf7f187a9d9086cafb286ead2ec7f9c90bd3a"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.9.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "57d36c25bf55dfe7380298c645ea24b04ef45a90a89f509e6d0b05f653b7b9be"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.9.zip",
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
