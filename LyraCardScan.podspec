Pod::Spec.new do |s|
  s.name             = 'LyraCardScan'
  s.version          = '1.0.0'
  s.summary          = 'LyraCardScan allows you to scanning credit and debit cards using the device camera'

  s.homepage         = 'https://github.com/lyra/card-scan-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Lyra Dev Mobile' => 'dev-mobile@lyra-network.com' }
  s.source           = { :git => 'https://github.com/lyra/card-scan-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '26.2'

  s.swift_version = '6.2'

  s.ios.vendored_frameworks = 'LyraCardScan.xcframework'

end
