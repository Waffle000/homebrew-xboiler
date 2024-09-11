class Xboiler < Formula
  desc "Xboiler - Generate SwiftUI boilerplate from YAML"
  homepage "https://github.com/Waffle000/Xboiler"
  url "https://github.com/Waffle000/Xboiler/archive/refs/tags/v0.1.0-beta.2.tar.gz"
  sha256 "8e753f2941b92ccc34f11e4eecb98218d8f299b3d2ffd0630063aea9dcc52d2e"
  license "MIT"

  def install
    swift_path = which("swift")
    if swift_path.nil?
      odie "Swift is not installed. Please install Swift (via Xcode or Swift.org)."
    end

    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/xboiler"
  end

  test do
    system "#{bin}/xboiler", "--version"
  end
end
