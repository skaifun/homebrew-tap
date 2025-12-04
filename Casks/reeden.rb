cask "reeden" do
  version "1.18.2+355"
  sha256 "de1f58bf94cb17e6ffef4e5d0b03a9494f8f8c8a204aa98cc7b02ded981bfdaa"

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
