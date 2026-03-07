cask "nav0-browser" do
  version "0.0.7"

  on_arm do
    sha256 "a1fe634b3949b2411a4e83e84281a61cb1f94da026a82fe5c19431a21ea23ec3"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.0.7.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "8bca2442115b61ba632bef1181fa329d33f2dbcbf377babf91ae5e03865ee231"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.0.7.zip",
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
