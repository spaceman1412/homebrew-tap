cask "justlockin" do 
  version '1.0.0'
  sha256 "ca28731d4c9ceac721e6e31b2f2c81d93b15ebe1668435a405659fffd62ff9bd"

  url "https://github.com/spaceman1412/justlockin/releases/download/v#{version}/JustLockin-v#{version}.zip"
  name "JustLockin"
  desc "JustLockin is a minimalist pomodoro app for macOS"
  homepage "https://github.com/spaceman1412/justlockin"

  depends_on macos: ">= :ventura" # macOS 13

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/JustLockin.app"
  end

  app "JustLockin.app"
end
