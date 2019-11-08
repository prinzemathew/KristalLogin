#
#  Be sure to run `pod spec lint KristalLogin.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "KristalLogin"
  spec.ios.deployment_target = '12.0'
  spec.version      = "0.0.2"
  spec.summary      = "KristalLogin lets offer seemless login experience"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.requires_arc = true

  spec.author             = { "Prince Mathew" => "prinzemathew@gmail.com" }
  spec.homepage     = "https://github.com/prinzemathew/KristalLogin"
  spec.source       = { :git => "https://github.com/prinzemathew/KristalLogin.git", :tag => "#{spec.version}" }
  spec.source_files  = "KristalLogin/**/*.{swift}"
  spec.exclude_files = "KristalLogin/**/*.plist"
  spec.swift_version = "4.2"

end
