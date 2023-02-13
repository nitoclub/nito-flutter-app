#include "include/feature_auth/feature_auth_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_auth_plugin.h"

void FeatureAuthPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_auth::FeatureAuthPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
