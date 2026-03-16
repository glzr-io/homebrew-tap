cask "zebar" do
  version "3.3.1"
  sha256 "30bc1a47ea55437b6fb55abec7375c02dc64f6a02ce0daf0a9505fd3c92fb217"

  url "https://github.com/glzr-io/zebar/releases/download/v#{version}/zebar-v#{version}-opt3.dmg"
  name "Zebar"
  desc "Cross-platform desktop widgets"
  homepage "https://github.com/glzr-io/zebar"

  # MacOS 14+
  depends_on macos: ">= :sonoma"

  app "Zebar.app"
  binary "#{appdir}/Zebar.app/Contents/MacOS/zebar"

  zap trash: [
    "~/Library/Application Support/Zebar",
    "~/Library/Caches/zebar",
    "~/Library/Preferences/zebar",
  ]
end
