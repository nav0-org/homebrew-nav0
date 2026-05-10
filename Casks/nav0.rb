cask "nav0" do
  version "0.2.7"

  on_arm do
    sha256 "5dd7e8db246c588fe3fba224d4c1b2444a661fea05835fefde2e93cac3f19ed2"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.7.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "25bd6cb1e59054f2868446b480ac062f025c03031b0df0f66bfb0168f1dd9a45"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.7.zip",
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
