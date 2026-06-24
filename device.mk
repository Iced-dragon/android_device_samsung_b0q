# Inherit corporate proprietary vendor configurations
$(call inherit-product, vendor/samsung/b0q/b0q-vendor.mk)

# Basic Product Characteristics
PRODUCT_CHARACTERISTICS := phone

# Define boot architecture mapping
PRODUCT_SET_SPL_OVERRIDE := true
