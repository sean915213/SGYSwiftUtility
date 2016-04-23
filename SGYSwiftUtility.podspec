#
# Be sure to run `pod lib lint SGYSwiftUtility.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SGYSwiftUtility"
  s.version          = "0.1.0"
  s.summary          = "A collection of extensions on existing classes that make interacting with Apple's Framework easier and more 'Swifty'."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
s.description      = "This library provides a lightweight collection of extensions that I've found useful and convenient in my Swift projects. Many of the extensions extend commonly used functions in order to utilize generics (e.g. `dequeueReusableCellWithIdentifier:forIndexPath:`). Others are simply convenience functions (e.g. the addition of `addViews` to `UIView`). "
  s.homepage         = "https://github.com/sean915213/SGYSwiftUtility"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Sean G. Young" => "sean.g.young@gmail.com" }
  s.source           = { :git => "https://github.com/sean915213/SGYSwiftUtility.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SGYSwiftUtility' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
