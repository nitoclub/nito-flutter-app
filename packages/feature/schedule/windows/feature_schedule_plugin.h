#ifndef FLUTTER_PLUGIN_FEATURE_SCHEDULE_PLUGIN_H_
#define FLUTTER_PLUGIN_FEATURE_SCHEDULE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace feature_schedule {

class FeatureSchedulePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FeatureSchedulePlugin();

  virtual ~FeatureSchedulePlugin();

  // Disallow copy and assign.
  FeatureSchedulePlugin(const FeatureSchedulePlugin&) = delete;
  FeatureSchedulePlugin& operator=(const FeatureSchedulePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace feature_schedule

#endif  // FLUTTER_PLUGIN_FEATURE_SCHEDULE_PLUGIN_H_
