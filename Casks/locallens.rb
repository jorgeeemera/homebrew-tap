cask "locallens" do
  version "0.2.1"
  sha256 "b1086461b27a0a6bef6357c91f81be364d3b95951f578f916ad86a8915fb35f3"

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
