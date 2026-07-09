cask "nav0" do
  version "0.4.1"

  on_arm do
    sha256 "dd9ba617d354636970612050815bc5c778f1225769a3829492e08b0134540872"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.4.1.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "c9092b3cd4fb94bc064379d469c39e2e7427cd1f5d73983527d0958571ebbfad"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.4.1.zip",
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
