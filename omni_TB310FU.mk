#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB310FU device
$(call inherit-product, device/lenovo/TB310FU/device.mk)

PRODUCT_DEVICE := TB310FU
PRODUCT_NAME := omni_TB310FU
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB310FU
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB310FU-user 12 SP1A.210812.016 TB310FU_USR_S000510_2212082122_mp1V1457_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB310FU/TB310FU:12/SP1A.210812.016/S000510_221208_ROW:user/release-keys
