cask "nicegit" do
  version "2.2.0"
  sha256 "d147d22a3f8be7ad786b0c3b84ef7c084225ecb0eafc42a5828174805e0c243c"

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
