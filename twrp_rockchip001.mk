#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, build/target/product/aosp_base.mk)

# Inherit from rockchip001 device
$(call inherit-product, device/rockchip/rockchip001/device.mk)

PRODUCT_DEVICE := rockchip001
PRODUCT_NAME := twrp_rockchip001
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := R2
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rockchip001-user 11 RQ2A.210505.003 eng.user.20210705.142229 release-keys"

BUILD_FINGERPRINT := rockchip/rockchip001/rockchip001:11/RQ2A.210505.003/user07051412:user/release-keys
