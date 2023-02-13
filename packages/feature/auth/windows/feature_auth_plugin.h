#ifndef FLUTTER_PLUGIN_FEATURE_AUTH_PLUGIN_H_
#define FLUTTER_PLUGIN_FEATURE_AUTH_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace feature_auth {

class FeatureAuthPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FeatureAuthPlugin();

  virtual ~FeatureAuthPlugin();

  // Disallow copy and assign.
  FeatureAuthPlugin(const FeatureAuthPlugin&) = delete;
  FeatureAuthPlugin& operator=(const FeatureAuthPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace feature_auth

#endif  // FLUTTER_PLUGIN_FEATURE_AUTH_PLUGIN_H_
