class Locgen_Swift < Formula 
    desc "Localization strings generator for iOS/macOS projects"
    homepage "https://github.com/Holdapp/locgen-swift"
    url "https://github.com/Holdapp/locgen-swift.git", tag: "1.1.1", revision: "5bda5179d6d569e5eaf05c2bd7c4236a1d2b3892"
    head "https://github.com/Holdapp/locgen-swift.git"

    depends_on xcode: ["13.0", :build]

    def install
        system "make", "install", "prefix=#{prefix}"
    end

    test do
        system "locgen-swift", "--help"
    end
end