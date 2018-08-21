# Release name
PRODUCT_RELEASE_NAME := oppo a83

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/a83/full_a83.mk)

# ramdisk
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/oppo/a83/recovery/root,recovery/root/)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a83
PRODUCT_NAME := omni_a83
PRODUCT_BRAND := oppp
PRODUCT_MODEL := oppo a83
PRODUCT_MANUFACTURER := oppo
