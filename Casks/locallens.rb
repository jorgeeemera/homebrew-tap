cask "locallens" do
  version "0.1.0"
  sha256 "f481d9b8822bdba0528c50f4e817376608d41edcd155f46c0d525fc0dc179a37"

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

    Search by meaning needs the model package (separate download, MIT):
      https://github.com/jorgeeemera/locallens/releases/tag/v#{version}
    Unzip it, then in LocalLens: Settings > Import Model Package...
  EOS
end
