#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/ommon_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/barbet/barbet:11/RD2A.210905.002/7513089:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onc_eea-user 10 QKQ1.191008.001 V11.0.3.0.QFLEUXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=Jack

# CherishOS Official
CHERISH_BUILD_TYPE := OFFICIAL
