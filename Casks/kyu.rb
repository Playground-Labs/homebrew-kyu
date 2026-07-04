cask "kyu" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "c905570cd957d20acead5e68ae7b806cf2939a5eac09bda47bcaf0fb313df523",
         intel: "fdb73613fd5712a7efd8800bc049ce7760bc96edb6747ec324487cefb3148ff3"

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
