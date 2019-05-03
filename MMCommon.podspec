#
# Be sure to run `pod lib lint MMCommon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMCommon'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MMCommon.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/macchamps/MMCommon'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Monang Champaneri' => 'monang.1995@gmail.com' }
  s.source           = { :git => 'https://github.com/macchamps/MMCommon.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/monangdeveloper'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'
  s.source_files = 'MMCommon/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MMCommon' => ['MMCommon/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
   s.dependency 'SDWebImage'
   s.dependency 'PureLayout'
end
