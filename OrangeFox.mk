#
# OrangeFox configuration for fire (Redmi 12 - MT6768)
# HyperOS 2.0.207.0.VMXMIXM | Android 15
# Maintainer: AKRO
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from TWRP fire device
$(call inherit-product, device/xiaomi/fire/twrp_fire.mk)

# OrangeFox build type
OF_AB_DEVICE := 1
OF_MAINTAINER := AKRO
OF_DEVICE_CODE := fire
OF_TARGET_DEVICES := fire
OF_USE_LEGACY_TREBLE_COMPATIBILITY := 1

# OrangeFox - Status bar
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 1

# OrangeFox - Screen
OF_SCREEN_H := 2460
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48

# OrangeFox - Disable MTP by default (safer for encrypted devices)
OF_DISABLE_MIUI_OTA_BY_DEFAULT := 1

# OrangeFox - HyperOS / Xiaomi tweaks
OF_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1

# OrangeFox - Decryption (FBE - Android 15 / HyperOS 2)
OF_USE_NEW_MAGISKBOOT := 1
OF_VANILLA_BUILD := 0
