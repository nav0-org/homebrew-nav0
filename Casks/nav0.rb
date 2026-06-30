cask "nav0" do
  version "0.4.0"

  on_arm do
    sha256 "594f6f9f05cf9b26f8c1d22c1ecb0e907c75c5f328163750a58a5ef6606b457e"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.4.0.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "407fe4d5858b1b4dd654f5d921acd997245a813bd4c13dae556218e535b3e779"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.4.0.zip",
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
