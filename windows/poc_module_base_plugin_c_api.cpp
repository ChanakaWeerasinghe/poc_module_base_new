#include "include/poc_module_base/poc_module_base_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "poc_module_base_plugin.h"

void PocModuleBasePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  poc_module_base::PocModuleBasePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
