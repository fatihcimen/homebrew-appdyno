cask "appdyno" do
  version "1.3.2"
  sha256 "59a653a46c26c64a87ccd3f67adf186f1d6892c8703a2ed063707ed555573708"

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
