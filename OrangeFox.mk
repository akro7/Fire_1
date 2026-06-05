#
# OrangeFox configuration for fire (Redmi 12 - MT6768)
# HyperOS 2.0.207.0.VMXMIXM | Android 15
# Maintainer: AKRO
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from TWRP fire device
$(call inherit-product, device/xiaomi/fire/twrp_fire.mk)

# OrangeFox build type
FOX_AB_DEVICE := 1
FOX_MAINTAINER := AKRO
FOX_DEVICE_CODE := fire
FOX_TARGET_DEVICES := fire
FOX_USE_LEGACY_TREBLE_COMPATIBILITY := 1

# OrangeFox - Status bar
FOX_CLOCK_POS := 1
FOX_ALLOW_DISABLE_NAVBAR := 1

# OrangeFox - Screen
FOX_SCREEN_H := 2460
FOX_STATUS_H := 100
FOX_STATUS_INDENT_LEFT := 48
FOX_STATUS_INDENT_RIGHT := 48

# OrangeFox - Disable MTP by default (safer for encrypted devices)
FOX_DISABLE_MIUI_OTA_BY_DEFAULT := 1

# OrangeFox - HyperOS / Xiaomi tweaks
FOX_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
FOX_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1

# OrangeFox - Decryption (FBE - Android 15 / HyperOS 2)
FOX_USE_NEW_MAGISKBOOT := 1
FOX_VANILLA_BUILD := 0
