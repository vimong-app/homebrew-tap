cask "vimong" do
  version "1.6.0"
  sha256 "651a71d8ca501e6e400f9df4ad508d459f3e4fa465d678452d0d440fb83816d6"

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
