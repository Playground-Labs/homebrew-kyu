cask "kyu" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "2ece397b8cd656d73dcb787ba9df11bdc2f86820e5e4eb01e9a9c482882501a2",
         intel: "8f640bf0fba1618ef49b84c76cfb33159e109614357bedd4e9e0bac31a6b36f8"

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
