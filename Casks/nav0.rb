cask "nav0" do
  version "0.2.3"

  on_arm do
    sha256 "22479c922aeb18049b00ad63e7b432a53d0630dad683c5bd59a01da9164f5c97"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.3.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "35e86100876c5a17bb4629fd7096a7f49bc937fc367809d1a50dc09f5694022e"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.3.zip",
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
