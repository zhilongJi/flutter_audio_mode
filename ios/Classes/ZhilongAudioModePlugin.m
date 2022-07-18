#import "ZhilongAudioModePlugin.h"
#if __has_include(<zhilong_audio_mode/zhilong_audio_mode-Swift.h>)
#import <zhilong_audio_mode/zhilong_audio_mode-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "zhilong_audio_mode-Swift.h"
#endif

@implementation ZhilongAudioModePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZhilongAudioModePlugin registerWithRegistrar:registrar];
}
@end
