cask "nav0-browser" do
  version "0.0.2-alpha"

  on_arm do
    sha256 "6a890ef20109adde4524797bed0dbea79a50072e1b012484553ced847b0dceb8"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-arm64-0.1.0.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "8309deeda0acf02040f7024e1bd0ff460930b6871bafc8159d853023cce65c7c"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/nav0-browser-darwin-x64-0.1.0.zip",
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
