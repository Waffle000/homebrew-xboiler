class Xboiler < Formula
  desc "Xboiler - Generate SwiftUI boilerplate from YAML"
  homepage "https://github.com/Waffle000/Xboiler"
  url "https://github.com/Waffle000/Xboiler/archive/refs/tags/v1.0.0-beta.tar.gz"
  sha256 "124ea2f1f00214d5cedcccc34d4bae1f2b0308f28cfebe55cacaca7025953f02"
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
