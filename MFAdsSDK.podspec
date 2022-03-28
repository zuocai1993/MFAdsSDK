#
# Be sure to run `pod lib lint MFAds.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'MFAdsSDK'
    s.version          = '1.1.4'
    s.ios.deployment_target = '9.0'
    s.platform     = :ios, "9.0"
    s.requires_arc = true
    
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.summary          = 'MFAdsSDK for iOS'
    s.description      = <<-DESC
    欢迎大家使用MFAdsSDK, 提供成熟聚合方案。
    为开发者提供便利，快速集成。
    DESC
    
    s.homepage         = 'https://github.com/zuocai1993'
    
    s.author           = { 'cc' => 'zuo_cai@163.com' }
    s.source           = { :git => 'https://e.coding.net/qq79788570/mf/MFAdsSDK.git', :tag => s.version.to_s }
    
    s.user_target_xcconfig = {'OTHER_LDFLAGS' => ['-ObjC']}
    
    valid_archs = ['i386', 'armv7', 'x86_64', 'arm64']
    # bitcode
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}
    s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}
    
    s.default_subspec = 'Core'
    
    s.requires_arc = true
    s.static_framework = true  #是否为静态库
    
    s.subspec 'Core' do |core|
        core.source_files = 'MFAdsSDK/Core/**/*.{h,m}'
        core.frameworks = 'UIKit', 'Foundation', 'AdSupport'
    end

    s.subspec 'Adspot' do |adspot|
        adspot.dependency 'MFAdsSDK/Core'
        adspot.source_files = 'MFAdsSDK/Adspot/**/*.{h,m}'
    end
    

    s.vendored_frameworks = [
      'MFAdsSDK/Frameworks/Adspot/MFAdsAdspot.xcframework',
      'MFAdsSDK/Frameworks/core/MFAdsCore.xcframework',
      'MFAdsSDK/Frameworks/Adapter/MFAdsAdapter.xcframework'
      ]
    
    s.subspec 'CSJ' do |csj|
        csj.dependency 'MFAdsSDK/Core'
        csj.dependency 'MFAdsSDK/Adspot'
        csj.dependency 'Ads-CN'
        csj.source_files = 'MFAdsSDK/Adapter/CSJ/**/*.{h,m}'
        csj.frameworks = 'UIKit', 'MapKit', 'WebKit', 'MediaPlayer', 'CoreLocation', 'AdSupport', 'CoreMedia', 'AVFoundation', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'MobileCoreServices', 'CoreMotion', 'Accelerate','AudioToolbox','JavaScriptCore','Security','CoreImage','AudioToolbox','ImageIO','QuartzCore','CoreGraphics','CoreText'
        csj.libraries = 'c++', 'resolv', 'z', 'sqlite3', 'bz2', 'xml2', 'iconv', 'c++abi'
        #    valid_archs = ['armv7', 'i386', 'x86_64', 'arm64']
        
    end
    
    s.subspec 'GDT' do |gdt|
        gdt.dependency 'MFAdsSDK/Core'
        gdt.dependency 'MFAdsSDK/Adspot'
        gdt.dependency 'GDTMobSDK'
        gdt.source_files =  'MFAdsSDK/Adapter/GDT/**/*.{h,m}'
        gdt.frameworks = 'AdSupport', 'CoreLocation', 'QuartzCore', 'SystemConfiguration', 'CoreTelephony', 'Security', 'StoreKit', 'AVFoundation', 'WebKit'
        gdt.libraries     = 'xml2', 'z'
    end

#    s.subspec 'KS' do |ks|
#        ks.dependency 'MFAdsSDK/Core'
#        ks.dependency 'MFAdsSDK/Adspot'
#        ks.dependency 'KSAdSDK'
#        ks.source_files = 'MFAdsSDK/Adapter/Kuaishou/**/*.{h}'
#        ks.frameworks = ["Foundation", "UIKit", "MobileCoreServices", "CoreGraphics", "Security", "SystemConfiguration", "CoreTelephony", "AdSupport", "CoreData", "StoreKit", "AVFoundation", "MediaPlayer", "CoreMedia", "WebKit", "Accelerate", "CoreLocation", "AVKit", "MessageUI", "QuickLook", "AudioToolBox", "AddressBook"]
#        ks.libraries =  ["z", "resolv.9", "sqlite3", "c++", "c++abi"]
#    end

    s.subspec 'BD' do |bd|
        bd.dependency 'MFAdsSDK/Core'
        bd.dependency 'MFAdsSDK/Adspot'
        bd.dependency 'BaiduMobAdSDK'
        bd.source_files =  'MFAdsSDK/Adapter/BD/**/*.{h,m}'
        bd.frameworks = 'CoreLocation', 'SystemConfiguration', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'AdSupport', 'SystemConfiguration', 'QuartzCore', 'WebKit', 'MessageUI','SafariServices','AVFoundation','EventKit','QuartzCore','CoreMedia','StoreKit'
        bd.libraries     = 'c++'
        bd.weak_frameworks = "WebKit"
        valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']


    end
    
    
    s.xcconfig = {
        'VALID_ARCHS' =>  valid_archs.join(' '),
    }
    
end
