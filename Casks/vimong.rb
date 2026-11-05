cask "vimong" do
  version "2.0.2"
  sha256 "04aec0a7115b2b85e9eb208f7950b9b6b54c354270771b33ea8d75e7e2ff7238"

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
