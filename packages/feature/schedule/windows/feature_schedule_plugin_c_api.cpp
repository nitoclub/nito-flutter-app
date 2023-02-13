#include "include/feature_schedule/feature_schedule_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_schedule_plugin.h"

void FeatureSchedulePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_schedule::FeatureSchedulePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
