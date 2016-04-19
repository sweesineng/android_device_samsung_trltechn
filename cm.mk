# Release name
PRODUCT_RELEASE_NAME := trltechn

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trltechn/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trltechn
PRODUCT_NAME := cm_trltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N9100
PRODUCT_MANUFACTURER := samsung
