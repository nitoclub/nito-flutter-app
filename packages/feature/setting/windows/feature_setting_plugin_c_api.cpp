#include "include/feature_setting/feature_setting_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_setting_plugin.h"

void FeatureSettingPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_setting::FeatureSettingPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
