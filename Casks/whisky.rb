cask "whisky" do
  version "3.10.1"
  sha256 "b24daeb37b7da0b2ade499622cdb17dad5b2550c0c917c65ad6c7be210ad42f4"

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
