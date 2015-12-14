Pod::Spec.new do |s|

  s.name         = "BASESDKSYDemo"
  s.version      = "0.0.29"
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
  s.ios.source       = { :git => "https://github.com/yuhaomingming/BASESDKSYDemo.git", :tag => "0.0.29" }
  s.ios.public_header_files = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.ios.source_files  = "Common/Source/Demo/*.{h,m}","Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.ios.resources = "Common/SDK/Platform/BASESDK/Plist/QuickManifest.plist"
  s.ios.vendored_frameworks = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework"
  s.ios.requires_arc            = true
  s.ios.xcconfig = { "OTHER_LDFLAGS" => "-lObjC","VALID_ARCHS" => "arm64 armv7","ARCHS" => "arm64 armv7"}
  s.ios.libraries               = "c++", "commonCrypto"
  s.ios.frameworks          = "UIKit", "Foundation"
  #s.ios.vendored_library    = 'ShareManager/lib/WeChatSDK/libWeChatSDK.a'
end
