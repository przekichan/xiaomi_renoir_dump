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

# Inherit from renoir device
$(call inherit-product, device/xiaomi/renoir/device.mk)

PRODUCT_DEVICE := renoir
PRODUCT_NAME := omni_renoir
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2101K9C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="renoir-user 12 RKQ1.211001.001 V13.1.22.9.28.DEV release-keys"

BUILD_FINGERPRINT := Xiaomi/renoir/renoir:12/RKQ1.211001.001/V13.1.22.9.28.DEV:user/release-keys
