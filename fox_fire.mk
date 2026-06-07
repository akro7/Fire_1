#
# Copyright (C) 2026 OrangeFox Recovery Project
# Copyright (C) 2026 AKRO - Redmi 12 (fire) MT6768
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit TWRP base products (needed for GKI/A/B builds)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# CRITICAL: OrangeFox R12 — must use vendor/fox not vendor/twrp
$(call inherit-product, vendor/fox/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/fire/device.mk)

PRODUCT_DEVICE       := fire
PRODUCT_NAME         := fox_fire
PRODUCT_BRAND        := Redmi
PRODUCT_MODEL        := Redmi 12
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := fire

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_fire-user 15 AP3A.240905.015.A2 OS2.0.207.0.VMXMIXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_fire/fire:15/AP3A.240905.015.A2/OS2.0.207.0.VMXMIXM:user/release-keys

OF_MAINTAINER             := AKRO
FOX_BUILD_TYPE            := Unofficial

# A/B & Vendor Boot
FOX_AB_DEVICE             := 1
FOX_VIRTUAL_AB_DEVICE     := 1
FOX_VENDOR_BOOT_RECOVERY  := 1

# OrangeFox extras (0 = include all OrangeFox features)
FOX_VANILLA_BUILD         := 0
OF_USE_LZ4_COMPRESSION    := 1

# Device identifiers
FOX_DEVICE_CODE           := fire
FOX_TARGET_DEVICES        := fire

# Screen
OF_SCREEN_H               := 2460
OF_STATUS_H               := 100
OF_STATUS_INDENT_LEFT     := 48
OF_STATUS_INDENT_RIGHT    := 48
OF_CLOCK_POS              := 1

# Flashlight
OF_FLASHLIGHT_ENABLE      := 1
OF_FL_PATH1               := /sys/class/leds/flashlight/brightness

# Decryption / FBE (HyperOS 2 / Android 15)
OF_FBE_METADATA_MOUNT_IGNORE   := 1
OF_IGNORE_LOGICAL_MOUNT_ERRORS := 1
OF_DEFAULT_KEYMASTER_VERSION   := 4.1
FOX_USE_UPDATED_MAGISKBOOT     := 1
FOX_USE_NEW_MAGISKBOOT         := 1

# Dynamic partitions
OF_DYNAMIC_FULL_SIZE           := 9126805504
OF_ENABLE_LPTOOLS              := 1

# OTA / Flash tweaks
OF_NO_REFLASH_CURRENT_ORANGEFOX   := 1
OF_NO_MIUI_OTA_VENDOR_BACKUP      := 1
FOX_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
FOX_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1
FOX_DISABLE_MIUI_OTA_BY_DEFAULT   := 1

# Backup
OF_QUICK_BACKUP_LIST := /data;/boot;/vendor_boot;

# Extra binaries
FOX_USE_TAR_BINARY  := 1
FOX_USE_SED_BINARY  := 1
FOX_USE_BASH_SHELL  := 1
FOX_ASH_IS_BASH     := 1
FOX_ENABLE_APP_MANAGER := 0
