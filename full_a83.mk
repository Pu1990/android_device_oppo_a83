DEVICE_PACKAGE_OVERLAYS += device/oppo/a83/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/oppo/a83/prebuilt/Image.gz-dtb
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)


# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs \
    resize2fs \
    setup_fs

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a83
PRODUCT_NAME := full_a83
PRODUCT_BRAND := oppo
PRODUCT_MODEL := oppo a83
PRODUCT_MANUFACTURER := oppo
