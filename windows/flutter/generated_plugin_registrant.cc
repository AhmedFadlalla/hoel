//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <native_context_menu/native_context_menu_plugin.h>
#include <smart_auth/smart_auth_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  NativeContextMenuPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NativeContextMenuPlugin"));
  SmartAuthPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("SmartAuthPlugin"));
}
