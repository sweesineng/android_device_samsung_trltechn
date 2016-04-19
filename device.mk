$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/trltechn/trltechn-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/trltechn/overlay

LOCAL_PATH := device/samsung/trltechn

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH):/recovery/root/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH):/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
	$(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

PRODUCT_NAME := samsung_trltechn
PRODUCT_BRAND := Samsung
