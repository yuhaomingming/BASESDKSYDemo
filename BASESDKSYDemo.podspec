Pod::Spec.new do |s|

  s.name         = "BASESDKSYDemo"
  s.version      = "0.0.26"
  s.summary      = "A BASESDKSYDemo."
  s.description  = <<-DESC
                   A CocoaPods BASESDKSYDemo
                   DESC
  s.homepage     = "https://github.com/yuhaomingming/BASESDKSYDemo.git"
  s.license      = "MIT"
  s.author             = { "于浩" => "351945755@qq.com" }
  s.social_media_url   = "https://github.com/yuhaomingming/BASESDKSYDemo.git"
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/yuhaomingming/BASESDKSYDemo.git", :tag => "0.0.26" }
  s.public_header_files = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.source_files  = ["Common/Source/Demo/*.{h,m}","Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"]
  s.resources = "Common/SDK/Platform/BASESDK/Plist/QuickManifest.plist"
  s.ios.vendored_frameworks = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework"
  s.requires_arc            = true
  
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-lObjC","VALID_ARCHS" => "arm64 armv7","ARCHS" => "arm64 armv7"}
  
  #s.libraries               = 'c++', 'sqlite3.0', 'z'
  #s.ios.vendored_library    = 'ShareManager/lib/WeChatSDK/libWeChatSDK.a'
  #s.ios.frameworks          = ['SystemConfiguration', 'CoreTelephony']
end
