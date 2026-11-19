cask "appdyno" do
  version "1.3.4"
  sha256 "93c2e92ea95a1a171f6977f376f47611f97a6c8b28146e090d6c3305648bf029"

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
