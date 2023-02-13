//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <feature_frontend_setting/feature_frontend_setting_plugin.h>
#include <feature_top/feature_top_plugin.h>
#include <url_launcher_linux/url_launcher_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) feature_frontend_setting_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FeatureFrontendSettingPlugin");
  feature_frontend_setting_plugin_register_with_registrar(feature_frontend_setting_registrar);
  g_autoptr(FlPluginRegistrar) feature_top_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FeatureTopPlugin");
  feature_top_plugin_register_with_registrar(feature_top_registrar);
  g_autoptr(FlPluginRegistrar) url_launcher_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UrlLauncherPlugin");
  url_launcher_plugin_register_with_registrar(url_launcher_linux_registrar);
}
