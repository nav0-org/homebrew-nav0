cask "nav0" do
  version "0.2.6"

  on_arm do
    sha256 "e8597e3c3e77216ac1f10ecad5d75d99ccfa63a03da910f20d2b72df33288509"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.6.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "153a8c38cc379c9204348f591fec6063dc653a2e218b23a3991d9fd336b953c6"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.6.zip",
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
