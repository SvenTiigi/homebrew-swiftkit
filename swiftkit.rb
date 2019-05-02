class Swiftkit < Formula
    desc "Start your next Open-Source Swift Framework 📦"
    homepage "https://github.com/SvenTiigi/SwiftKit"
    url "https://github.com/SvenTiigi/SwiftKit/archive/1.2.0.tar.gz"
    sha256 "95b66c6fc25ebadb5eb65d872d26c5e7b5483f4435852860fd4a27ba43c878eb"
    head "https://github.com/SvenTiigi/SwiftKit.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        system "swift", "build", "--disable-sandbox", "-c", "release"
        bin.install ".build/release/swiftkit"
    end

    test do
        system "#{bin}/swiftkit", "--version"
    end
end
