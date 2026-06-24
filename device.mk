# Inherit corporate proprietary vendor configurations
$(call inherit-product, vendor/samsung/b0q/b0q-vendor.mk)

# Basic Product Characteristics
PRODUCT_CHARACTERISTICS := phone

# Define boot architecture mapping
PRODUCT_SET_SPL_OVERRIDE := true

# Set default screen density for the S22 Ultra
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit system property variables
TARGET_SYSTEM_PROP += device/samsung/b0q/system.prop
