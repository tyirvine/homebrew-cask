cask "waterfox-classic" do
  version "2021.08"
  sha256 "560a170895cfd2a3a87bd30d35f802d7ab1b2485a4da2251f123d52689877571"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
  name "Waterfox Classic"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.net/download/"
    regex(%r{href=.*?/Waterfox%20Classic%20(\d+(?:\.\d+)+)%20Setup\.dmg}i)
  end

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
