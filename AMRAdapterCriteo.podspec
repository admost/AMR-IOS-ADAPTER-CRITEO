Pod::Spec.new do |s|
  s.name             = 'AMRAdapterCriteo'
  s.version          = '4.8.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Criteo adapter for AMR SDK.'
  s.description      = 'AMR Criteo adapter allows publishers to mediate Criteo banner and interstitial ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-CRITEO.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterCriteo/Libs/AMRAdapterCriteo.xcframework'
  s.dependency 'AMRSDK', '~> 1.5.6'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }

  s.dependency 'CriteoPublisherSdk', '4.8.0'

end
