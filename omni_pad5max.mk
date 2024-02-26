$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace pad5max with your Device Name's Value.
# Replace YTX with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/YTX/pad5max/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := pad5max
PRODUCT_NAME := omni_pad5max
PRODUCT_BRAND := YTX
PRODUCT_MODEL := pad5max
PRODUCT_MANUFACTURER := YTX

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="YTX/pad5max/MRA58K/1465782828:user/release-keys" \
    PRIVATE_BUILD_DESC="aeon6735_36_d_n-user 6.0 MRA58K 1465782828 release-keys"