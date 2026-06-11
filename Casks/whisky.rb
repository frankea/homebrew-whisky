cask "whisky" do
  version "3.3.0"
  sha256 "28b5764d07e8302dca22fee0c7f3024f2bb2630561a7a22d731ecb8556232d13"

  url "https://github.com/frankea/Whisky/releases/download/app-v#{version}/Whisky-#{version}.dmg"
  name "Whisky"
  desc "Active community fork of the archived Wine wrapper"
  homepage "https://github.com/frankea/Whisky"

  livecheck do
    url :url
    strategy :github_latest do |json, _regex|
      match = json["tag_name"]&.match(/^app-v(\d+(?:\.\d+)*)$/)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Whisky.app"

  zap trash: [
    "~/Library/Application Support/com.franke.Whisky",
    "~/Library/Caches/com.franke.Whisky",
    "~/Library/Containers/com.franke.Whisky",
    "~/Library/HTTPStorages/com.franke.Whisky",
    "~/Library/Preferences/com.franke.Whisky.plist",
    "~/Library/Saved Application State/com.franke.Whisky.savedState",
  ]
end
