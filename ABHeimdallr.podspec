#
# Be sure to run `pod lib lint ABHeimdallr.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ABHeimdallr'
  s.version          = '4.0.2'
  s.summary          = 'Swift 5 version of Heimdallr'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A Swift 5 version of Heimdallr
                       DESC

  s.homepage         = 'https://github.com/ABTucanae/ABHeimdallr'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.author           = { 'Alex' => 'tucanae@icloud.com' }
  s.source           = { :git => 'https://github.com/ABTucanae/ABHeimdallr.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ABHeimdallr/**/*.swift'
  
  # s.resource_bundles = {
  #   'ABHeimdallr' => ['ABHeimdallr/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
