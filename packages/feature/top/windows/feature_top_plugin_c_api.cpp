#include "include/feature_top/feature_top_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_top_plugin.h"

void FeatureTopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_top::FeatureTopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
