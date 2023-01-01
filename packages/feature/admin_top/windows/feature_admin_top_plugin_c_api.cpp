#include "include/feature_admin_top/feature_admin_top_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_admin_top_plugin.h"

void FeatureAdminTopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_admin_top::FeatureAdminTopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
