class LocgenSwift < Formula 
    desc "Localization strings generator for iOS/macOS projects"
    homepage "https://github.com/Holdapp/locgen-swift"
    url "https://github.com/Holdapp/locgen-swift.git", tag: "1.1.6", revision: "125d5e7e816340055da18fc3bd731b52c8caabaf"
    head "https://github.com/Holdapp/locgen-swift.git"

    depends_on xcode: ["13.0", :build]

    def install
        system "make", "install", "prefix=#{prefix}"
    end

    test do
        system "locgen-swift", "--help"
    end
end