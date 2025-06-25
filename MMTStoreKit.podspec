#
# Be sure to run `pod lib lint MMTStoreKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMTStoreKit'
  s.version          = '0.6.0'
  s.summary          = 'A IAP Tool For ios 13.0+'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
For ios 15.0+, it will auto use storekit2
For ios 14.0-, it will auto use storekit
                       DESC

  s.homepage         = 'https://github.com/NealWills/MMTStoreKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nealwills' => 'nealwills93@gmail.com' }
  s.source           = { :git => 'https://github.com/NealWills/MMTStoreKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'MMTStoreKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MMTStoreKit' => ['MMTStoreKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'StoreKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
