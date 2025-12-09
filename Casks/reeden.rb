cask "reeden" do
  version "1.19.3+362"
  sha256 "a30b7a5ded0105c706d1dfc51a65ad166fa9a62cf8294ea0483ba0d9e98f75fa"

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
