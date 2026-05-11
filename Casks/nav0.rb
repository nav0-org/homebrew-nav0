cask "nav0" do
  version "0.2.8"

  on_arm do
    sha256 "59d468878950841f1ae855fa0067ee9f27705c5b7ede1c94b1daacab9226b727"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.2.8.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "b7279c1ef77e4a343ef334ae7a0e65c91f0d9242cefda61f0340c681e397f740"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.2.8.zip",
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
