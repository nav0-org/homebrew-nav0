cask "nav0" do
  version "0.3.2"

  on_arm do
    sha256 "174df6ff70552fc57442fae65190496d746745e6fe71f70802cd028081f16320"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.3.2.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "17480e48b9a720ab273eed715b028da4e02374f1bd7d0c5d78d8bbaf2a777091"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.3.2.zip",
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
