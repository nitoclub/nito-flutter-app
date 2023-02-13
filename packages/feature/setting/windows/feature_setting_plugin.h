#ifndef FLUTTER_PLUGIN_FEATURE_SETTING_PLUGIN_H_
#define FLUTTER_PLUGIN_FEATURE_SETTING_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace feature_setting {

class FeatureSettingPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FeatureSettingPlugin();

  virtual ~FeatureSettingPlugin();

  // Disallow copy and assign.
  FeatureSettingPlugin(const FeatureSettingPlugin&) = delete;
  FeatureSettingPlugin& operator=(const FeatureSettingPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace feature_setting

#endif  // FLUTTER_PLUGIN_FEATURE_SETTING_PLUGIN_H_
