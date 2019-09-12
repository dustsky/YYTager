#
# Be sure to run `pod lib lint KRY_Tag.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KRY_Tag'
  s.version          = '0.0.4'
  s.summary          = 'iOS标签'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
占坑，后续填充说明.
                       DESC

  s.homepage         = 'https://github.com/dustsky/YYTager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dustsky' => 'gsmxsky@gmail.com' }
  s.source           = { :git => 'git@github.com:dustsky/YYTager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KRY_Tag/Classes/**/*.{h,m}'
  s.public_header_files = 'KRY_Tag/Classes/Header/*.h'

  s.subspec 'Core' do |core|
    core.source_files = 'KRY_Tag/Classes/Core/*.{h,m}'
    core.public_header_files = 'KRY_Tag/Classes/Core/*.h'
  end

  s.subspec 'Component' do |cmt|
    cmt.source_files = 'KRY_Tag/Classes/Component/*.{h,m}'
    cmt.public_header_files = 'KRY_Tag/Classes/Component/*.h'
    cmt.dependency 'KRY_Tag/Core'
  end

  # s.resource_bundles = {

  #   'KRY_Tag' => ['KRY_Tag/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
