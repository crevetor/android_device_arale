## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := arale

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/arale/device_arale.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := arale
PRODUCT_NAME := cm_arale
PRODUCT_BRAND := meizu
PRODUCT_MODEL := arale
PRODUCT_MANUFACTURER := meizu
