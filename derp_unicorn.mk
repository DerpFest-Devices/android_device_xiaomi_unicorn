#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)


# Inherit from common DerpFest configuration
TARGET_DISABLE_EPPE := true
TARGET_USES_MINI_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
DERP_BUILDTYPE := Official
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

PRODUCT_NAME := derp_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := unicorn
PRODUCT_SYSTEM_DEVICE := unicorn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="unicorn-user 14 UKQ1.231003.002 V816.0.6.0.ULECNXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/unicorn/unicorn:14/UKQ1.231003.002/V816.0.6.0.ULECNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
