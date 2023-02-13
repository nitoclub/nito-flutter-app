//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <app_links/app_links_plugin_c_api.h>
#include <feature_schedule/feature_schedule_plugin_c_api.h>
#include <feature_setting/feature_setting_plugin_c_api.h>
#include <feature_top/feature_top_plugin_c_api.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  AppLinksPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("AppLinksPluginCApi"));
  FeatureSchedulePluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FeatureSchedulePluginCApi"));
  FeatureSettingPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FeatureSettingPluginCApi"));
  FeatureTopPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FeatureTopPluginCApi"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}
