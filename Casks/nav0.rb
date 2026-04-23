cask "nav0" do
  version "0.2.4"

  on_arm do
    sha256 "49f214567cf1bcfd7acc1c4154bda2304f8005f48727aeea452f2540ea50b3cc"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.4.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "df65b3b34e46c384bcf42c880116ea8ce25acf9635e2a4a8342d0c5d2449c020"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.4.zip",
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
