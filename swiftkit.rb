class Swiftkit < Formula
    desc "Start your next Open-Source Swift Framework 📦"
    homepage "https://github.com/SvenTiigi/SwiftKit"
    url "https://github.com/SvenTiigi/SwiftKit/archive/1.3.4.tar.gz"
    sha256 "aac60d276e74811dc687d9ae69f833bdcdda905505ee45d38a27ff43b8736531"
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
