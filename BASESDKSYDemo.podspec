Pod::Spec.new do |s|

  s.name         = "BASESDKSYDemo"
  s.version      = "0.0.43"
  s.summary      = "A BASESDKSYDemo."
  s.description  = <<-DESC
                   A CocoaPods BASESDKSYDemo
                   DESC
  s.homepage     = "https://github.com/yuhaomingming/BASESDKSYDemo.git"
  s.license      = "MIT"
  s.author             = { "于浩" => "351945755@qq.com" }
  s.social_media_url   = "https://github.com/yuhaomingming/BASESDKSYDemo.git"
  s.platform     = :ios, "8.0"
  #s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/yuhaomingming/BASESDKSYDemo.git", :tag => s.version}
  s.public_header_files = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.requires_arc            = true

  other_frameworks =  ["QuickUnifyPlatform", "UIKit", "Foundation", "CoreGraphics"]
  other_ldflags = '$(inherited) -framework ' + other_frameworks.join(' -framework ') + 
    ' -lcommonCrypto -lstdc++'

  s.pod_target_xcconfig = { 
    "ENABLE_BITCODE" => "NO",
    "OTHER_LDFLAGS" => "-lObjC",
    "FRAMEWORK_SEARCH_PATHS" => "Common/SDK/Platform/BASESDK/SYFramework/",
    "OTHER_LDFLAGS[arch=arm64]" => other_ldflags,
    "OTHER_LDFLAGS[arch=armv7]"  => other_ldflags,
    "OTHER_LDFLAGS[arch=armv7s]" => other_ldflags
  }
  #"VALID_ARCHS" => "arm64 armv7","ARCHS" => "arm64 armv7"


  s.source_files  = "Common/Source/Demo/CocoaTest.{h,m}","Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.resources = "Common/SDK/Platform/BASESDK/Plist/QuickManifest.plist"
  #s.vendored_frameworks = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework"
  #s.libraries           = "stdc++","commonCrypto"
  #s.frameworks          = "UIKit","Foundation","CoreGraphics"

  #spec.ios.vendored_library = 'Libraries/libProj4.a'
  #spec.vendored_libraries = 'libProj4.a', 'libJavaScriptCore.a'
end
