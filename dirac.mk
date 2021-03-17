PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/dirac

VENDOR_PATH := vendor/xiaomi/dirac

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/vendor/lib/libDiracAPI_SHARED.so:$(TARGET_COPY_OUT_VENDOR)/lib/libDiracAPI_SHARED.so \
    $(VENDOR_PATH)/vendor/lib/soundfx/libdirac.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdirac.so \
    $(VENDOR_PATH)/vendor/etc/diracmobile.config:$(TARGET_COPY_OUT_VENDOR)/etc/diracmobile.config \
    $(VENDOR_PATH)/vendor/etc/diracvdd.bin:$(TARGET_COPY_OUT_VENDOR)/etc/diracvdd.bin

BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Dirac
PRODUCT_PACKAGES += \
    XiaomiDirac \

# Props ($PATH_PROP)
TARGET_PRODUCT_PROP += $(VENDOR_PATH)/dirac.prop
