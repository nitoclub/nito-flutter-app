#import "FeatureFrontendSchedulePlugin.h"
#if __has_include(<feature_frontend_schedule/feature_frontend_schedule-Swift.h>)
#import <feature_frontend_schedule/feature_frontend_schedule-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "feature_frontend_schedule-Swift.h"
#endif

@implementation FeatureFrontendSchedulePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFeatureFrontendSchedulePlugin registerWithRegistrar:registrar];
}
@end
