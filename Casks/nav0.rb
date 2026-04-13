cask "nav0" do
  version "0.2.0"

  on_arm do
    sha256 "34a23116565ab8bfa95b8f1335d3fb1b6a084da0e59ac07b495d9188be607d29"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.0.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "4d1fcd9573ba8e1478439310236ebb25143dd7758f4d485238b312c12f8beb08"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.0.zip",
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
