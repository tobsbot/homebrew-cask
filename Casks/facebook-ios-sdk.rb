cask 'facebook-ios-sdk' do
  version '4.15.1'
  sha256 '255b0b47cbad187dbb8834ed49e917106fb1d38815a8d88d57c816ac741a4ed5'

  url "https://origincache.facebook.com/developers/resources/?id=FacebookSDKs-iOS-#{version}.zip"
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'
  license :other # https://github.com/facebook/facebook-ios-sdk/blob/master/LICENSE

  artifact 'AccountKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/AccountKit.framework"
  artifact 'AccountKitStrings.bundle', target: "#{ENV['HOME']}/Documents/FacebookSDK/AccountKitStrings.bundle"
  artifact 'Bolts.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/Bolts.framework"
  artifact 'DocSets', target: "#{ENV['HOME']}/Documents/FacebookSDK/DocSets"
  artifact 'FBAudienceNetwork.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBAudienceNetwork.framework"
  artifact 'FBNotifications.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBNotifications.framework"
  artifact 'FBSDKCoreKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKCoreKit.framework"
  artifact 'FBSDKLoginKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKLoginKit.framework"
  artifact 'FBSDKMessengerShareKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKMessengerShareKit.framework"
  artifact 'FBSDKShareKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKShareKit.framework"
  artifact 'FacebookSDKStrings.bundle', target: "#{ENV['HOME']}/Documents/FacebookSDK/FacebookSDKStrings.bundle"
  artifact 'Samples', target: "#{ENV['HOME']}/Documents/FacebookSDK/Samples"

  preflight do
    system_command '/bin/mkdir', args: ['-p', '--', "#{ENV['HOME']}/Documents/FacebookSDK"]
  end
end
