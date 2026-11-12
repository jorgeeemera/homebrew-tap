cask "locallens" do
  version "0.2.0"
  sha256 "6e225675a79b51972f39a02ec8db307582aacaa2a0d806e30a9632b845d9fe99"

  url "https://github.com/jorgeeemera/locallens/releases/download/v#{version}/LocalLens-#{version}-arm64.zip"
  name "LocalLens"
  desc "Private, offline document search (keywords and meaning)"
  homepage "https://jorgeeemera.github.io/locallens/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LocalLens.app"

  caveats <<~EOS
    LocalLens beta is not notarized by Apple (ad-hoc signature).
    The first time you open it, macOS will block it. To allow it:
      System Settings > Privacy & Security > "Open Anyway" (LocalLens)
    Gatekeeper and the App Sandbox stay on; you only authorize this app.
  EOS
end
