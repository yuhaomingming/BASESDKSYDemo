Pod::Spec.new do |s|

  s.name         = "BASESDKSYDemo"
  s.version      = "0.0.51"
  s.summary      = "A BASESDKSYDemo."
  s.description  = <<-DESC
                   A CocoaPods BASESDKSYDemo
                   DESC
  s.homepage     = "https://github.com/yuhaomingming/BASESDKSYDemo.git"
  s.license      = "MIT"
  s.author             = { "于浩" => "351945755@qq.com" }
  #s.social_media_url   = "https://github.com/yuhaomingming/BASESDKSYDemo.git"
  s.platform     = :ios, "8.0"
  #s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/yuhaomingming/BASESDKSYDemo.git", :tag => s.version}
  s.public_header_files = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.requires_arc            = true

  s.xcconfig = { 
    "VALID_ARCHS" => "arm64 armv7",
    "ONLY_ACTIVE_ARCH" => "NO"
  }
  #"ARCHS[sdk=iphonesimulator*]": "$(ARCHS_STANDARD_32_BIT)",
  #"ARCHS[sdk=iphoneos*]": "$(ARCHS_STANDARD)"
  s.source_files  = "Common/Source/Demo/*.{h,m}","Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework/Headers/*.h"
  s.resources = "Common/SDK/Platform/BASESDK/Plist/QuickManifest.plist"
  s.vendored_frameworks = "Common/SDK/Platform/BASESDK/SYFramework/QuickUnifyPlatform.framework"

  s.libraries           = "stdc++","commonCrypto"
  s.frameworks          = "UIKit","Foundation","CoreGraphics"
  #spec.ios.vendored_library = 'Libraries/libProj4.a'
  #spec.vendored_libraries = 'libProj4.a', 'libJavaScriptCore.a'
end
