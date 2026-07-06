cask "kyu" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "9450e874593a982fee133d7feed649892fad36d11c4dc74dbc63fa5dec5bbd71",
         intel: "df06a2de2e524725a39017743ca3f4c80185325001b96e3a56cf358e983d4065"

  url "https://github.com/Playground-Labs/Kyu/releases/download/v#{version}/Kyu_#{version}_#{arch}.dmg"
  name "Kyu"
  desc "Menu bar prompt queue for AI agents"
  homepage "https://github.com/Playground-Labs/Kyu"

  depends_on macos: :catalina

  app "Kyu.app"

  zap trash: [
    "~/Library/Application Support/dev.kyu",
    "~/Library/Caches/dev.kyu",
    "~/Library/HTTPStorages/dev.kyu",
    "~/Library/WebKit/dev.kyu",
  ]
end
