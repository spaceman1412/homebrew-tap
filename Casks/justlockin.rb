cask "justlockin" do 
  version '1.1.0'
  sha256 "8a3d065a90be81916ec9f0ced3b39ac9cc6515243b4bae79ba07e331b3bf7e80"

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
