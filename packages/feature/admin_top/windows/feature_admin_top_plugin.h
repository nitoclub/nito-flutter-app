#ifndef FLUTTER_PLUGIN_FEATURE_ADMIN_TOP_PLUGIN_H_
#define FLUTTER_PLUGIN_FEATURE_ADMIN_TOP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace feature_admin_top {

class FeatureAdminTopPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FeatureAdminTopPlugin();

  virtual ~FeatureAdminTopPlugin();

  // Disallow copy and assign.
  FeatureAdminTopPlugin(const FeatureAdminTopPlugin&) = delete;
  FeatureAdminTopPlugin& operator=(const FeatureAdminTopPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace feature_admin_top

#endif  // FLUTTER_PLUGIN_FEATURE_ADMIN_TOP_PLUGIN_H_
