#ifndef FLUTTER_PLUGIN_FEATURE_FRONTEND_AUTH_PLUGIN_H_
#define FLUTTER_PLUGIN_FEATURE_FRONTEND_AUTH_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace feature_frontend_auth {

class FeatureFrontendAuthPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FeatureFrontendAuthPlugin();

  virtual ~FeatureFrontendAuthPlugin();

  // Disallow copy and assign.
  FeatureFrontendAuthPlugin(const FeatureFrontendAuthPlugin&) = delete;
  FeatureFrontendAuthPlugin& operator=(const FeatureFrontendAuthPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace feature_frontend_auth

#endif  // FLUTTER_PLUGIN_FEATURE_FRONTEND_AUTH_PLUGIN_H_
