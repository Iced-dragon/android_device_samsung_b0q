# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := arm-v7a

# Kernel / Boot architecture
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 4

# Include vendor configurations
include vendor/samsung/b0q/BoardConfigVendor.mk

# Assertions & System Requirements
TARGET_OTA_ASSERT_DEVICE := b0q,b0qxx,SM-S908E,b0q_samsung

# Build Flags & System Properties File Router
TARGET_SYSTEM_PROP += device/samsung/b0q/system.prop

# Include proprietary vendor configurations
include vendor/samsung/b0q/BoardConfigVendor.mk

# Properties
TARGET_VENDOR_PROP += device/samsung/b0q/vendor.prop

# Include custom boot initialization library
TARGET_INIT_VENDOR_LIB := libinit_samsung_b0q

# Device Resource Overlays mapping parameters
DEVICE_PACKAGE_OVERLAYS += device/samsung/b0q/overlay
