//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <poc_module_base/poc_module_base_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) poc_module_base_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PocModuleBasePlugin");
  poc_module_base_plugin_register_with_registrar(poc_module_base_registrar);
}
