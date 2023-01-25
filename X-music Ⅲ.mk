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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

VENDOR_BLOBS ?= device/OneClick/X-music Ⅲ/vendor/X-music Ⅲ-vendor.mk
$(call inherit-product-if-exists, $(VENDOR_BLOBS))

#MTK_PROJECT_CONFIG ?= device/tinno/v3702/ProjectConfig.mk
#include $(MTK_PROJECT_CONFIG)

DEVICE_PATH := device/OneClick/X-music Ⅲ

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

PRODUCT_CHARACTERISTICS := default

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    $(DEVICE_PATH)/configs/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.zygote=zygote32 \
    persist.sys.usb.config=mtp \

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# GPS
PRODUCT_PACKAGES += \
    YGPS

PRODUCT_PACKAGES += \
    Snap

# Browser
PRODUCT_PACKAGES += \
    Gello

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

# Configurations
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml \
    $(DEVICE_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
    $(DEVICE_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml \
    $(DEVICE_PATH)/configs/virtual-spn-conf-by-efgid1.xml:system/etc/virtual-spn-conf-by-efgid1.xml \
    $(DEVICE_PATH)/configs/virtual-spn-conf-by-efpnn.xml:system/etc/virtual-spn-conf-by-efpnn.xml \
    $(DEVICE_PATH)/configs/virtual-spn-conf-by-efspn.xml:system/etc/virtual-spn-conf-by-efspn.xml \
    $(DEVICE_PATH)/configs/virtual-spn-conf-by-imsi.xml:system/etc/virtual-spn-conf-by-imsi.xml

PRODUCT_PACKAGES += \
    messaging \
    Stk

# Thermal
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/thermal/ht120.mtc:system/vendor/etc/.tp/.ht120.mtc \
    $(DEVICE_PATH)/configs/thermal/thermal.conf:system/vendor/etc/.tp/thermal.conf \
    $(DEVICE_PATH)/configs/thermal/thermal.off.conf:system/vendor/etc/.tp/thermal.off.conf \
    $(DEVICE_PATH)/configs/thermal/throttle.sh:system/vendor/etc/throttle.sh
    
#BT Config
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(DEVICE_PATH)/configs/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    $(DEVICE_PATH)/configs/bluetooth/bt_stack.conf.debug:system/etc/bluetooth/bt_stack.conf.debug \
    $(DEVICE_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/etc/bluetooth/bt_stack.conf.sqc
    
# Graphics
MTK_GPU_VERSION := mali utgard r6p2-01rel0

# Versioning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.version.release=$(MTK_BUILD_VERNO) \
    ro.mediatek.chip_ver=$(MTK_CHIP_VER)

PRODUCT_PACKAGES += \
    YGPS

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8

# Inherit the rest from mt6580-common
$(call inherit-product, device/OneClick/X-music Ⅲ/mt6580-common/mt6580.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_PROPERTY_OVERRIDES += \
qemu.hw.mainkeys=1 \
ro.sf.lcd_density=280

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel.X-music Ⅲ

PRODUCT_DEVICE := X-music Ⅲ
PRODUCT_NAME := X-music Ⅲ
PRODUCT_BRAND := OneClick
PRODUCT_MODEL := X-music Ⅲ
PRODUCT_MANUFACTURER := OneClick

# set locales & aapt config.
PRODUCT_LOCALES := en_US ru_RU uk_UA ar_EG
