cask "vimong" do
  version "1.10.1"
  sha256 "81e4d8a31b606ec46cb3bedc40dcf0bc6dc3914cc0d4f44b3be8cca33e1ae15a"

  url "https://github.com/vimong-app/vimong/releases/download/v#{version}/Vimong_#{version}_aarch64.dmg"
  name "Vimong"
  desc "Document viewer driven by Vim keybindings"
  homepage "https://vimong.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Vimong.app"

  zap trash: [
    "~/Library/Application Support/com.demo.vimong",
    "~/Library/Caches/com.demo.vimong",
    "~/Library/Saved Application State/com.demo.vimong.savedState",
    "~/Library/WebKit/com.demo.vimong",
  ]
end
