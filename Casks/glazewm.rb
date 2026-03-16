cask "glazewm" do
  version "3.10.0"
  sha256 "30bc1a47ea55437b6fb55abec7375c02dc64f6a02ce0daf0a9505fd3c92fb217"

  url "https://github.com/glzr-io/glazewm/releases/download/v#{version}/glazewm-v#{version}.dmg"
  name "GlazeWM"
  desc "A tiling window manager for macOS and Windows"
  homepage "https://github.com/glzr-io/glazewm"

  # MacOS 13+
  depends_on macos: ">= :ventura"

  app "GlazeWM.app"
  binary "#{appdir}/GlazeWM.app/Contents/MacOS/glazewm"

  zap trash: [
    "~/Library/Application Support/GlazeWM",
    "~/Library/Caches/glazewm",
    "~/Library/Preferences/glazewm",
  ]
end
