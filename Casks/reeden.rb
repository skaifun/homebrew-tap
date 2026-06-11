cask "reeden" do
  version "1.34.1+656"
  sha256 "19660b47fa7141f8125186e3dac6324e46df33087c330426c87598c6e3c4c25f"

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
      "~/Library/HTTPStorages/app.reeden.binarycookies",
      "~/Library/Preferences/app.reeden.plist",
      "~/Library/WebKit/app.reeden",
    ]
  end
end
