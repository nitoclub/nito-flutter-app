//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <app_links/app_links_plugin_c_api.h>
#include <feature_frontend_schedule/feature_frontend_schedule_plugin_c_api.h>
#include <feature_frontend_setting/feature_frontend_setting_plugin_c_api.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  AppLinksPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("AppLinksPluginCApi"));
  FeatureFrontendSchedulePluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FeatureFrontendSchedulePluginCApi"));
  FeatureFrontendSettingPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FeatureFrontendSettingPluginCApi"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}
