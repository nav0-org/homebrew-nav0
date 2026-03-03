cask "nav0-browser" do
  version "0.0.6"

  on_arm do
    sha256 "d5bfb8f9134e7162a4883e7cf45700b3cd3b39d634b70bfa71f3fc0f38bf60d0"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.6.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "14344295db03ee969b5a8ff9f9cc582cd70a387cb75db06e72a6833e5f1d88ef"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.6.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  name "nav0"
  desc "Minimal, privacy-focused web browser"
  homepage "https://nav0.org"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "nav0-browser.app"
end
