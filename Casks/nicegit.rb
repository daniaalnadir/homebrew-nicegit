cask "nicegit" do
  version "2.4.0"
  sha256 "91a22d128170b29f331ba5aa184f7ad837359587e91983ebc4f33775f68dbf08"

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
