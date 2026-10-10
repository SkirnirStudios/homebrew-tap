cask "undertone" do
  version "0.2.0"
  sha256 "573eeaaffefa5729ca1b7e0b43616058acbf31fe35fc5fae8df7ed6b99bbccd6"

  url "https://github.com/SkirnirStudios/Undertone/releases/download/v#{version}/Undertone-#{version}.dmg"
  name "Undertone"
  desc "Per-app volume control in the menu bar"
  homepage "https://github.com/SkirnirStudios/Undertone"

  livecheck do
    url "https://raw.githubusercontent.com/SkirnirStudios/Undertone/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Undertone.app"

  uninstall quit: "dev.undertone.Undertone"

  zap trash: [
    "~/Library/Caches/dev.undertone.Undertone",
    "~/Library/HTTPStorages/dev.undertone.Undertone",
    "~/Library/Preferences/dev.undertone.Undertone.plist",
  ]
end
