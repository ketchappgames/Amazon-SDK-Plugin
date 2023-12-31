Pod::Spec.new do |s|
  s.name                  = 'AmazonIOSWrapper'
  s.version               = '5.12.1'
  s.summary               = 'Unity wrapper for APS iOS SDK - made by Amazon, used by Ketchapp'
  s.homepage              = 'https://github.com/ketchappgames/Amazon-SDK-Plugin.git'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Amazon' => 'aps-github@amazon.com' }
  s.ios.deployment_target = '12.5'
  s.source                = {:git => "https://github.com/ketchappgames/Amazon-SDK-Plugin.git", :tag => "v#{s.version}" }
  s.source_files          = '*.{h,m,mm}'
  
  s.dependency 'AmazonPublisherServicesSDK'
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'OTHER_CPLUSPLUSFLAGS' => '-fcxx-modules',
  }
end