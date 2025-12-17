cask "reeden" do
  version "1.20.3+372"
  sha256 "5e6a31876ffe6f24d9925a6e2c2129254ffc15483784f71b335657b03a0bc38e"

  on_macos do
    url "https://download.reeden.app/Reeden/#{version}/Reeden-#{version}-macos.dmg"
    name "Reeden"
    desc "现代跨平台电子书阅读器"
    homepage "https://reeden.app/"

    livecheck do
      url "https://reeden.app/download"
      regex(%r{href=.*?/Reeden[._-](\d+(?:\.\d+)*\+\d+)-macos\.dmg}i)
      strategy :page_match
    end

    app "Reeden.app"

    zap trash: [
      "~/Library/Application Support/app.reeden",
      "~/Library/Caches/app.reeden",
      "~/Library/HTTPStorages/app.reeden",
      "~/Library/Preferences/app.reeden.plist",
    ]
  end
end
