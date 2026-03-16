cask "glazewm" do
  version "3.10.0"
  sha256 "a729b9750f172899d4eff7f552627c3330031867369d0abda83b402b5a0403ec"

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
