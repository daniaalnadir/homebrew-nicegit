cask "nicegit" do
  version "2.3.0"
  sha256 "337fd0996ee7ae251d9d7830b8b10671bfef832d3243d51b197b171bcc396656"

  url "https://github.com/daniaalnadir/NiceGit/releases/download/v#{version}/NiceGit-#{version}-macos-universal.dmg"
  name "NiceGit"
  desc "Fast, free and open-source Git client"
  homepage "https://daniaalnadir.github.io/NiceGit/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "NiceGit.app"

  zap trash: [
    "~/Library/Application Support/nicegit",
    "~/Library/Saved Application State/app.nicegit.desktop.savedState",
  ]
end
