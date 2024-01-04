#ifndef FLUTTER_PLUGIN_POC_MODULE_BASE_PLUGIN_H_
#define FLUTTER_PLUGIN_POC_MODULE_BASE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace poc_module_base {

class PocModuleBasePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PocModuleBasePlugin();

  virtual ~PocModuleBasePlugin();

  // Disallow copy and assign.
  PocModuleBasePlugin(const PocModuleBasePlugin&) = delete;
  PocModuleBasePlugin& operator=(const PocModuleBasePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace poc_module_base

#endif  // FLUTTER_PLUGIN_POC_MODULE_BASE_PLUGIN_H_
