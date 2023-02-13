//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <feature_schedule/feature_schedule_plugin.h>
#include <feature_setting/feature_setting_plugin.h>
#include <feature_top/feature_top_plugin.h>
#include <url_launcher_linux/url_launcher_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) feature_schedule_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FeatureSchedulePlugin");
  feature_schedule_plugin_register_with_registrar(feature_schedule_registrar);
  g_autoptr(FlPluginRegistrar) feature_setting_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FeatureSettingPlugin");
  feature_setting_plugin_register_with_registrar(feature_setting_registrar);
  g_autoptr(FlPluginRegistrar) feature_top_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FeatureTopPlugin");
  feature_top_plugin_register_with_registrar(feature_top_registrar);
  g_autoptr(FlPluginRegistrar) url_launcher_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UrlLauncherPlugin");
  url_launcher_plugin_register_with_registrar(url_launcher_linux_registrar);
}
