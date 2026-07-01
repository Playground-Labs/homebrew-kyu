cask "kyu" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "b82e21fe562105f7dc37197addb425fe9cec8433cc297b1d85ff4f02aa72161f",
         intel: "c566e2e49c17b360d161ad93ecd80c1f4b73d08f14ef5b9fc3b4dfa4faa8fabd"

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
