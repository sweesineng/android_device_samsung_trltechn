# Release name
PRODUCT_RELEASE_NAME := trltechn

# Inherit device configuration
$(call inherit-product, device/samsung/trltechn/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := trltechn
PRODUCT_NAME := omni_trltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N9100
PRODUCT_MANUFACTURER := samsung
