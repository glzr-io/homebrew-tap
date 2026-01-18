cask "zebar" do
  version "3.1.1"
  sha256 "ff6a9cc09f6dbdf82ef466c5435633b1238d1f1196333510db0fa0008bc867a7"

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
