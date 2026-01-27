cask "reeden" do
  version "1.24.3+424"
  sha256 "2d7d701ff1075e8f68984509fc155ab153753bcf4149653908249b9a4b97e0f0"

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
