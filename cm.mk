# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx591j/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_nx591j
PRODUCT_DEVICE := nx591j
PRODUCT_MANUFACTURER := nubia
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX531J

PRODUCT_GMS_CLIENTID_BASE := android-zte

TARGET_VENDOR_PRODUCT_NAME := NX591J
TARGET_VENDOR_DEVICE_NAME := NX591J

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX591J PRODUCT_NAME=NX591J

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

TARGET_VENDOR := nubia
