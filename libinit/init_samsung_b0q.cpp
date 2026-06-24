#include <android-base/properties.h>
#include <vector>

#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

using android::base::GetProperty;

void property_override(char const prop[], char const value[]) {
    auto pi = const_cast<prop_info*>(__system_property_find(prop));
    if (pi != nullptr) {
        __system_property_update(pi, value, strlen(value));
    } else {
        __system_property_add(prop, strlen(prop), value, strlen(value));
    }
}

void vendor_load_properties() {
    std::string bootloader = GetProperty("ro.bootloader", "");
    
    // Fallback default naming strings if target parameters match
    property_override("ro.product.model", "SM-S908E");
    property_override("ro.product.device", "b0q");
}
