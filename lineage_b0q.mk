# Inherit from standard generic Lineage phone configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit 64-bit application support configurations (Required for Android 15)
TARGET_SUPPORTS_64_BIT_APPS := true

# Inherit your custom device configurations
$(call inherit-product, device/samsung/b0q/device.mk)

# Product naming variables
PRODUCT_NAME := lineage_b0q
PRODUCT_DEVICE := b0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S908E
PRODUCT_MANUFACTURER := samsung
