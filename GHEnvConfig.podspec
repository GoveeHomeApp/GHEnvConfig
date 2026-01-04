Pod::Spec.new do |s|

  s.name         = 'GHEnvConfig'
  s.version      = '0.0.1'
  s.summary      = 'GHEnvConfig.'

  s.homepage     = 'git@github.com:GoveeHomeApp/GHEnvConfig.git'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = 'sy'

  s.ios.deployment_target = '13.0'

  s.swift_version = '5.0'

  s.source       = { :git => 'git@github.com:GoveeHomeApp/GHEnvConfig.git', :tag => s.version.to_s }

  s.source_files = 'GHEnvConfig/Classes/**/*'

  #- 此参数用于注册组件 -#
  #s.info_plist = { 'GHModular' => 'GHxxxxxxx.GHxxxxxModule' }

  #- 推荐这种 -#
  # s.resource_bundles = { 'GHEnvConfig' => ['GHEnvConfig/*.xcassets'] }

  # s.resources  = 'GHEnvConfig/**/*.{storyboard,xib}', 'GHEnvConfig/Assets/*'
  # s.resources = 'Resources/*.png'

  # s.preserve_paths = 'FilesToSave', 'MoreFilesToSave'

  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  # s.dependency 'AFNetworking'
  s.dependency 'GHStorage'

end
