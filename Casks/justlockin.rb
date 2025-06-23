      
# In Casks/justlockin.rb

cask "justlockin" do
  # The version number MUST match your GitHub Release tag
  version "1.0.0"
  
  # The SHA256 hash you calculated in step 1
  sha256 "2ecfa32e502a37655dff21f9897edf3ae26edd6eed72bc2bb6660d050cbb8344"

  # The public download URL from your GitHub Release
  url "https://github.com/spaceman1412/justlockin/releases/download/v#{version}/JustLockin-v1.0.zip"
  
  # The official name of your app
  name "JustLockin"
  
  # Your project's homepage
  homepage "https://github.com/spaceman1412/justlockin"

  # This line tells Homebrew what to do after unzipping.
  # It moves the .app file to the /Applications folder.
  app "JustLockin.app"
end

    
