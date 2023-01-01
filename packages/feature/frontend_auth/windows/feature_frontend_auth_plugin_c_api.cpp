#include "include/feature_frontend_auth/feature_frontend_auth_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "feature_frontend_auth_plugin.h"

void FeatureFrontendAuthPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  feature_frontend_auth::FeatureFrontendAuthPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
