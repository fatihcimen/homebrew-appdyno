cask "appdyno" do
  version "1.3.5"
  sha256 "7aa8d0931824cb26753f84a5d82c559b767a0b1f11c9bda6f385ccab1e23285d"

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
