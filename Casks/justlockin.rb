cask "justlockin" do 
  version '1.0.1'
  sha256 "77fb8a392618f47acacd136d0b7781aed977ab755891e3cff67c95b9fa7fac41"

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
