cask "appdyno" do
  version "1.3.6"
  sha256 "3cd00f75b0ecdb31481d96d4aefe083b249384de05e8a886f9ee55c3718a3e78"

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
