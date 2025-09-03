class LocgenSwift < Formula 
    desc "Localization strings generator for iOS/macOS projects"
    homepage "https://github.com/Holdapp/locgen-swift"
    url "https://github.com/Holdapp/locgen-swift.git", tag: "1.1.5", revision: "dd97cdeec118eb7e75581c48ecbd7c6d98267439"
    head "https://github.com/Holdapp/locgen-swift.git"

    depends_on xcode: ["13.0", :build]

    def install
        system "make", "install", "prefix=#{prefix}"
    end

    test do
        system "locgen-swift", "--help"
    end
end