cask "nicegit" do
  version "2.1.0"
  sha256 "f085a43302d0839aadb262b9a2cc1355af5d5dfa0dd78a18e0c877acd12cb5ac"

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
