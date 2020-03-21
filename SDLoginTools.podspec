#
# Be sure to run `pod lib lint SDLoginTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SDLoginTools'
  s.version          = '0.1.0'
  s.summary          = 'SDLoginTools, 封装微信，QQ第三方登录库.'

  s.homepage         = 'https://github.com/gd-liusida/SDLoginTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gd-liusida' => '1163149842@qq.com' }
  s.source           = { :git => 'https://github.com/gd-liusida/SDLoginTools.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SDLoginTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SDLoginTools' => ['SDLoginTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
   s.dependency 'Alamofire', '~> 5.0'
   s.dependency 'SwiftyJSON', '~> 4.0'
   s.dependency 'WechatOpenSDK', '~> 1.8.6.2'
end
