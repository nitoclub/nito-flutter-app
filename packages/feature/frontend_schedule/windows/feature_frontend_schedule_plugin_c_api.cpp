#include "include/feature_frontend_schedule/feature_frontend_schedule_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_frontend_schedule_plugin.h"

void FeatureFrontendSchedulePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_frontend_schedule::FeatureFrontendSchedulePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
