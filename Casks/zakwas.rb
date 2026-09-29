cask "zakwas" do
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "zakwas"], chdir: ".", writable_paths: ["zakwas"], must_succeed: false
  end

  version "0.4.0"

  on_macos do
    on_arm do
      sha256 "7c80886142a4fe1286c7e17e274aca4411d0ca9c783a8ba3ab07e9a2ab8cca75"
      url "https://github.com/Automaat/zakwas/releases/download/v#{version}/zakwas_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "4d620f6460503ff76bb1544964ec4956848cd284901286594640e3ea748d3199"
      url "https://github.com/Automaat/zakwas/releases/download/v#{version}/zakwas_#{version}_darwin_amd64.tar.gz"
    end
  end

  name "zakwas"
  desc "Declarative Mac setup from one YAML file"
  homepage "https://github.com/Automaat/zakwas"

  livecheck do
    skip "Auto-generated on release."
  end

  depends_on :macos

  binary "zakwas"
end
