#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Bliss Stuff
BLISS_BUILDTYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_PIXEL_CHARGER := true

# Product Specifics
PRODUCT_NAME := bliss_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V816.0.7.0.TGCMIXM:user/release-keys"
