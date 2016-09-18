#
# Be sure to run `pod lib lint SGYSwiftUtility.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SGYSwiftUtility'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SGYSwiftUtility.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "A basic library of utility functions I've developed for my own personal use.  This library frequently changes as the shortcut methods implemented are often incorporated into the Swift framework (especially as more framework imported functions implement generics properly)."
  s.homepage         = 'https://github.com/sean915213/SGYSwiftUtility'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sean G. Young' => 'sean.g.young@gmail.com' }
  s.source           = { :git => 'https://github.com/sean915213/SGYSwiftUtility.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.3'

  s.source_files = 'SGYSwiftUtility/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SGYSwiftUtility' => ['SGYSwiftUtility/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
