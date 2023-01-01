#import "FeatureAdminTopPlugin.h"
#if __has_include(<feature_admin_top/feature_admin_top-Swift.h>)
#import <feature_admin_top/feature_admin_top-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "feature_admin_top-Swift.h"
#endif

@implementation FeatureAdminTopPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFeatureAdminTopPlugin registerWithRegistrar:registrar];
}
@end
