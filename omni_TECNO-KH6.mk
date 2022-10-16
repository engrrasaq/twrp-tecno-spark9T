#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-KH6 device
$(call inherit-product, device/tecno/TECNO-KH6/device.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/${tecno}/${TECNO-KH6}/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := ${TECNO-KH6}
PRODUCT_NAME := omni_${TECNO-KH6}
PRODUCT_BRAND := ${TECNO}
PRODUCT_MODEL := ${TECNO KH6}
PRODUCT_MANUFACTURER := ${tecno}

PRODUCT_GMS_CLIENTID_BASE := android-tecno

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_kh6_h6513-user 12 SP1A.210812.016 69756 release-keys"

BUILD_FINGERPRINT := TECNO/KH6-OP/TECNO-KH6:12/SP1A.210812.016/220826V848:user/release-keys
