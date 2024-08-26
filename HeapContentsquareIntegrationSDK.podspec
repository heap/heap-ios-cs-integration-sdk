Pod::Spec.new do |s|
  s.name = 'HeapContentsquareIntegrationSDK'
  s.version = '0.7.1'
  s.license = { :type => 'MIT' }
  s.summary = 'HeapContentsquareIntegration enables combined analysis between Heap and Contentsquare.'
  s.homepage = 'https://contentsquare.com/'
  s.author = 'Contentsquare'
  s.source = { :http => "https://cdn.heapanalytics.com/ios/heap-ios-cs-integration-#{s.version}.zip", :type => 'zip' }

  s.requires_arc = true
  s.ios.deployment_target = '13.0'

  s.cocoapods_version = '>= 1.7.0'

  s.dependency 'HeapSwiftCore', '~> 0.7'
  s.dependency 'CS_iOS_SDK', '~> 4.33'

  s.source_files = 'Sources/HeapContentsquareIntegrationSDK/**/*.swift'
  s.vendored_frameworks = 'HeapContentsquareIntegrationImplementation.xcframework'

  s.swift_versions = ['5.0']
end
