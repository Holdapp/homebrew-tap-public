class LocgenSwift < Formula 
    desc "Localization strings generator for iOS/macOS projects"
    homepage "https://github.com/Holdapp/locgen-swift"
    url "https://github.com/Holdapp/locgen-swift.git", tag: "1.1.1", revision: "569c1ff41a681dbb5da1dc70566a1131bbbc049f"
    head "https://github.com/Holdapp/locgen-swift.git"

    depends_on xcode: ["13.0", :build]

    def install
        system "make", "install", "prefix=#{prefix}"
    end

    test do
        system "locgen-swift", "--help"
    end
end