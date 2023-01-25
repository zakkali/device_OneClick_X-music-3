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

$(call inherit-product, device/OneClick/X-music Ⅲ/X-music Ⅲ.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)


PRODUCT_NAME := lineage_X-music Ⅲ
BOARD_VENDOR := OneClick
PRODUCT_DEVICE := X-music Ⅲ

PRODUCT_GMS_CLIENTID_BASE := android-tinno

PRODUCT_MANUFACTURER := OneClick
PRODUCT_MODEL := X-music Ⅲ

PRODUCT_BRAND := OneClick
TARGET_VENDOR := OneClick
TARGET_VENDOR_PRODUCT_NAME := X-music Ⅲ
TARGET_VENDOR_DEVICE_NAME := X-music Ⅲ
PRODUCT_RESTRICT_VENDOR_FILES := false
