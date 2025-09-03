class LocgenSwift < Formula 
    desc "Localization strings generator for iOS/macOS projects"
    homepage "https://github.com/Holdapp/locgen-swift"
    url "https://github.com/Holdapp/locgen-swift.git", tag: "1.1.5", revision: "dd97cde758d0a8b0a98d5b6ee85b2a3a4b07c9e0"
    head "https://github.com/Holdapp/locgen-swift.git"

    depends_on xcode: ["13.0", :build]

    def install
        system "make", "install", "prefix=#{prefix}"
    end

    test do
        system "locgen-swift", "--help"
    end
end