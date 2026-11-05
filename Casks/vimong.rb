cask "vimong" do
  version "2.0.1"
  sha256 "5e54a7b9215abfbd5a0a72f06eb0ac939353f4d9796a74bcc615ac47c4c49006"

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
