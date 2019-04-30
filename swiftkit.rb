class Swiftkit < Formula
    desc "Start your next Open-Source Swift Framework 📦"
    homepage "https://github.com/SvenTiigi/SwiftKit"
    url "https://github.com/SvenTiigi/SwiftKit/archive/1.1.0.tar.gz"
    sha256 "0db259c2b0841637eb5ebf27707278533c4394cab2ad5001de219151abdbee46"
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
