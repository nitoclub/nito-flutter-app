#include "include/feature_frontend_setting/feature_frontend_setting_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_frontend_setting_plugin.h"

void FeatureFrontendSettingPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_frontend_setting::FeatureFrontendSettingPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
