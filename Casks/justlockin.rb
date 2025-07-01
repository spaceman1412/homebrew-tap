cask "justlockin" do 
  version '1.1.1'
  sha256 "06334426d478210afc946b339ac341122d40fd6a527d602ccbc7eedb2788e11d"

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
