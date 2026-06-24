# Inherit from standard generic AOSP phone settings
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit your custom device configurations
$(call inherit-product, device/samsung/b0q/device.mk)

# Product naming variables used across all custom platforms
PRODUCT_NAME := aosp_b0q
PRODUCT_DEVICE := b0q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy S22 Ultra 5G
PRODUCT_MANUFACTURER := samsung
