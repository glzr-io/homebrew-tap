cask "glazewm" do
  version "3.10.1"
  sha256 "94842466267d86d9da1d549fa36d8bc39052ceae4d99bffe3b6fb270842af39b"

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
