cask "justlockin" do 
  version '1.0.0'
  sha256 "2ecfa32e502a37655dff21f9897edf3ae26edd6eed72bc2bb6660d050cbb8344"

  url "https://github.com/spaceman1412/justlockin/releases/download/v#{version}/JustLockin-v#{version}.zip"
  name "JustLockin"
  desc "JustLockin is a simple pomodoro app for macOS"
  homepage "https://github.com/spaceman1412/justlockin"

  depends_on macos: ">= :ventura" # macOS 13

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/JustLockin.app"
  end

  app "JustLockin.app"
end
