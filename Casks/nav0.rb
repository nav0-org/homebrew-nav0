cask "nav0" do
  version "0.3.0"

  on_arm do
    sha256 "48810e27d7629250128ca003a4880d33850ec0bb61818ad6475d96166bb3a064"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-arm64-0.3.0.zip",
        verified: "github.com/nav0-org/nav0-browser/"
  end

  on_intel do
    sha256 "a9f6727ae88580b38f5bbc08c7f270a3f4628639c13b86b7d131f79b10f07e1a"
    url "https://github.com/nav0-org/nav0-browser/releases/download/v#{version}/Nav0-darwin-x64-0.3.0.zip",
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
