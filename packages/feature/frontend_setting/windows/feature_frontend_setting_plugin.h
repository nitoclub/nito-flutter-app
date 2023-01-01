#ifndef FLUTTER_PLUGIN_FEATURE_FRONTEND_SETTING_PLUGIN_H_
#define FLUTTER_PLUGIN_FEATURE_FRONTEND_SETTING_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace feature_frontend_setting {

class FeatureFrontendSettingPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FeatureFrontendSettingPlugin();

  virtual ~FeatureFrontendSettingPlugin();

  // Disallow copy and assign.
  FeatureFrontendSettingPlugin(const FeatureFrontendSettingPlugin&) = delete;
  FeatureFrontendSettingPlugin& operator=(const FeatureFrontendSettingPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace feature_frontend_setting

#endif  // FLUTTER_PLUGIN_FEATURE_FRONTEND_SETTING_PLUGIN_H_
