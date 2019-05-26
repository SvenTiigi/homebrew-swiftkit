class Swiftkit < Formula
    desc "Start your next Open-Source Swift Framework 📦"
    homepage "https://github.com/SvenTiigi/SwiftKit"
    url "https://github.com/SvenTiigi/SwiftKit/archive/1.2.4.tar.gz"
    sha256 "8ea15c51330489b863f736d507b9fcdc7c76b6f8453fb58249d4731e867f1446"
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
