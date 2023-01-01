#include "include/feature_frontend_top/feature_frontend_top_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_frontend_top_plugin.h"

void FeatureFrontendTopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_frontend_top::FeatureFrontendTopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
