cask "vimong" do
  version "1.0.0"
  sha256 "f39848351fb261e3932dcf9cf62c197286bdbfa947d844ef1e2bb751f6ea4e2f"

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
