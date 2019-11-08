#
#  Be sure to run `pod spec lint KristalLogin.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "KristalLogin"
  s.version      = "0.0.1"
  s.summary      = "KristalLogin lets offer seemless login experience"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.requires_arc = true

  s.author             = { "Prince Mathew" => "prinzemathew@gmail.com" }
  s.homepage     = "https://github.com/prinzemathew/KristalLogin
  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/prinzemathew/KristalLogin.git", :tag => "#{s.version}" }
  s.source_files  = "KristalLogin/**/*"
  s.swift_version = "4.2"

end
