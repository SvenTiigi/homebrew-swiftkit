class Swiftkit < Formula
    desc "Start your next Open-Source Swift Framework 📦"
    homepage "https://github.com/SvenTiigi/SwiftKit"
    url "https://github.com/SvenTiigi/SwiftKit/archive/1.3.9.tar.gz"
    sha256 "f83f318666b9f33f094a878cf0741279c9e4038fbe029a7c4402898863dd37f2"
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
