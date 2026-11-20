cask "appdyno" do
  version "1.3.9"
  sha256 "28258d47b83f11864b088d2ab4773a577613cb1e7489aad07f941e985f118c73"

  url "https://github.com/fatihcimen/appdyno/releases/download/v#{version}/Appdyno-#{version}-arm64.dmg"
  name "Appdyno"
  desc "Drive and measure iOS and Android devices"
  homepage "https://github.com/fatihcimen/appdyno"

  # it replaces itself, when a person asks it to
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Appdyno.app"
  binary "#{appdir}/Appdyno.app/Contents/Resources/bin/appdyno"

  uninstall quit: "dev.appdyno.app"

  zap trash: [
    "~/Library/Application Support/appdyno",
    "~/Library/Caches/appdyno",
    "~/Library/Preferences/dev.appdyno.app.plist",
  ]
end
